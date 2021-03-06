<?php

namespace Weglot\Parser;

use WGSimpleHtmlDom\simple_html_dom;
use Weglot\Client\Api\Exception\ApiError;
use Weglot\Client\Api\Exception\InputAndOutputCountMatchException;
use Weglot\Client\Api\Exception\InvalidWordTypeException;
use Weglot\Client\Api\Exception\MissingRequiredParamException;
use Weglot\Client\Api\Exception\MissingWordsOutputException;
use Weglot\Client\Api\TranslateEntry;
use Weglot\Client\Api\WordCollection;
use Weglot\Client\Client;
use Weglot\Client\Endpoint\Translate;
use Weglot\Parser\Check\DomChecker;
use Weglot\Parser\Check\DomCheckerProvider;
use Weglot\Parser\Check\JsonLdChecker;
use Weglot\Parser\ConfigProvider\ConfigProviderInterface;
use Weglot\Parser\ConfigProvider\ServerConfigProvider;
use Weglot\Parser\Formatter\DomFormatter;
use Weglot\Parser\Formatter\ExcludeBlocksFormatter;
use Weglot\Parser\Formatter\IgnoredNodes;
use Weglot\Parser\Formatter\JsonLdFormatter;

/**
 * Class Parser
 * @package Weglot\Parser
 */
class Parser
{
    /**
     * Attribute to match in DOM when we don't want to translate innertext & childs.
     */
    const ATTRIBUTE_NO_TRANSLATE = 'data-wg-notranslate';

    /**
     * @var Client
     */
    protected $client;

    /**
     * @var ConfigProviderInterface
     */
    protected $configProvider;

    /**
     * @var array
     */
    protected $excludeBlocks;

    /**
     * @var string
     */
    protected $languageFrom;

    /**
     * @var string
     */
    protected $languageTo;

    /**
     * @var WordCollection
     */
    protected $words;

    /**
     * @var DomCheckerProvider
     */
    protected $domCheckerProvider;

    /**
     * @var IgnoredNodes
     */
    protected $ignoredNodesFormatter;

    /**
     * Parser constructor.
     * @param Client $client
     * @param ConfigProviderInterface $config
     * @param array $excludeBlocks
     */
    public function __construct(Client $client, ConfigProviderInterface $config, array $excludeBlocks = [])
    {
        $this
            ->setClient($client)
            ->setConfigProvider($config)
            ->setExcludeBlocks($excludeBlocks)
            ->setWords(new WordCollection())
            ->setDomCheckerProvider(new DomCheckerProvider($this, $client->getProfile()->getTranslationEngine()))
            ->setIgnoredNodesFormatter(new IgnoredNodes());
    }

    /**
     * @param Client $client
     * @return $this
     */
    public function setClient(Client $client)
    {
        $this->client = $client;

        return $this;
    }

    /**
     * @return Client
     */
    public function getClient()
    {
        return $this->client;
    }

    /**
     * @param array $excludeBlocks
     * @return $this
     */
    public function setExcludeBlocks(array $excludeBlocks)
    {
        $this->excludeBlocks = $excludeBlocks;

        return $this;
    }

    /**
     * @return array
     */
    public function getExcludeBlocks()
    {
        return $this->excludeBlocks;
    }

    /**
     * @param ConfigProviderInterface $config
     * @return $this
     */
    public function setConfigProvider(ConfigProviderInterface $config)
    {
        $this->configProvider = $config;

        return $this;
    }

    /**
     * @return ConfigProviderInterface
     */
    public function getConfigProvider()
    {
        return $this->configProvider;
    }

    /**
     * @param string $languageFrom
     * @return $this
     */
    public function setLanguageFrom($languageFrom)
    {
        $this->languageFrom = $languageFrom;

        return $this;
    }

    /**
     * @return string
     */
    public function getLanguageFrom()
    {
        return $this->languageFrom;
    }

    /**
     * @param string $languageTo
     * @return $this
     */
    public function setLanguageTo($languageTo)
    {
        $this->languageTo = $languageTo;

        return $this;
    }

    /**
     * @return string
     */
    public function getLanguageTo()
    {
        return $this->languageTo;
    }

    /**
     * @param WordCollection $wordCollection
     * @return $this
     */
    public function setWords(WordCollection $wordCollection)
    {
        $this->words = $wordCollection;

        return $this;
    }

    /**
     * @return WordCollection
     */
    public function getWords()
    {
        return $this->words;
    }

    /**
     * @param DomCheckerProvider $domCheckerProvider
     * @return $this
     */
    public function setDomCheckerProvider(DomCheckerProvider $domCheckerProvider)
    {
        $this->domCheckerProvider = $domCheckerProvider;
        return $this;
    }

    /**
     * @return DomCheckerProvider
     */
    public function getDomCheckerProvider()
    {
        return $this->domCheckerProvider;
    }

    /**
     * @param IgnoredNodes $ignoredNodes
     * @return $this
     */
    public function setIgnoredNodesFormatter(IgnoredNodes $ignoredNodesFormatter)
    {
        $this->ignoredNodesFormatter = $ignoredNodesFormatter;
        return $this;
    }

    /**
     * @return IgnoredNodes
     */
    public function getIgnoredNodesFormatter()
    {
        return $this->ignoredNodesFormatter;
    }

    /**
     * @param string $source
     * @param string $languageFrom
     * @param string $languageTo
     * @return string
     * @throws ApiError
     * @throws InputAndOutputCountMatchException
     * @throws InvalidWordTypeException
     * @throws MissingRequiredParamException
     * @throws MissingWordsOutputException
     */
    public function translate($source, $languageFrom, $languageTo)
    {
        // setters
        $this
            ->setLanguageFrom($languageFrom)
            ->setLanguageTo($languageTo);

        if ($this->client->getProfile()->getTranslationEngine() === 2) {
            $ignoredNodesFormatter = $this->getIgnoredNodesFormatter();

            $ignoredNodesFormatter->setSource($source)
                ->handle();

            $source = $ignoredNodesFormatter->getSource();
        }

        // simple_html_dom
        $dom = \WGSimpleHtmlDom\str_get_html(
            $source,
            true,
            true,
            WG_DEFAULT_TARGET_CHARSET,
            false
        );

        // if simple_html_dom can't parse the $source, it returns false
        // so we just return raw $source
        if ($dom === false) {
            return $source;
        }

        // exclude blocks
        if (!empty($this->excludeBlocks)) {
            $excludeBlocks = new ExcludeBlocksFormatter($dom, $this->excludeBlocks);
            $dom = $excludeBlocks->getDom();
        }

        // checkers
        list($nodes, $jsons) = $this->checkers($dom);

        // api communication
        $translated = $this->apiTranslate($dom);

        // formatters
        $this->formatters($translated, $nodes, $jsons);

        $source = $dom->save();
        return $source;
    }

    /**
     * @param $source
     * @return string|WordCollection
     * @throws InvalidWordTypeException
     */
    public function parse($source)
    {
        if ($this->client->getProfile()->getTranslationEngine() == 2) {
            $ignoredNodesFormatter = $this->getIgnoredNodesFormatter();

            $ignoredNodesFormatter->setSource($source)
                ->handle();

            $source = $ignoredNodesFormatter->getSource();
        }

        // simple_html_dom
        $dom = \WGSimpleHtmlDom\str_get_html(
            $source,
            true,
            true,
            WG_DEFAULT_TARGET_CHARSET,
            false
        );

        // if simple_html_dom can't parse the $source, it returns false
        // so we just return raw $source
        if ($dom === false) {
            return $source;
        }

        // exclude blocks
        if (!empty($this->excludeBlocks)) {
            $excludeBlocks = new ExcludeBlocksFormatter($dom, $this->excludeBlocks);
            $dom = $excludeBlocks->getDom();
        }

        // checkers
        $this->checkers($dom);

        return $this->getWords();
    }

    /**
     * @param simple_html_dom $dom
     * @return TranslateEntry
     * @throws ApiError
     * @throws InputAndOutputCountMatchException
     * @throws InvalidWordTypeException
     * @throws MissingRequiredParamException
     * @throws MissingWordsOutputException
     */
    protected function apiTranslate(simple_html_dom $dom)
    {
        // Translate endpoint parameters
        $params = [
            'language_from' => $this->getLanguageFrom(),
            'language_to' => $this->getLanguageTo()
        ];

        // if data is coming from $_SERVER, load it ...
        if ($this->getConfigProvider() instanceof ServerConfigProvider) {
            $this->getConfigProvider()->loadFromServer();
        }

        if ($this->getConfigProvider()->getAutoDiscoverTitle()) {
            $params['title'] = $this->getTitle($dom);
        }
        $params = array_merge($params, $this->getConfigProvider()->asArray());

        try {
            $translate = new TranslateEntry($params);
            $translate->setInputWords($this->getWords());
        } catch (\Exception $e) {
            die($e->getMessage());
        }
        $translate = new Translate($translate, $this->client);

        $translated = $translate->handle();

        return $translated;
    }

    /**
     * @param simple_html_dom $dom
     * @return string
     */
    protected function getTitle(simple_html_dom $dom)
    {
        $title = 'Empty title';
        foreach ($dom->find('title') as $k => $node) {
            if ($node->innertext != '') {
                $title = $node->innertext;
            }
        }
        return $title;
    }

    /**
     * @param $dom
     * @return array
     * @throws InvalidWordTypeException
     */
    protected function checkers($dom)
    {
        $nodes = $this->getDomCheckerProvider()->handle($dom);

        $checker = new JsonLdChecker($this, $dom);
        $jsons = $checker->handle();

        return [
            $nodes,
            $jsons
        ];
    }

    /**
     * @param TranslateEntry $translateEntry
     * @param array $nodes
     * @param array $jsons
     */
    protected function formatters(TranslateEntry $translateEntry, array $nodes, array $jsons)
    {
        $formatter = new DomFormatter($this, $translateEntry);
        $formatter->handle($nodes);

        $formatter = new JsonLdFormatter($this, $translateEntry, count($nodes));
        $formatter->handle($jsons);
    }
}
