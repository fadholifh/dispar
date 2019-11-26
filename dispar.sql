-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 05:01 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dispar`
--
CREATE DATABASE IF NOT EXISTS `dispar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dispar`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparcommentmeta`
--

DROP TABLE IF EXISTS `wp_disparcommentmeta`;
CREATE TABLE `wp_disparcommentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparcomments`
--

DROP TABLE IF EXISTS `wp_disparcomments`;
CREATE TABLE `wp_disparcomments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparcomments`
--

INSERT INTO `wp_disparcomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-03-03 04:30:52', '2019-03-03 04:30:52', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 86, 'WooCommerce', '', '', '', '2019-03-04 07:47:33', '2019-03-04 07:47:33', 'Stock levels reduced: Batik Parang (BP-1000) 100&rarr;99', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 86, 'WooCommerce', '', '', '', '2019-03-04 07:47:37', '2019-03-04 07:47:37', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 86, '', 'fadprgrm@gmail.com', '', '', '2019-03-04 08:04:51', '2019-03-04 08:04:51', 'Order status changed from On hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparfailed_jobs`
--

DROP TABLE IF EXISTS `wp_disparfailed_jobs`;
CREATE TABLE `wp_disparfailed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparlinks`
--

DROP TABLE IF EXISTS `wp_disparlinks`;
CREATE TABLE `wp_disparlinks` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparmailchimp_carts`
--

DROP TABLE IF EXISTS `wp_disparmailchimp_carts`;
CREATE TABLE `wp_disparmailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparoptions`
--

DROP TABLE IF EXISTS `wp_disparoptions`;
CREATE TABLE `wp_disparoptions` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparoptions`
--

INSERT INTO `wp_disparoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/dispar', 'yes'),
(2, 'home', 'http://localhost/dispar', 'yes'),
(3, 'blogname', 'Pariwisata', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fadprgrm@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:3;s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'shop-elite', 'yes'),
(41, 'stylesheet', 'shop-elite', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:6:\"blabla\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_disparuser_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:28:\"woocommerce_product_search-5\";i:1;s:31:\"shop_elite_product_categories-3\";i:2;s:24:\"shop_elite_social_menu-3\";i:3;s:10:\"archives-2\";i:4;s:6:\"meta-2\";i:5;s:8:\"search-2\";i:6;s:12:\"categories-2\";i:7;s:14:\"recent-posts-2\";i:8;s:17:\"recent-comments-2\";i:9;s:32:\"woocommerce_product_categories-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:28:\"woocommerce_product_search-3\";i:1;s:26:\"woocommerce_price_filter-3\";i:2;s:32:\"woocommerce_product_categories-4\";i:3;s:28:\"woocommerce_product_search-6\";i:4;s:26:\"woocommerce_price_filter-5\";i:5;s:32:\"woocommerce_product_categories-6\";}s:10:\"wc-sidebar\";a:0:{}s:25:\"wc-product-single-sidebar\";a:0:{}s:24:\"home-page-full-width-col\";a:0:{}s:14:\"footer-col-one\";a:0:{}s:14:\"footer-col-two\";a:0:{}s:16:\"footer-col-three\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:16:{i:1554865215;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1554866317;a:1:{s:26:\"um_hourly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1554867055;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1554868212;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1554870655;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1554870656;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1554870731;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554870735;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554871827;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554871838;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554880717;a:2:{s:30:\"um_twicedaily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:25:\"um_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554882627;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554893427;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1554940800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1556798400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:16;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551671112;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1554864613;s:15:\"version_checked\";s:3:\"5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(144, 'recently_activated', 'a:2:{s:35:\"ultimate-member/ultimate-member.php\";i:1551684049;s:19:\"akismet/akismet.php\";i:1551587992;}', 'yes'),
(145, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'woocommerce_store_address', 'Jl. Kokosan no.152, Demangan baru', 'yes'),
(149, 'woocommerce_store_address_2', 'Caturtunggal, Depok', 'yes'),
(150, 'woocommerce_store_city', 'Sleman', 'yes'),
(151, 'woocommerce_default_country', 'ID:YO', 'yes'),
(152, 'woocommerce_store_postcode', '55281', 'yes'),
(153, 'woocommerce_allowed_countries', 'all', 'yes'),
(154, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(155, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(156, 'woocommerce_ship_to_countries', '', 'yes'),
(157, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(158, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(159, 'woocommerce_calc_taxes', 'no', 'yes'),
(160, 'woocommerce_enable_coupons', 'yes', 'yes'),
(161, 'woocommerce_calc_discounts_sequentially', 'yes', 'no'),
(162, 'woocommerce_currency', 'IDR', 'yes'),
(163, 'woocommerce_currency_pos', 'left', 'yes'),
(164, 'woocommerce_price_thousand_sep', ',', 'yes'),
(165, 'woocommerce_price_decimal_sep', '.', 'yes'),
(166, 'woocommerce_price_num_decimals', '2', 'yes'),
(167, 'woocommerce_shop_page_id', '25', 'yes'),
(168, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(169, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(170, 'woocommerce_placeholder_image', '', 'yes'),
(171, 'woocommerce_weight_unit', 'kg', 'yes'),
(172, 'woocommerce_dimension_unit', 'cm', 'yes'),
(173, 'woocommerce_enable_reviews', 'yes', 'yes'),
(174, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(175, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(176, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(177, 'woocommerce_review_rating_required', 'yes', 'no'),
(178, 'woocommerce_manage_stock', 'yes', 'yes'),
(179, 'woocommerce_hold_stock_minutes', '60', 'no'),
(180, 'woocommerce_notify_low_stock', 'yes', 'no'),
(181, 'woocommerce_notify_no_stock', 'yes', 'no'),
(182, 'woocommerce_stock_email_recipient', 'fadprgrm@gmail.com', 'no'),
(183, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(184, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(185, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(186, 'woocommerce_stock_format', '', 'yes'),
(187, 'woocommerce_file_download_method', 'force', 'no'),
(188, 'woocommerce_downloads_require_login', 'no', 'no'),
(189, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(190, 'woocommerce_prices_include_tax', 'no', 'yes'),
(191, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(192, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(193, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(194, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(195, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(196, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(197, 'woocommerce_price_display_suffix', '', 'yes'),
(198, 'woocommerce_tax_total_display', 'itemized', 'no'),
(199, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(200, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(201, 'woocommerce_ship_to_destination', 'billing', 'no'),
(202, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(203, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(204, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(205, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(206, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(207, 'woocommerce_registration_generate_username', 'yes', 'no'),
(208, 'woocommerce_registration_generate_password', 'yes', 'no'),
(209, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(210, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(211, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(212, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(213, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(214, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(215, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(216, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(217, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(218, 'woocommerce_email_from_name', 'Pariwisata', 'no'),
(219, 'woocommerce_email_from_address', 'fadprgrm@gmail.com', 'no'),
(220, 'woocommerce_email_header_image', '', 'no'),
(221, 'woocommerce_email_footer_text', '{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(222, 'woocommerce_email_base_color', '#96588a', 'no'),
(223, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(224, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(225, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(226, 'woocommerce_cart_page_id', '26', 'yes'),
(227, 'woocommerce_checkout_page_id', '27', 'yes'),
(228, 'woocommerce_myaccount_page_id', '28', 'yes'),
(229, 'woocommerce_terms_page_id', '', 'no'),
(230, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(231, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(232, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(233, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(234, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(235, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(236, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(237, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(238, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(239, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(240, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(241, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(242, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(243, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(244, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(245, 'woocommerce_api_enabled', 'no', 'yes'),
(246, 'woocommerce_single_image_width', '600', 'yes'),
(247, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(248, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(249, 'woocommerce_demo_store', 'no', 'no'),
(250, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(251, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(252, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_price_filter', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:4:\"Sort\";}i:5;a:1:{s:5:\"title\";s:6:\"Filter\";}}', 'yes'),
(256, 'widget_woocommerce_product_categories', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:4;a:8:{s:5:\"title\";s:10:\"Categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:1;s:9:\"max_depth\";s:0:\"\";}i:6;a:8:{s:5:\"title\";s:10:\"Categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:1;s:9:\"max_depth\";s:0:\"\";}}', 'yes'),
(257, 'widget_woocommerce_product_search', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:5;a:1:{s:5:\"title\";s:6:\"Search\";}i:6;a:1:{s:5:\"title\";s:6:\"Search\";}}', 'yes'),
(258, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(265, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(266, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(267, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(271, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(277, '_transient_shipping-transient-version', '1551588362', 'yes'),
(285, 'woocommerce_cheque_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:14:\"Check payments\";s:11:\"description\";s:98:\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\";}', 'yes'),
(286, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:18:\"fadprgrm@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:18:\"fadprgrm@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(287, 'woocommerce_bacs_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:20:\"Direct bank transfer\";s:11:\"description\";s:176:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\";}', 'yes'),
(295, 'default_product_cat', '15', 'yes'),
(298, 'woocommerce_version', '3.5.5', 'yes'),
(299, 'woocommerce_db_version', '3.5.5', 'yes'),
(314, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(315, 'woocommerce_maybe_regenerate_images_hash', 'd65c8194d86837a5c38335b07e33a934', 'yes'),
(317, 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(348, 'woocommerce_thumbnail_cropping', 'custom', 'yes'),
(349, 'woocommerce_thumbnail_cropping_custom_width', '23', 'yes'),
(350, 'woocommerce_thumbnail_cropping_custom_height', '35', 'yes'),
(352, 'hestia_update_woocommerce_customizer_controls', '1', 'yes'),
(353, 'theme_mods_hestia', 'a:8:{s:29:\"hestia_contact_form_shortcode\";s:14:\"[pirate_forms]\";s:31:\"hestia_feature_thumbnail_buffer\";s:71:\"http://localhost/dispar/wp-content/themes/hestia/assets/img/contact.jpg\";s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:28:\"zerif_frontpage_was_imported\";s:9:\"not-zerif\";s:13:\"ti_prev_theme\";s:10:\"shop-elite\";s:24:\"hestia_feature_thumbnail\";s:71:\"http://localhost/dispar/wp-content/themes/hestia/assets/img/contact.jpg\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551680358;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";i:6;s:32:\"woocommerce_product_categories-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:28:\"woocommerce_product_search-3\";i:1;s:26:\"woocommerce_price_filter-3\";i:2;s:32:\"woocommerce_product_categories-4\";}s:17:\"subscribe-widgets\";a:0:{}s:19:\"sidebar-woocommerce\";a:0:{}s:15:\"sidebar-top-bar\";a:0:{}s:14:\"header-sidebar\";a:0:{}s:17:\"sidebar-big-title\";a:0:{}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:19:\"footer-four-widgets\";a:0:{}}}}', 'yes'),
(354, 'hestia_contact_form_legacy', '1', 'yes'),
(355, 'ti_about_recommended_plugins', 'a:1:{s:19:\"themeisle-companion\";s:7:\"visible\";}', 'yes'),
(356, 'hestia_install', '1551671103', 'yes'),
(361, 'current_theme', 'Shop Elite', 'yes'),
(362, 'theme_mods_shop-elite', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:16;s:11:\"topbar-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:6:\"000000\";s:12:\"header_image\";s:13:\"remove-header\";s:16:\"background_image\";s:0:\"\";s:21:\"background_position_x\";s:5:\"right\";s:21:\"background_position_y\";s:6:\"center\";s:13:\"theme_options\";a:3:{s:19:\"enable_slider_posts\";b:1;s:16:\"home_page_layout\";s:10:\"no-sidebar\";s:18:\"no_of_slider_posts\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551679999;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:10:\"wc-sidebar\";a:3:{i:0;s:28:\"woocommerce_product_search-3\";i:1;s:26:\"woocommerce_price_filter-3\";i:2;s:32:\"woocommerce_product_categories-4\";}s:25:\"wc-product-single-sidebar\";a:0:{}s:24:\"home-page-full-width-col\";a:0:{}s:14:\"footer-col-one\";a:0:{}s:14:\"footer-col-two\";a:0:{}s:16:\"footer-col-three\";a:0:{}}}}', 'yes'),
(363, 'theme_switched', '', 'yes');
INSERT INTO `wp_disparoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(364, 'widget_shop_elite_products_listings', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(365, 'widget_shop_elite_category_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(366, 'widget_shop_elite_product_categories', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:6:{s:5:\"title\";s:8:\"Category\";s:4:\"desc\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:2:\"17\";i:1;s:2:\"18\";}s:15:\"enable_cat_desc\";i:1;s:15:\"cat_desc_length\";i:20;s:13:\"enable_slider\";i:1;}}', 'yes'),
(367, 'widget_shop_elite_posts_listings', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(368, 'widget_shop_elite_call_to_action', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(369, 'hestia_had_elementor', 'no', 'yes'),
(370, 'widget_shop_elite_social_menu', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Social\";}}', 'yes'),
(371, 'woocommerce_catalog_rows', '4', 'yes'),
(372, 'woocommerce_catalog_columns', '3', 'yes'),
(373, 'hestia_time_activated', '1551680004', 'yes'),
(386, 'woocommerce_product_type', 'both', 'yes'),
(387, 'woocommerce_allow_tracking', 'yes', 'yes'),
(390, 'woocommerce_tracker_last_send', '1554864637', 'yes'),
(391, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(392, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(394, 'mailchimp_woocommerce_version', '2.1.13', 'no'),
(395, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(397, 'mailchimp-woocommerce-store_id', '5c7ca3eed9cba', 'yes'),
(398, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(402, '_transient_product_query-transient-version', '1552014707', 'yes'),
(428, '_transient_product-transient-version', '1552014707', 'yes'),
(538, 'woocommerce_tracker_ua', 'a:2:{i:0;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";i:1;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\";}', 'yes'),
(583, 'theme_mods_trusted', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551682525;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";i:6;s:32:\"woocommerce_product_categories-3\";}s:15:\"trusted-sidebar\";a:3:{i:0;s:28:\"woocommerce_product_search-3\";i:1;s:26:\"woocommerce_price_filter-3\";i:2;s:32:\"woocommerce_product_categories-4\";}s:24:\"trusted-homepage-sidebar\";a:0:{}s:20:\"trusted-page-sidebar\";a:0:{}s:20:\"trusted-shop-sidebar\";a:0:{}s:15:\"trusted-top-bar\";a:0:{}s:15:\"trusted-footer1\";a:0:{}s:15:\"trusted-footer2\";a:0:{}s:15:\"trusted-footer3\";a:0:{}s:20:\"trusted-about-footer\";a:0:{}}}}', 'yes'),
(586, 'widget_wp_store_cta_simple', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(587, 'widget_wp_store_promo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(588, 'widget_wp_store_product', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(589, 'widget_wp_store_cat_product', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(590, 'widget_wp_store_cta_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(591, 'widget_wp_store_offer', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(594, 'theme_mods_wp-store', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552015295;s:4:\"data\";a:14:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";i:6;s:32:\"woocommerce_product_categories-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:28:\"woocommerce_product_search-3\";i:1;s:26:\"woocommerce_price_filter-3\";i:2;s:32:\"woocommerce_product_categories-4\";}s:13:\"right-sidebar\";a:0:{}s:12:\"shop-sidebar\";a:3:{i:0;s:28:\"woocommerce_product_search-6\";i:1;s:26:\"woocommerce_price_filter-5\";i:2;s:32:\"woocommerce_product_categories-6\";}s:12:\"left-sidebar\";a:0:{}s:15:\"widget-area-one\";a:0:{}s:12:\"product-area\";a:0:{}s:15:\"widget-area-two\";a:0:{}s:17:\"widget-area-three\";a:0:{}s:11:\"widget-icon\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:11:\"footer-four\";a:0:{}}}}', 'yes'),
(598, 'theme_switched_via_customizer', '', 'yes'),
(599, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(667, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1551681993;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(679, '_transient_trusted_categories', '1', 'yes'),
(706, 'um_last_version_upgrade', '2.0.39', 'yes'),
(707, 'um_first_activation_date', '1551683694', 'yes'),
(708, 'um_version', '2.0.39', 'yes'),
(709, '__ultimatemember_sitekey', 'localhost/dispar-f1W5CtLbFcosfRu2OnRu', 'yes'),
(710, 'um_is_installed', '1', 'yes'),
(711, 'um_core_forms', 'a:3:{s:8:\"register\";i:82;s:5:\"login\";i:83;s:7:\"profile\";i:84;}', 'yes'),
(712, 'um_core_directories', 'a:1:{s:7:\"members\";i:85;}', 'yes'),
(713, 'um_options', 'a:156:{s:30:\"restricted_access_post_metabox\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:19:\"uninstall_on_delete\";i:0;s:14:\"permalink_base\";s:10:\"user_login\";s:12:\"display_name\";s:9:\"full_name\";s:18:\"display_name_field\";s:0:\"\";s:15:\"author_redirect\";i:1;s:12:\"members_page\";i:1;s:13:\"use_gravatars\";i:0;s:37:\"use_um_gravatar_default_builtin_image\";s:7:\"default\";s:29:\"use_um_gravatar_default_image\";i:0;s:24:\"reset_require_strongpass\";i:0;s:20:\"account_tab_password\";s:1:\"1\";s:19:\"account_tab_privacy\";s:1:\"1\";s:25:\"account_tab_notifications\";s:1:\"1\";s:18:\"account_tab_delete\";s:1:\"1\";s:19:\"delete_account_text\";s:150:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below\";s:12:\"account_name\";s:1:\"1\";s:20:\"account_name_disable\";s:1:\"0\";s:20:\"account_name_require\";s:1:\"1\";s:13:\"account_email\";s:1:\"1\";s:25:\"account_hide_in_directory\";s:1:\"1\";s:26:\"account_require_strongpass\";s:1:\"1\";s:17:\"photo_thumb_sizes\";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:\"cover_thumb_sizes\";a:2:{i:0;i:300;i:1;i:600;}s:10:\"accessible\";i:0;s:15:\"access_redirect\";s:0:\"\";s:19:\"access_exclude_uris\";a:0:{}s:20:\"home_page_accessible\";i:1;s:24:\"category_page_accessible\";i:1;s:25:\"restricted_access_message\";s:0:\"\";s:17:\"restricted_blocks\";i:0;s:24:\"restricted_block_message\";s:0:\"\";s:27:\"enable_reset_password_limit\";i:1;s:27:\"reset_password_limit_number\";i:3;s:14:\"blocked_emails\";s:0:\"\";s:13:\"blocked_words\";s:47:\"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff\";s:14:\"default_avatar\";s:0:\"\";s:13:\"default_cover\";s:0:\"\";s:21:\"profile_show_metaicon\";i:0;s:12:\"profile_menu\";i:1;s:24:\"profile_menu_default_tab\";s:4:\"main\";s:18:\"profile_menu_icons\";i:1;s:13:\"form_asterisk\";i:0;s:13:\"profile_title\";s:28:\"{display_name} | {site_name}\";s:12:\"profile_desc\";s:83:\"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile\";s:11:\"admin_email\";s:18:\"fadprgrm@gmail.com\";s:9:\"mail_from\";s:10:\"Pariwisata\";s:14:\"mail_from_addr\";s:18:\"fadprgrm@gmail.com\";s:10:\"email_html\";i:1;s:17:\"image_compression\";i:60;s:15:\"image_max_width\";i:1000;s:15:\"cover_min_width\";i:1000;s:22:\"profile_photo_max_size\";i:999999999;s:20:\"cover_photo_max_size\";i:999999999;s:22:\"custom_roles_increment\";i:1;s:28:\"um_profile_object_cache_stop\";i:0;s:16:\"profile_tab_main\";i:1;s:24:\"profile_tab_main_privacy\";i:0;s:22:\"profile_tab_main_roles\";s:0:\"\";s:17:\"profile_tab_posts\";i:1;s:25:\"profile_tab_posts_privacy\";i:0;s:23:\"profile_tab_posts_roles\";s:0:\"\";s:20:\"profile_tab_comments\";i:1;s:28:\"profile_tab_comments_privacy\";i:0;s:26:\"profile_tab_comments_roles\";s:0:\"\";s:16:\"welcome_email_on\";b:1;s:17:\"welcome_email_sub\";s:23:\"Welcome to {site_name}!\";s:13:\"welcome_email\";s:365:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:18:\"checkmail_email_on\";b:0;s:19:\"checkmail_email_sub\";s:28:\"Please activate your account\";s:15:\"checkmail_email\";s:304:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}\";s:16:\"pending_email_on\";b:0;s:17:\"pending_email_sub\";s:30:\"[{site_name}] New user account\";s:13:\"pending_email\";s:309:\"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"approved_email_on\";b:0;s:18:\"approved_email_sub\";s:41:\"Your account at {site_name} is now active\";s:14:\"approved_email\";s:438:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"rejected_email_on\";b:0;s:18:\"rejected_email_sub\";s:30:\"Your account has been rejected\";s:14:\"rejected_email\";s:288:\"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}\";s:17:\"inactive_email_on\";b:1;s:18:\"inactive_email_sub\";s:33:\"Your account has been deactivated\";s:14:\"inactive_email\";s:250:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"deletion_email_on\";b:1;s:18:\"deletion_email_sub\";s:29:\"Your account has been deleted\";s:14:\"deletion_email\";s:355:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}\";s:16:\"resetpw_email_on\";b:1;s:17:\"resetpw_email_sub\";s:19:\"Reset your password\";s:13:\"resetpw_email\";s:303:\"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn\'t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}\";s:18:\"changedpw_email_on\";b:1;s:19:\"changedpw_email_sub\";s:42:\"Your {site_name} password has been changed\";s:15:\"changedpw_email\";s:307:\"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:23:\"changedaccount_email_on\";b:1;s:24:\"changedaccount_email_sub\";s:39:\"Your account at {site_name} was updated\";s:20:\"changedaccount_email\";s:278:\"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:24:\"notification_new_user_on\";b:1;s:25:\"notification_new_user_sub\";s:30:\"[{site_name}] New user account\";s:21:\"notification_new_user\";s:211:\"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:22:\"notification_review_on\";b:0;s:23:\"notification_review_sub\";s:38:\"[{site_name}] New user awaiting review\";s:19:\"notification_review\";s:277:\"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:24:\"notification_deletion_on\";b:0;s:25:\"notification_deletion_sub\";s:29:\"[{site_name}] Account deleted\";s:21:\"notification_deletion\";s:58:\"{display_name} has just deleted their {site_name} account.\";s:9:\"core_user\";s:1:\"7\";s:10:\"core_login\";s:1:\"7\";s:13:\"core_register\";s:1:\"7\";s:12:\"core_members\";s:1:\"7\";s:11:\"core_logout\";s:1:\"7\";s:12:\"core_account\";s:1:\"7\";s:19:\"core_password-reset\";s:1:\"7\";s:17:\"profile_show_name\";i:1;s:25:\"profile_show_social_links\";i:0;s:16:\"profile_show_bio\";i:1;s:21:\"profile_show_html_bio\";i:0;s:20:\"profile_bio_maxchars\";i:180;s:19:\"profile_header_menu\";s:2:\"bc\";s:18:\"profile_empty_text\";i:1;s:22:\"profile_empty_text_emo\";i:1;s:12:\"profile_role\";a:0:{}s:16:\"profile_template\";s:7:\"profile\";s:17:\"profile_max_width\";s:6:\"1000px\";s:22:\"profile_area_max_width\";s:5:\"600px\";s:13:\"profile_align\";s:6:\"center\";s:13:\"profile_icons\";s:5:\"label\";s:21:\"profile_cover_enabled\";i:1;s:19:\"profile_cover_ratio\";s:5:\"2.7:1\";s:17:\"profile_photosize\";s:5:\"190px\";s:19:\"profile_photocorner\";s:1:\"1\";s:17:\"profile_header_bg\";s:0:\"\";s:24:\"profile_primary_btn_word\";s:14:\"Update Profile\";s:21:\"profile_secondary_btn\";s:1:\"1\";s:26:\"profile_secondary_btn_word\";s:6:\"Cancel\";s:13:\"register_role\";s:1:\"0\";s:17:\"register_template\";s:8:\"register\";s:18:\"register_max_width\";s:5:\"450px\";s:14:\"register_align\";s:6:\"center\";s:14:\"register_icons\";s:5:\"label\";s:25:\"register_primary_btn_word\";s:8:\"Register\";s:22:\"register_secondary_btn\";i:1;s:27:\"register_secondary_btn_word\";s:5:\"Login\";s:26:\"register_secondary_btn_url\";s:0:\"\";s:14:\"login_template\";s:5:\"login\";s:15:\"login_max_width\";s:5:\"450px\";s:11:\"login_align\";s:6:\"center\";s:11:\"login_icons\";s:5:\"label\";s:22:\"login_primary_btn_word\";s:5:\"Login\";s:22:\"login_forgot_pass_link\";i:1;s:21:\"login_show_rememberme\";i:1;s:19:\"login_secondary_btn\";i:1;s:24:\"login_secondary_btn_word\";s:8:\"Register\";s:23:\"login_secondary_btn_url\";s:0:\"\";s:18:\"directory_template\";s:7:\"members\";s:16:\"directory_header\";s:21:\"{total_users} Members\";s:23:\"directory_header_single\";s:20:\"{total_users} Member\";s:14:\"pages_settings\";s:0:\"\";}', 'yes'),
(714, 'um_role_subscriber_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(715, 'um_role_author_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(716, 'um_role_contributor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(717, 'um_role_editor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(718, 'um_role_administrator_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(719, 'widget_um_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(720, 'um_cache_userdata_1', 'a:154:{s:2:\"ID\";i:1;s:10:\"user_login\";s:15:\"admin@admin.com\";s:9:\"user_pass\";s:34:\"$P$BeeUuNtQ3p3sUyF4CvW6y4jlZDizOH1\";s:13:\"user_nicename\";s:14:\"adminadmin-com\";s:10:\"user_email\";s:18:\"fadprgrm@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2019-03-03 04:30:49\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:15:\"admin@admin.com\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:15:\"admin@admin.com\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:21:\"wp_disparcapabilities\";s:31:\"a:1:{s:13:\"administrator\";b:1;}\";s:19:\"wp_disparuser_level\";s:2:\"10\";s:18:\"show_welcome_panel\";s:1:\"1\";s:43:\"wp_dispardashboard_quick_press_last_post_id\";s:1:\"4\";s:30:\"_woocommerce_persistent_cart_1\";s:435:\"a:1:{s:4:\"cart\";a:1:{s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";a:11:{s:3:\"key\";s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";s:10:\"product_id\";i:33;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:450000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:450000;s:8:\"line_tax\";i:0;}}}\";s:14:\"wc_last_active\";s:10:\"1551657600\";s:22:\"wp_disparuser-settings\";s:21:\"libraryContent=browse\";s:27:\"wp_disparuser-settings-time\";s:10:\"1551672134\";s:14:\"account_status\";s:8:\"approved\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no');
INSERT INTO `wp_disparoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(725, 'um_cache_fonticons', 'a:1218:{i:0;s:13:\"um-icon-alert\";i:1;s:21:\"um-icon-alert-circled\";i:2;s:19:\"um-icon-android-add\";i:3;s:26:\"um-icon-android-add-circle\";i:4;s:27:\"um-icon-android-alarm-clock\";i:5;s:21:\"um-icon-android-alert\";i:6;s:20:\"um-icon-android-apps\";i:7;s:23:\"um-icon-android-archive\";i:8;s:26:\"um-icon-android-arrow-back\";i:9;s:26:\"um-icon-android-arrow-down\";i:10;s:30:\"um-icon-android-arrow-dropdown\";i:11;s:37:\"um-icon-android-arrow-dropdown-circle\";i:12;s:30:\"um-icon-android-arrow-dropleft\";i:13;s:37:\"um-icon-android-arrow-dropleft-circle\";i:14;s:31:\"um-icon-android-arrow-dropright\";i:15;s:38:\"um-icon-android-arrow-dropright-circle\";i:16;s:28:\"um-icon-android-arrow-dropup\";i:17;s:35:\"um-icon-android-arrow-dropup-circle\";i:18;s:29:\"um-icon-android-arrow-forward\";i:19;s:24:\"um-icon-android-arrow-up\";i:20;s:22:\"um-icon-android-attach\";i:21;s:19:\"um-icon-android-bar\";i:22;s:23:\"um-icon-android-bicycle\";i:23;s:20:\"um-icon-android-boat\";i:24;s:24:\"um-icon-android-bookmark\";i:25;s:20:\"um-icon-android-bulb\";i:26;s:19:\"um-icon-android-bus\";i:27;s:24:\"um-icon-android-calendar\";i:28;s:20:\"um-icon-android-call\";i:29;s:22:\"um-icon-android-camera\";i:30;s:22:\"um-icon-android-cancel\";i:31;s:19:\"um-icon-android-car\";i:32;s:20:\"um-icon-android-cart\";i:33;s:20:\"um-icon-android-chat\";i:34;s:24:\"um-icon-android-checkbox\";i:35;s:30:\"um-icon-android-checkbox-blank\";i:36;s:32:\"um-icon-android-checkbox-outline\";i:37;s:38:\"um-icon-android-checkbox-outline-blank\";i:38;s:32:\"um-icon-android-checkmark-circle\";i:39;s:25:\"um-icon-android-clipboard\";i:40;s:21:\"um-icon-android-close\";i:41;s:21:\"um-icon-android-cloud\";i:42;s:28:\"um-icon-android-cloud-circle\";i:43;s:26:\"um-icon-android-cloud-done\";i:44;s:29:\"um-icon-android-cloud-outline\";i:45;s:29:\"um-icon-android-color-palette\";i:46;s:23:\"um-icon-android-compass\";i:47;s:23:\"um-icon-android-contact\";i:48;s:24:\"um-icon-android-contacts\";i:49;s:24:\"um-icon-android-contract\";i:50;s:22:\"um-icon-android-create\";i:51;s:22:\"um-icon-android-delete\";i:52;s:23:\"um-icon-android-desktop\";i:53;s:24:\"um-icon-android-document\";i:54;s:20:\"um-icon-android-done\";i:55;s:24:\"um-icon-android-done-all\";i:56;s:24:\"um-icon-android-download\";i:57;s:22:\"um-icon-android-drafts\";i:58;s:20:\"um-icon-android-exit\";i:59;s:22:\"um-icon-android-expand\";i:60;s:24:\"um-icon-android-favorite\";i:61;s:32:\"um-icon-android-favorite-outline\";i:62;s:20:\"um-icon-android-film\";i:63;s:22:\"um-icon-android-folder\";i:64;s:27:\"um-icon-android-folder-open\";i:65;s:22:\"um-icon-android-funnel\";i:66;s:21:\"um-icon-android-globe\";i:67;s:20:\"um-icon-android-hand\";i:68;s:23:\"um-icon-android-hangout\";i:69;s:21:\"um-icon-android-happy\";i:70;s:20:\"um-icon-android-home\";i:71;s:21:\"um-icon-android-image\";i:72;s:22:\"um-icon-android-laptop\";i:73;s:20:\"um-icon-android-list\";i:74;s:22:\"um-icon-android-locate\";i:75;s:20:\"um-icon-android-lock\";i:76;s:20:\"um-icon-android-mail\";i:77;s:19:\"um-icon-android-map\";i:78;s:20:\"um-icon-android-menu\";i:79;s:26:\"um-icon-android-microphone\";i:80;s:30:\"um-icon-android-microphone-off\";i:81;s:31:\"um-icon-android-more-horizontal\";i:82;s:29:\"um-icon-android-more-vertical\";i:83;s:24:\"um-icon-android-navigate\";i:84;s:29:\"um-icon-android-notifications\";i:85;s:34:\"um-icon-android-notifications-none\";i:86;s:33:\"um-icon-android-notifications-off\";i:87;s:20:\"um-icon-android-open\";i:88;s:23:\"um-icon-android-options\";i:89;s:22:\"um-icon-android-people\";i:90;s:22:\"um-icon-android-person\";i:91;s:26:\"um-icon-android-person-add\";i:92;s:31:\"um-icon-android-phone-landscape\";i:93;s:30:\"um-icon-android-phone-portrait\";i:94;s:19:\"um-icon-android-pin\";i:95;s:21:\"um-icon-android-plane\";i:96;s:25:\"um-icon-android-playstore\";i:97;s:21:\"um-icon-android-print\";i:98;s:32:\"um-icon-android-radio-button-off\";i:99;s:31:\"um-icon-android-radio-button-on\";i:100;s:23:\"um-icon-android-refresh\";i:101;s:22:\"um-icon-android-remove\";i:102;s:29:\"um-icon-android-remove-circle\";i:103;s:26:\"um-icon-android-restaurant\";i:104;s:19:\"um-icon-android-sad\";i:105;s:22:\"um-icon-android-search\";i:106;s:20:\"um-icon-android-send\";i:107;s:24:\"um-icon-android-settings\";i:108;s:21:\"um-icon-android-share\";i:109;s:25:\"um-icon-android-share-alt\";i:110;s:20:\"um-icon-android-star\";i:111;s:25:\"um-icon-android-star-half\";i:112;s:28:\"um-icon-android-star-outline\";i:113;s:25:\"um-icon-android-stopwatch\";i:114;s:22:\"um-icon-android-subway\";i:115;s:21:\"um-icon-android-sunny\";i:116;s:20:\"um-icon-android-sync\";i:117;s:23:\"um-icon-android-textsms\";i:118;s:20:\"um-icon-android-time\";i:119;s:21:\"um-icon-android-train\";i:120;s:22:\"um-icon-android-unlock\";i:121;s:22:\"um-icon-android-upload\";i:122;s:27:\"um-icon-android-volume-down\";i:123;s:27:\"um-icon-android-volume-mute\";i:124;s:26:\"um-icon-android-volume-off\";i:125;s:25:\"um-icon-android-volume-up\";i:126;s:20:\"um-icon-android-walk\";i:127;s:23:\"um-icon-android-warning\";i:128;s:21:\"um-icon-android-watch\";i:129;s:20:\"um-icon-android-wifi\";i:130;s:16:\"um-icon-aperture\";i:131;s:15:\"um-icon-archive\";i:132;s:20:\"um-icon-arrow-down-a\";i:133;s:20:\"um-icon-arrow-down-b\";i:134;s:20:\"um-icon-arrow-down-c\";i:135;s:20:\"um-icon-arrow-expand\";i:136;s:29:\"um-icon-arrow-graph-down-left\";i:137;s:30:\"um-icon-arrow-graph-down-right\";i:138;s:27:\"um-icon-arrow-graph-up-left\";i:139;s:28:\"um-icon-arrow-graph-up-right\";i:140;s:20:\"um-icon-arrow-left-a\";i:141;s:20:\"um-icon-arrow-left-b\";i:142;s:20:\"um-icon-arrow-left-c\";i:143;s:18:\"um-icon-arrow-move\";i:144;s:20:\"um-icon-arrow-resize\";i:145;s:25:\"um-icon-arrow-return-left\";i:146;s:26:\"um-icon-arrow-return-right\";i:147;s:21:\"um-icon-arrow-right-a\";i:148;s:21:\"um-icon-arrow-right-b\";i:149;s:21:\"um-icon-arrow-right-c\";i:150;s:20:\"um-icon-arrow-shrink\";i:151;s:18:\"um-icon-arrow-swap\";i:152;s:18:\"um-icon-arrow-up-a\";i:153;s:18:\"um-icon-arrow-up-b\";i:154;s:18:\"um-icon-arrow-up-c\";i:155;s:16:\"um-icon-asterisk\";i:156;s:10:\"um-icon-at\";i:157;s:17:\"um-icon-backspace\";i:158;s:25:\"um-icon-backspace-outline\";i:159;s:11:\"um-icon-bag\";i:160;s:24:\"um-icon-battery-charging\";i:161;s:21:\"um-icon-battery-empty\";i:162;s:20:\"um-icon-battery-full\";i:163;s:20:\"um-icon-battery-half\";i:164;s:19:\"um-icon-battery-low\";i:165;s:14:\"um-icon-beaker\";i:166;s:12:\"um-icon-beer\";i:167;s:17:\"um-icon-bluetooth\";i:168;s:15:\"um-icon-bonfire\";i:169;s:16:\"um-icon-bookmark\";i:170;s:14:\"um-icon-bowtie\";i:171;s:17:\"um-icon-briefcase\";i:172;s:11:\"um-icon-bug\";i:173;s:18:\"um-icon-calculator\";i:174;s:16:\"um-icon-calendar\";i:175;s:14:\"um-icon-camera\";i:176;s:12:\"um-icon-card\";i:177;s:12:\"um-icon-cash\";i:178;s:15:\"um-icon-chatbox\";i:179;s:23:\"um-icon-chatbox-working\";i:180;s:17:\"um-icon-chatboxes\";i:181;s:18:\"um-icon-chatbubble\";i:182;s:26:\"um-icon-chatbubble-working\";i:183;s:19:\"um-icon-chatbubbles\";i:184;s:17:\"um-icon-checkmark\";i:185;s:25:\"um-icon-checkmark-circled\";i:186;s:23:\"um-icon-checkmark-round\";i:187;s:20:\"um-icon-chevron-down\";i:188;s:20:\"um-icon-chevron-left\";i:189;s:21:\"um-icon-chevron-right\";i:190;s:18:\"um-icon-chevron-up\";i:191;s:17:\"um-icon-clipboard\";i:192;s:13:\"um-icon-clock\";i:193;s:13:\"um-icon-close\";i:194;s:21:\"um-icon-close-circled\";i:195;s:19:\"um-icon-close-round\";i:196;s:25:\"um-icon-closed-captioning\";i:197;s:13:\"um-icon-cloud\";i:198;s:12:\"um-icon-code\";i:199;s:21:\"um-icon-code-download\";i:200;s:20:\"um-icon-code-working\";i:201;s:14:\"um-icon-coffee\";i:202;s:15:\"um-icon-compass\";i:203;s:15:\"um-icon-compose\";i:204;s:23:\"um-icon-connection-bars\";i:205;s:16:\"um-icon-contrast\";i:206;s:12:\"um-icon-crop\";i:207;s:12:\"um-icon-cube\";i:208;s:12:\"um-icon-disc\";i:209;s:16:\"um-icon-document\";i:210;s:21:\"um-icon-document-text\";i:211;s:12:\"um-icon-drag\";i:212;s:13:\"um-icon-earth\";i:213;s:13:\"um-icon-easel\";i:214;s:12:\"um-icon-edit\";i:215;s:11:\"um-icon-egg\";i:216;s:13:\"um-icon-eject\";i:217;s:13:\"um-icon-email\";i:218;s:20:\"um-icon-email-unread\";i:219;s:24:\"um-icon-erlenmeyer-flask\";i:220;s:32:\"um-icon-erlenmeyer-flask-bubbles\";i:221;s:11:\"um-icon-eye\";i:222;s:20:\"um-icon-eye-disabled\";i:223;s:14:\"um-icon-female\";i:224;s:14:\"um-icon-filing\";i:225;s:19:\"um-icon-film-marker\";i:226;s:16:\"um-icon-fireball\";i:227;s:12:\"um-icon-flag\";i:228;s:13:\"um-icon-flame\";i:229;s:13:\"um-icon-flash\";i:230;s:17:\"um-icon-flash-off\";i:231;s:14:\"um-icon-folder\";i:232;s:12:\"um-icon-fork\";i:233;s:17:\"um-icon-fork-repo\";i:234;s:15:\"um-icon-forward\";i:235;s:14:\"um-icon-funnel\";i:236;s:14:\"um-icon-gear-a\";i:237;s:14:\"um-icon-gear-b\";i:238;s:12:\"um-icon-grid\";i:239;s:14:\"um-icon-hammer\";i:240;s:13:\"um-icon-happy\";i:241;s:21:\"um-icon-happy-outline\";i:242;s:17:\"um-icon-headphone\";i:243;s:13:\"um-icon-heart\";i:244;s:20:\"um-icon-heart-broken\";i:245;s:12:\"um-icon-help\";i:246;s:17:\"um-icon-help-buoy\";i:247;s:20:\"um-icon-help-circled\";i:248;s:12:\"um-icon-home\";i:249;s:16:\"um-icon-icecream\";i:250;s:13:\"um-icon-image\";i:251;s:14:\"um-icon-images\";i:252;s:19:\"um-icon-information\";i:253;s:27:\"um-icon-information-circled\";i:254;s:13:\"um-icon-ionic\";i:255;s:17:\"um-icon-ios-alarm\";i:256;s:25:\"um-icon-ios-alarm-outline\";i:257;s:18:\"um-icon-ios-albums\";i:258;s:26:\"um-icon-ios-albums-outline\";i:259;s:28:\"um-icon-ios-americanfootball\";i:260;s:36:\"um-icon-ios-americanfootball-outline\";i:261;s:21:\"um-icon-ios-analytics\";i:262;s:29:\"um-icon-ios-analytics-outline\";i:263;s:22:\"um-icon-ios-arrow-back\";i:264;s:22:\"um-icon-ios-arrow-down\";i:265;s:25:\"um-icon-ios-arrow-forward\";i:266;s:22:\"um-icon-ios-arrow-left\";i:267;s:23:\"um-icon-ios-arrow-right\";i:268;s:27:\"um-icon-ios-arrow-thin-down\";i:269;s:27:\"um-icon-ios-arrow-thin-left\";i:270;s:28:\"um-icon-ios-arrow-thin-right\";i:271;s:25:\"um-icon-ios-arrow-thin-up\";i:272;s:20:\"um-icon-ios-arrow-up\";i:273;s:14:\"um-icon-ios-at\";i:274;s:22:\"um-icon-ios-at-outline\";i:275;s:19:\"um-icon-ios-barcode\";i:276;s:27:\"um-icon-ios-barcode-outline\";i:277;s:20:\"um-icon-ios-baseball\";i:278;s:28:\"um-icon-ios-baseball-outline\";i:279;s:22:\"um-icon-ios-basketball\";i:280;s:30:\"um-icon-ios-basketball-outline\";i:281;s:16:\"um-icon-ios-bell\";i:282;s:24:\"um-icon-ios-bell-outline\";i:283;s:16:\"um-icon-ios-body\";i:284;s:24:\"um-icon-ios-body-outline\";i:285;s:16:\"um-icon-ios-bolt\";i:286;s:24:\"um-icon-ios-bolt-outline\";i:287;s:16:\"um-icon-ios-book\";i:288;s:24:\"um-icon-ios-book-outline\";i:289;s:21:\"um-icon-ios-bookmarks\";i:290;s:29:\"um-icon-ios-bookmarks-outline\";i:291;s:15:\"um-icon-ios-box\";i:292;s:23:\"um-icon-ios-box-outline\";i:293;s:21:\"um-icon-ios-briefcase\";i:294;s:29:\"um-icon-ios-briefcase-outline\";i:295;s:20:\"um-icon-ios-browsers\";i:296;s:28:\"um-icon-ios-browsers-outline\";i:297;s:22:\"um-icon-ios-calculator\";i:298;s:30:\"um-icon-ios-calculator-outline\";i:299;s:20:\"um-icon-ios-calendar\";i:300;s:28:\"um-icon-ios-calendar-outline\";i:301;s:18:\"um-icon-ios-camera\";i:302;s:26:\"um-icon-ios-camera-outline\";i:303;s:16:\"um-icon-ios-cart\";i:304;s:24:\"um-icon-ios-cart-outline\";i:305;s:21:\"um-icon-ios-chatboxes\";i:306;s:29:\"um-icon-ios-chatboxes-outline\";i:307;s:22:\"um-icon-ios-chatbubble\";i:308;s:30:\"um-icon-ios-chatbubble-outline\";i:309;s:21:\"um-icon-ios-checkmark\";i:310;s:27:\"um-icon-ios-checkmark-empty\";i:311;s:29:\"um-icon-ios-checkmark-outline\";i:312;s:25:\"um-icon-ios-circle-filled\";i:313;s:26:\"um-icon-ios-circle-outline\";i:314;s:17:\"um-icon-ios-clock\";i:315;s:25:\"um-icon-ios-clock-outline\";i:316;s:17:\"um-icon-ios-close\";i:317;s:23:\"um-icon-ios-close-empty\";i:318;s:25:\"um-icon-ios-close-outline\";i:319;s:17:\"um-icon-ios-cloud\";i:320;s:26:\"um-icon-ios-cloud-download\";i:321;s:34:\"um-icon-ios-cloud-download-outline\";i:322;s:25:\"um-icon-ios-cloud-outline\";i:323;s:24:\"um-icon-ios-cloud-upload\";i:324;s:32:\"um-icon-ios-cloud-upload-outline\";i:325;s:18:\"um-icon-ios-cloudy\";i:326;s:24:\"um-icon-ios-cloudy-night\";i:327;s:32:\"um-icon-ios-cloudy-night-outline\";i:328;s:26:\"um-icon-ios-cloudy-outline\";i:329;s:15:\"um-icon-ios-cog\";i:330;s:23:\"um-icon-ios-cog-outline\";i:331;s:24:\"um-icon-ios-color-filter\";i:332;s:32:\"um-icon-ios-color-filter-outline\";i:333;s:22:\"um-icon-ios-color-wand\";i:334;s:30:\"um-icon-ios-color-wand-outline\";i:335;s:19:\"um-icon-ios-compose\";i:336;s:27:\"um-icon-ios-compose-outline\";i:337;s:19:\"um-icon-ios-contact\";i:338;s:27:\"um-icon-ios-contact-outline\";i:339;s:16:\"um-icon-ios-copy\";i:340;s:24:\"um-icon-ios-copy-outline\";i:341;s:16:\"um-icon-ios-crop\";i:342;s:23:\"um-icon-ios-crop-strong\";i:343;s:20:\"um-icon-ios-download\";i:344;s:28:\"um-icon-ios-download-outline\";i:345;s:16:\"um-icon-ios-drag\";i:346;s:17:\"um-icon-ios-email\";i:347;s:25:\"um-icon-ios-email-outline\";i:348;s:15:\"um-icon-ios-eye\";i:349;s:23:\"um-icon-ios-eye-outline\";i:350;s:23:\"um-icon-ios-fastforward\";i:351;s:31:\"um-icon-ios-fastforward-outline\";i:352;s:18:\"um-icon-ios-filing\";i:353;s:26:\"um-icon-ios-filing-outline\";i:354;s:16:\"um-icon-ios-film\";i:355;s:24:\"um-icon-ios-film-outline\";i:356;s:16:\"um-icon-ios-flag\";i:357;s:24:\"um-icon-ios-flag-outline\";i:358;s:17:\"um-icon-ios-flame\";i:359;s:25:\"um-icon-ios-flame-outline\";i:360;s:17:\"um-icon-ios-flask\";i:361;s:25:\"um-icon-ios-flask-outline\";i:362;s:18:\"um-icon-ios-flower\";i:363;s:26:\"um-icon-ios-flower-outline\";i:364;s:18:\"um-icon-ios-folder\";i:365;s:26:\"um-icon-ios-folder-outline\";i:366;s:20:\"um-icon-ios-football\";i:367;s:28:\"um-icon-ios-football-outline\";i:368;s:29:\"um-icon-ios-game-controller-a\";i:369;s:37:\"um-icon-ios-game-controller-a-outline\";i:370;s:29:\"um-icon-ios-game-controller-b\";i:371;s:37:\"um-icon-ios-game-controller-b-outline\";i:372;s:16:\"um-icon-ios-gear\";i:373;s:24:\"um-icon-ios-gear-outline\";i:374;s:19:\"um-icon-ios-glasses\";i:375;s:27:\"um-icon-ios-glasses-outline\";i:376;s:21:\"um-icon-ios-grid-view\";i:377;s:29:\"um-icon-ios-grid-view-outline\";i:378;s:17:\"um-icon-ios-heart\";i:379;s:25:\"um-icon-ios-heart-outline\";i:380;s:16:\"um-icon-ios-help\";i:381;s:22:\"um-icon-ios-help-empty\";i:382;s:24:\"um-icon-ios-help-outline\";i:383;s:16:\"um-icon-ios-home\";i:384;s:24:\"um-icon-ios-home-outline\";i:385;s:20:\"um-icon-ios-infinite\";i:386;s:28:\"um-icon-ios-infinite-outline\";i:387;s:23:\"um-icon-ios-information\";i:388;s:29:\"um-icon-ios-information-empty\";i:389;s:31:\"um-icon-ios-information-outline\";i:390;s:25:\"um-icon-ios-ionic-outline\";i:391;s:18:\"um-icon-ios-keypad\";i:392;s:26:\"um-icon-ios-keypad-outline\";i:393;s:21:\"um-icon-ios-lightbulb\";i:394;s:29:\"um-icon-ios-lightbulb-outline\";i:395;s:16:\"um-icon-ios-list\";i:396;s:24:\"um-icon-ios-list-outline\";i:397;s:20:\"um-icon-ios-location\";i:398;s:28:\"um-icon-ios-location-outline\";i:399;s:18:\"um-icon-ios-locked\";i:400;s:26:\"um-icon-ios-locked-outline\";i:401;s:16:\"um-icon-ios-loop\";i:402;s:23:\"um-icon-ios-loop-strong\";i:403;s:19:\"um-icon-ios-medical\";i:404;s:27:\"um-icon-ios-medical-outline\";i:405;s:18:\"um-icon-ios-medkit\";i:406;s:26:\"um-icon-ios-medkit-outline\";i:407;s:15:\"um-icon-ios-mic\";i:408;s:19:\"um-icon-ios-mic-off\";i:409;s:23:\"um-icon-ios-mic-outline\";i:410;s:17:\"um-icon-ios-minus\";i:411;s:23:\"um-icon-ios-minus-empty\";i:412;s:25:\"um-icon-ios-minus-outline\";i:413;s:19:\"um-icon-ios-monitor\";i:414;s:27:\"um-icon-ios-monitor-outline\";i:415;s:16:\"um-icon-ios-moon\";i:416;s:24:\"um-icon-ios-moon-outline\";i:417;s:16:\"um-icon-ios-more\";i:418;s:24:\"um-icon-ios-more-outline\";i:419;s:24:\"um-icon-ios-musical-note\";i:420;s:25:\"um-icon-ios-musical-notes\";i:421;s:20:\"um-icon-ios-navigate\";i:422;s:28:\"um-icon-ios-navigate-outline\";i:423;s:21:\"um-icon-ios-nutrition\";i:424;s:29:\"um-icon-ios-nutrition-outline\";i:425;s:17:\"um-icon-ios-paper\";i:426;s:25:\"um-icon-ios-paper-outline\";i:427;s:22:\"um-icon-ios-paperplane\";i:428;s:30:\"um-icon-ios-paperplane-outline\";i:429;s:23:\"um-icon-ios-partlysunny\";i:430;s:31:\"um-icon-ios-partlysunny-outline\";i:431;s:17:\"um-icon-ios-pause\";i:432;s:25:\"um-icon-ios-pause-outline\";i:433;s:15:\"um-icon-ios-paw\";i:434;s:23:\"um-icon-ios-paw-outline\";i:435;s:18:\"um-icon-ios-people\";i:436;s:26:\"um-icon-ios-people-outline\";i:437;s:18:\"um-icon-ios-person\";i:438;s:26:\"um-icon-ios-person-outline\";i:439;s:21:\"um-icon-ios-personadd\";i:440;s:29:\"um-icon-ios-personadd-outline\";i:441;s:18:\"um-icon-ios-photos\";i:442;s:26:\"um-icon-ios-photos-outline\";i:443;s:15:\"um-icon-ios-pie\";i:444;s:23:\"um-icon-ios-pie-outline\";i:445;s:16:\"um-icon-ios-pint\";i:446;s:24:\"um-icon-ios-pint-outline\";i:447;s:16:\"um-icon-ios-play\";i:448;s:24:\"um-icon-ios-play-outline\";i:449;s:16:\"um-icon-ios-plus\";i:450;s:22:\"um-icon-ios-plus-empty\";i:451;s:24:\"um-icon-ios-plus-outline\";i:452;s:20:\"um-icon-ios-pricetag\";i:453;s:28:\"um-icon-ios-pricetag-outline\";i:454;s:21:\"um-icon-ios-pricetags\";i:455;s:29:\"um-icon-ios-pricetags-outline\";i:456;s:19:\"um-icon-ios-printer\";i:457;s:27:\"um-icon-ios-printer-outline\";i:458;s:17:\"um-icon-ios-pulse\";i:459;s:24:\"um-icon-ios-pulse-strong\";i:460;s:17:\"um-icon-ios-rainy\";i:461;s:25:\"um-icon-ios-rainy-outline\";i:462;s:21:\"um-icon-ios-recording\";i:463;s:29:\"um-icon-ios-recording-outline\";i:464;s:16:\"um-icon-ios-redo\";i:465;s:24:\"um-icon-ios-redo-outline\";i:466;s:19:\"um-icon-ios-refresh\";i:467;s:25:\"um-icon-ios-refresh-empty\";i:468;s:27:\"um-icon-ios-refresh-outline\";i:469;s:18:\"um-icon-ios-reload\";i:470;s:26:\"um-icon-ios-reverse-camera\";i:471;s:34:\"um-icon-ios-reverse-camera-outline\";i:472;s:18:\"um-icon-ios-rewind\";i:473;s:26:\"um-icon-ios-rewind-outline\";i:474;s:16:\"um-icon-ios-rose\";i:475;s:24:\"um-icon-ios-rose-outline\";i:476;s:18:\"um-icon-ios-search\";i:477;s:25:\"um-icon-ios-search-strong\";i:478;s:20:\"um-icon-ios-settings\";i:479;s:27:\"um-icon-ios-settings-strong\";i:480;s:19:\"um-icon-ios-shuffle\";i:481;s:26:\"um-icon-ios-shuffle-strong\";i:482;s:24:\"um-icon-ios-skipbackward\";i:483;s:32:\"um-icon-ios-skipbackward-outline\";i:484;s:23:\"um-icon-ios-skipforward\";i:485;s:31:\"um-icon-ios-skipforward-outline\";i:486;s:17:\"um-icon-ios-snowy\";i:487;s:23:\"um-icon-ios-speedometer\";i:488;s:31:\"um-icon-ios-speedometer-outline\";i:489;s:16:\"um-icon-ios-star\";i:490;s:21:\"um-icon-ios-star-half\";i:491;s:24:\"um-icon-ios-star-outline\";i:492;s:21:\"um-icon-ios-stopwatch\";i:493;s:29:\"um-icon-ios-stopwatch-outline\";i:494;s:17:\"um-icon-ios-sunny\";i:495;s:25:\"um-icon-ios-sunny-outline\";i:496;s:21:\"um-icon-ios-telephone\";i:497;s:29:\"um-icon-ios-telephone-outline\";i:498;s:22:\"um-icon-ios-tennisball\";i:499;s:30:\"um-icon-ios-tennisball-outline\";i:500;s:24:\"um-icon-ios-thunderstorm\";i:501;s:32:\"um-icon-ios-thunderstorm-outline\";i:502;s:16:\"um-icon-ios-time\";i:503;s:24:\"um-icon-ios-time-outline\";i:504;s:17:\"um-icon-ios-timer\";i:505;s:25:\"um-icon-ios-timer-outline\";i:506;s:18:\"um-icon-ios-toggle\";i:507;s:26:\"um-icon-ios-toggle-outline\";i:508;s:17:\"um-icon-ios-trash\";i:509;s:25:\"um-icon-ios-trash-outline\";i:510;s:16:\"um-icon-ios-undo\";i:511;s:24:\"um-icon-ios-undo-outline\";i:512;s:20:\"um-icon-ios-unlocked\";i:513;s:28:\"um-icon-ios-unlocked-outline\";i:514;s:18:\"um-icon-ios-upload\";i:515;s:26:\"um-icon-ios-upload-outline\";i:516;s:20:\"um-icon-ios-videocam\";i:517;s:28:\"um-icon-ios-videocam-outline\";i:518;s:23:\"um-icon-ios-volume-high\";i:519;s:22:\"um-icon-ios-volume-low\";i:520;s:21:\"um-icon-ios-wineglass\";i:521;s:29:\"um-icon-ios-wineglass-outline\";i:522;s:17:\"um-icon-ios-world\";i:523;s:25:\"um-icon-ios-world-outline\";i:524;s:12:\"um-icon-ipad\";i:525;s:14:\"um-icon-iphone\";i:526;s:12:\"um-icon-ipod\";i:527;s:11:\"um-icon-jet\";i:528;s:11:\"um-icon-key\";i:529;s:13:\"um-icon-knife\";i:530;s:14:\"um-icon-laptop\";i:531;s:12:\"um-icon-leaf\";i:532;s:14:\"um-icon-levels\";i:533;s:17:\"um-icon-lightbulb\";i:534;s:12:\"um-icon-link\";i:535;s:14:\"um-icon-load-a\";i:536;s:14:\"um-icon-load-b\";i:537;s:14:\"um-icon-load-c\";i:538;s:14:\"um-icon-load-d\";i:539;s:16:\"um-icon-location\";i:540;s:24:\"um-icon-lock-combination\";i:541;s:14:\"um-icon-locked\";i:542;s:14:\"um-icon-log-in\";i:543;s:15:\"um-icon-log-out\";i:544;s:12:\"um-icon-loop\";i:545;s:14:\"um-icon-magnet\";i:546;s:12:\"um-icon-male\";i:547;s:11:\"um-icon-man\";i:548;s:11:\"um-icon-map\";i:549;s:14:\"um-icon-medkit\";i:550;s:13:\"um-icon-merge\";i:551;s:13:\"um-icon-mic-a\";i:552;s:13:\"um-icon-mic-b\";i:553;s:13:\"um-icon-mic-c\";i:554;s:13:\"um-icon-minus\";i:555;s:21:\"um-icon-minus-circled\";i:556;s:19:\"um-icon-minus-round\";i:557;s:15:\"um-icon-model-s\";i:558;s:15:\"um-icon-monitor\";i:559;s:12:\"um-icon-more\";i:560;s:13:\"um-icon-mouse\";i:561;s:18:\"um-icon-music-note\";i:562;s:15:\"um-icon-navicon\";i:563;s:21:\"um-icon-navicon-round\";i:564;s:16:\"um-icon-navigate\";i:565;s:15:\"um-icon-network\";i:566;s:18:\"um-icon-no-smoking\";i:567;s:15:\"um-icon-nuclear\";i:568;s:14:\"um-icon-outlet\";i:569;s:18:\"um-icon-paintbrush\";i:570;s:19:\"um-icon-paintbucket\";i:571;s:22:\"um-icon-paper-airplane\";i:572;s:17:\"um-icon-paperclip\";i:573;s:13:\"um-icon-pause\";i:574;s:14:\"um-icon-person\";i:575;s:18:\"um-icon-person-add\";i:576;s:22:\"um-icon-person-stalker\";i:577;s:17:\"um-icon-pie-graph\";i:578;s:11:\"um-icon-pin\";i:579;s:16:\"um-icon-pinpoint\";i:580;s:13:\"um-icon-pizza\";i:581;s:13:\"um-icon-plane\";i:582;s:14:\"um-icon-planet\";i:583;s:12:\"um-icon-play\";i:584;s:19:\"um-icon-playstation\";i:585;s:12:\"um-icon-plus\";i:586;s:20:\"um-icon-plus-circled\";i:587;s:18:\"um-icon-plus-round\";i:588;s:14:\"um-icon-podium\";i:589;s:13:\"um-icon-pound\";i:590;s:13:\"um-icon-power\";i:591;s:16:\"um-icon-pricetag\";i:592;s:17:\"um-icon-pricetags\";i:593;s:15:\"um-icon-printer\";i:594;s:20:\"um-icon-pull-request\";i:595;s:18:\"um-icon-qr-scanner\";i:596;s:13:\"um-icon-quote\";i:597;s:19:\"um-icon-radio-waves\";i:598;s:14:\"um-icon-record\";i:599;s:15:\"um-icon-refresh\";i:600;s:13:\"um-icon-reply\";i:601;s:17:\"um-icon-reply-all\";i:602;s:16:\"um-icon-ribbon-a\";i:603;s:16:\"um-icon-ribbon-b\";i:604;s:11:\"um-icon-sad\";i:605;s:19:\"um-icon-sad-outline\";i:606;s:16:\"um-icon-scissors\";i:607;s:14:\"um-icon-search\";i:608;s:16:\"um-icon-settings\";i:609;s:13:\"um-icon-share\";i:610;s:15:\"um-icon-shuffle\";i:611;s:21:\"um-icon-skip-backward\";i:612;s:20:\"um-icon-skip-forward\";i:613;s:22:\"um-icon-social-android\";i:614;s:30:\"um-icon-social-android-outline\";i:615;s:22:\"um-icon-social-angular\";i:616;s:30:\"um-icon-social-angular-outline\";i:617;s:20:\"um-icon-social-apple\";i:618;s:28:\"um-icon-social-apple-outline\";i:619;s:22:\"um-icon-social-bitcoin\";i:620;s:30:\"um-icon-social-bitcoin-outline\";i:621;s:21:\"um-icon-social-buffer\";i:622;s:29:\"um-icon-social-buffer-outline\";i:623;s:21:\"um-icon-social-chrome\";i:624;s:29:\"um-icon-social-chrome-outline\";i:625;s:22:\"um-icon-social-codepen\";i:626;s:30:\"um-icon-social-codepen-outline\";i:627;s:19:\"um-icon-social-css3\";i:628;s:27:\"um-icon-social-css3-outline\";i:629;s:27:\"um-icon-social-designernews\";i:630;s:35:\"um-icon-social-designernews-outline\";i:631;s:23:\"um-icon-social-dribbble\";i:632;s:31:\"um-icon-social-dribbble-outline\";i:633;s:22:\"um-icon-social-dropbox\";i:634;s:30:\"um-icon-social-dropbox-outline\";i:635;s:19:\"um-icon-social-euro\";i:636;s:27:\"um-icon-social-euro-outline\";i:637;s:23:\"um-icon-social-facebook\";i:638;s:31:\"um-icon-social-facebook-outline\";i:639;s:25:\"um-icon-social-foursquare\";i:640;s:33:\"um-icon-social-foursquare-outline\";i:641;s:28:\"um-icon-social-freebsd-devil\";i:642;s:21:\"um-icon-social-github\";i:643;s:29:\"um-icon-social-github-outline\";i:644;s:21:\"um-icon-social-google\";i:645;s:29:\"um-icon-social-google-outline\";i:646;s:25:\"um-icon-social-googleplus\";i:647;s:33:\"um-icon-social-googleplus-outline\";i:648;s:25:\"um-icon-social-hackernews\";i:649;s:33:\"um-icon-social-hackernews-outline\";i:650;s:20:\"um-icon-social-html5\";i:651;s:28:\"um-icon-social-html5-outline\";i:652;s:24:\"um-icon-social-instagram\";i:653;s:32:\"um-icon-social-instagram-outline\";i:654;s:25:\"um-icon-social-javascript\";i:655;s:33:\"um-icon-social-javascript-outline\";i:656;s:23:\"um-icon-social-linkedin\";i:657;s:31:\"um-icon-social-linkedin-outline\";i:658;s:23:\"um-icon-social-markdown\";i:659;s:21:\"um-icon-social-nodejs\";i:660;s:22:\"um-icon-social-octocat\";i:661;s:24:\"um-icon-social-pinterest\";i:662;s:32:\"um-icon-social-pinterest-outline\";i:663;s:21:\"um-icon-social-python\";i:664;s:21:\"um-icon-social-reddit\";i:665;s:29:\"um-icon-social-reddit-outline\";i:666;s:18:\"um-icon-social-rss\";i:667;s:26:\"um-icon-social-rss-outline\";i:668;s:19:\"um-icon-social-sass\";i:669;s:20:\"um-icon-social-skype\";i:670;s:28:\"um-icon-social-skype-outline\";i:671;s:23:\"um-icon-social-snapchat\";i:672;s:31:\"um-icon-social-snapchat-outline\";i:673;s:21:\"um-icon-social-tumblr\";i:674;s:29:\"um-icon-social-tumblr-outline\";i:675;s:18:\"um-icon-social-tux\";i:676;s:21:\"um-icon-social-twitch\";i:677;s:29:\"um-icon-social-twitch-outline\";i:678;s:22:\"um-icon-social-twitter\";i:679;s:30:\"um-icon-social-twitter-outline\";i:680;s:18:\"um-icon-social-usd\";i:681;s:26:\"um-icon-social-usd-outline\";i:682;s:20:\"um-icon-social-vimeo\";i:683;s:28:\"um-icon-social-vimeo-outline\";i:684;s:23:\"um-icon-social-whatsapp\";i:685;s:31:\"um-icon-social-whatsapp-outline\";i:686;s:22:\"um-icon-social-windows\";i:687;s:30:\"um-icon-social-windows-outline\";i:688;s:24:\"um-icon-social-wordpress\";i:689;s:32:\"um-icon-social-wordpress-outline\";i:690;s:20:\"um-icon-social-yahoo\";i:691;s:28:\"um-icon-social-yahoo-outline\";i:692;s:18:\"um-icon-social-yen\";i:693;s:26:\"um-icon-social-yen-outline\";i:694;s:22:\"um-icon-social-youtube\";i:695;s:30:\"um-icon-social-youtube-outline\";i:696;s:16:\"um-icon-soup-can\";i:697;s:24:\"um-icon-soup-can-outline\";i:698;s:20:\"um-icon-speakerphone\";i:699;s:19:\"um-icon-speedometer\";i:700;s:13:\"um-icon-spoon\";i:701;s:12:\"um-icon-star\";i:702;s:18:\"um-icon-stats-bars\";i:703;s:13:\"um-icon-steam\";i:704;s:12:\"um-icon-stop\";i:705;s:19:\"um-icon-thermometer\";i:706;s:18:\"um-icon-thumbsdown\";i:707;s:16:\"um-icon-thumbsup\";i:708;s:14:\"um-icon-toggle\";i:709;s:21:\"um-icon-toggle-filled\";i:710;s:19:\"um-icon-transgender\";i:711;s:15:\"um-icon-trash-a\";i:712;s:15:\"um-icon-trash-b\";i:713;s:14:\"um-icon-trophy\";i:714;s:14:\"um-icon-tshirt\";i:715;s:22:\"um-icon-tshirt-outline\";i:716;s:16:\"um-icon-umbrella\";i:717;s:18:\"um-icon-university\";i:718;s:16:\"um-icon-unlocked\";i:719;s:14:\"um-icon-upload\";i:720;s:11:\"um-icon-usb\";i:721;s:19:\"um-icon-videocamera\";i:722;s:19:\"um-icon-volume-high\";i:723;s:18:\"um-icon-volume-low\";i:724;s:21:\"um-icon-volume-medium\";i:725;s:19:\"um-icon-volume-mute\";i:726;s:12:\"um-icon-wand\";i:727;s:17:\"um-icon-waterdrop\";i:728;s:12:\"um-icon-wifi\";i:729;s:17:\"um-icon-wineglass\";i:730;s:13:\"um-icon-woman\";i:731;s:14:\"um-icon-wrench\";i:732;s:12:\"um-icon-xbox\";i:733;s:15:\"um-faicon-glass\";i:734;s:15:\"um-faicon-music\";i:735;s:16:\"um-faicon-search\";i:736;s:20:\"um-faicon-envelope-o\";i:737;s:15:\"um-faicon-heart\";i:738;s:14:\"um-faicon-star\";i:739;s:16:\"um-faicon-star-o\";i:740;s:14:\"um-faicon-user\";i:741;s:14:\"um-faicon-film\";i:742;s:18:\"um-faicon-th-large\";i:743;s:12:\"um-faicon-th\";i:744;s:17:\"um-faicon-th-list\";i:745;s:15:\"um-faicon-check\";i:746;s:15:\"um-faicon-times\";i:747;s:21:\"um-faicon-search-plus\";i:748;s:22:\"um-faicon-search-minus\";i:749;s:19:\"um-faicon-power-off\";i:750;s:16:\"um-faicon-signal\";i:751;s:13:\"um-faicon-cog\";i:752;s:17:\"um-faicon-trash-o\";i:753;s:14:\"um-faicon-home\";i:754;s:16:\"um-faicon-file-o\";i:755;s:17:\"um-faicon-clock-o\";i:756;s:14:\"um-faicon-road\";i:757;s:18:\"um-faicon-download\";i:758;s:29:\"um-faicon-arrow-circle-o-down\";i:759;s:27:\"um-faicon-arrow-circle-o-up\";i:760;s:15:\"um-faicon-inbox\";i:761;s:23:\"um-faicon-play-circle-o\";i:762;s:16:\"um-faicon-repeat\";i:763;s:17:\"um-faicon-refresh\";i:764;s:18:\"um-faicon-list-alt\";i:765;s:14:\"um-faicon-lock\";i:766;s:14:\"um-faicon-flag\";i:767;s:20:\"um-faicon-headphones\";i:768;s:20:\"um-faicon-volume-off\";i:769;s:21:\"um-faicon-volume-down\";i:770;s:19:\"um-faicon-volume-up\";i:771;s:16:\"um-faicon-qrcode\";i:772;s:17:\"um-faicon-barcode\";i:773;s:13:\"um-faicon-tag\";i:774;s:14:\"um-faicon-tags\";i:775;s:14:\"um-faicon-book\";i:776;s:18:\"um-faicon-bookmark\";i:777;s:15:\"um-faicon-print\";i:778;s:16:\"um-faicon-camera\";i:779;s:14:\"um-faicon-font\";i:780;s:14:\"um-faicon-bold\";i:781;s:16:\"um-faicon-italic\";i:782;s:21:\"um-faicon-text-height\";i:783;s:20:\"um-faicon-text-width\";i:784;s:20:\"um-faicon-align-left\";i:785;s:22:\"um-faicon-align-center\";i:786;s:21:\"um-faicon-align-right\";i:787;s:23:\"um-faicon-align-justify\";i:788;s:14:\"um-faicon-list\";i:789;s:17:\"um-faicon-outdent\";i:790;s:16:\"um-faicon-indent\";i:791;s:22:\"um-faicon-video-camera\";i:792;s:19:\"um-faicon-picture-o\";i:793;s:16:\"um-faicon-pencil\";i:794;s:20:\"um-faicon-map-marker\";i:795;s:16:\"um-faicon-adjust\";i:796;s:14:\"um-faicon-tint\";i:797;s:25:\"um-faicon-pencil-square-o\";i:798;s:24:\"um-faicon-share-square-o\";i:799;s:24:\"um-faicon-check-square-o\";i:800;s:16:\"um-faicon-arrows\";i:801;s:23:\"um-faicon-step-backward\";i:802;s:23:\"um-faicon-fast-backward\";i:803;s:18:\"um-faicon-backward\";i:804;s:14:\"um-faicon-play\";i:805;s:15:\"um-faicon-pause\";i:806;s:14:\"um-faicon-stop\";i:807;s:17:\"um-faicon-forward\";i:808;s:22:\"um-faicon-fast-forward\";i:809;s:22:\"um-faicon-step-forward\";i:810;s:15:\"um-faicon-eject\";i:811;s:22:\"um-faicon-chevron-left\";i:812;s:23:\"um-faicon-chevron-right\";i:813;s:21:\"um-faicon-plus-circle\";i:814;s:22:\"um-faicon-minus-circle\";i:815;s:22:\"um-faicon-times-circle\";i:816;s:22:\"um-faicon-check-circle\";i:817;s:25:\"um-faicon-question-circle\";i:818;s:21:\"um-faicon-info-circle\";i:819;s:20:\"um-faicon-crosshairs\";i:820;s:24:\"um-faicon-times-circle-o\";i:821;s:24:\"um-faicon-check-circle-o\";i:822;s:13:\"um-faicon-ban\";i:823;s:20:\"um-faicon-arrow-left\";i:824;s:21:\"um-faicon-arrow-right\";i:825;s:18:\"um-faicon-arrow-up\";i:826;s:20:\"um-faicon-arrow-down\";i:827;s:15:\"um-faicon-share\";i:828;s:16:\"um-faicon-expand\";i:829;s:18:\"um-faicon-compress\";i:830;s:14:\"um-faicon-plus\";i:831;s:15:\"um-faicon-minus\";i:832;s:18:\"um-faicon-asterisk\";i:833;s:28:\"um-faicon-exclamation-circle\";i:834;s:14:\"um-faicon-gift\";i:835;s:14:\"um-faicon-leaf\";i:836;s:14:\"um-faicon-fire\";i:837;s:13:\"um-faicon-eye\";i:838;s:19:\"um-faicon-eye-slash\";i:839;s:30:\"um-faicon-exclamation-triangle\";i:840;s:15:\"um-faicon-plane\";i:841;s:18:\"um-faicon-calendar\";i:842;s:16:\"um-faicon-random\";i:843;s:17:\"um-faicon-comment\";i:844;s:16:\"um-faicon-magnet\";i:845;s:20:\"um-faicon-chevron-up\";i:846;s:22:\"um-faicon-chevron-down\";i:847;s:17:\"um-faicon-retweet\";i:848;s:23:\"um-faicon-shopping-cart\";i:849;s:16:\"um-faicon-folder\";i:850;s:21:\"um-faicon-folder-open\";i:851;s:18:\"um-faicon-arrows-v\";i:852;s:18:\"um-faicon-arrows-h\";i:853;s:19:\"um-faicon-bar-chart\";i:854;s:24:\"um-faicon-twitter-square\";i:855;s:25:\"um-faicon-facebook-square\";i:856;s:22:\"um-faicon-camera-retro\";i:857;s:13:\"um-faicon-key\";i:858;s:14:\"um-faicon-cogs\";i:859;s:18:\"um-faicon-comments\";i:860;s:21:\"um-faicon-thumbs-o-up\";i:861;s:23:\"um-faicon-thumbs-o-down\";i:862;s:19:\"um-faicon-star-half\";i:863;s:17:\"um-faicon-heart-o\";i:864;s:18:\"um-faicon-sign-out\";i:865;s:25:\"um-faicon-linkedin-square\";i:866;s:20:\"um-faicon-thumb-tack\";i:867;s:23:\"um-faicon-external-link\";i:868;s:17:\"um-faicon-sign-in\";i:869;s:16:\"um-faicon-trophy\";i:870;s:23:\"um-faicon-github-square\";i:871;s:16:\"um-faicon-upload\";i:872;s:17:\"um-faicon-lemon-o\";i:873;s:15:\"um-faicon-phone\";i:874;s:18:\"um-faicon-square-o\";i:875;s:20:\"um-faicon-bookmark-o\";i:876;s:22:\"um-faicon-phone-square\";i:877;s:17:\"um-faicon-twitter\";i:878;s:18:\"um-faicon-facebook\";i:879;s:16:\"um-faicon-github\";i:880;s:16:\"um-faicon-unlock\";i:881;s:21:\"um-faicon-credit-card\";i:882;s:13:\"um-faicon-rss\";i:883;s:15:\"um-faicon-hdd-o\";i:884;s:18:\"um-faicon-bullhorn\";i:885;s:14:\"um-faicon-bell\";i:886;s:21:\"um-faicon-certificate\";i:887;s:22:\"um-faicon-hand-o-right\";i:888;s:21:\"um-faicon-hand-o-left\";i:889;s:19:\"um-faicon-hand-o-up\";i:890;s:21:\"um-faicon-hand-o-down\";i:891;s:27:\"um-faicon-arrow-circle-left\";i:892;s:28:\"um-faicon-arrow-circle-right\";i:893;s:25:\"um-faicon-arrow-circle-up\";i:894;s:27:\"um-faicon-arrow-circle-down\";i:895;s:15:\"um-faicon-globe\";i:896;s:16:\"um-faicon-wrench\";i:897;s:15:\"um-faicon-tasks\";i:898;s:16:\"um-faicon-filter\";i:899;s:19:\"um-faicon-briefcase\";i:900;s:20:\"um-faicon-arrows-alt\";i:901;s:15:\"um-faicon-users\";i:902;s:14:\"um-faicon-link\";i:903;s:15:\"um-faicon-cloud\";i:904;s:15:\"um-faicon-flask\";i:905;s:18:\"um-faicon-scissors\";i:906;s:17:\"um-faicon-files-o\";i:907;s:19:\"um-faicon-paperclip\";i:908;s:18:\"um-faicon-floppy-o\";i:909;s:16:\"um-faicon-square\";i:910;s:14:\"um-faicon-bars\";i:911;s:17:\"um-faicon-list-ul\";i:912;s:17:\"um-faicon-list-ol\";i:913;s:23:\"um-faicon-strikethrough\";i:914;s:19:\"um-faicon-underline\";i:915;s:15:\"um-faicon-table\";i:916;s:15:\"um-faicon-magic\";i:917;s:15:\"um-faicon-truck\";i:918;s:19:\"um-faicon-pinterest\";i:919;s:26:\"um-faicon-pinterest-square\";i:920;s:28:\"um-faicon-google-plus-square\";i:921;s:21:\"um-faicon-google-plus\";i:922;s:15:\"um-faicon-money\";i:923;s:20:\"um-faicon-caret-down\";i:924;s:18:\"um-faicon-caret-up\";i:925;s:20:\"um-faicon-caret-left\";i:926;s:21:\"um-faicon-caret-right\";i:927;s:17:\"um-faicon-columns\";i:928;s:14:\"um-faicon-sort\";i:929;s:19:\"um-faicon-sort-desc\";i:930;s:18:\"um-faicon-sort-asc\";i:931;s:18:\"um-faicon-envelope\";i:932;s:18:\"um-faicon-linkedin\";i:933;s:14:\"um-faicon-undo\";i:934;s:15:\"um-faicon-gavel\";i:935;s:20:\"um-faicon-tachometer\";i:936;s:19:\"um-faicon-comment-o\";i:937;s:20:\"um-faicon-comments-o\";i:938;s:14:\"um-faicon-bolt\";i:939;s:17:\"um-faicon-sitemap\";i:940;s:18:\"um-faicon-umbrella\";i:941;s:19:\"um-faicon-clipboard\";i:942;s:21:\"um-faicon-lightbulb-o\";i:943;s:18:\"um-faicon-exchange\";i:944;s:24:\"um-faicon-cloud-download\";i:945;s:22:\"um-faicon-cloud-upload\";i:946;s:17:\"um-faicon-user-md\";i:947;s:21:\"um-faicon-stethoscope\";i:948;s:18:\"um-faicon-suitcase\";i:949;s:16:\"um-faicon-bell-o\";i:950;s:16:\"um-faicon-coffee\";i:951;s:17:\"um-faicon-cutlery\";i:952;s:21:\"um-faicon-file-text-o\";i:953;s:20:\"um-faicon-building-o\";i:954;s:20:\"um-faicon-hospital-o\";i:955;s:19:\"um-faicon-ambulance\";i:956;s:16:\"um-faicon-medkit\";i:957;s:21:\"um-faicon-fighter-jet\";i:958;s:14:\"um-faicon-beer\";i:959;s:18:\"um-faicon-h-square\";i:960;s:21:\"um-faicon-plus-square\";i:961;s:27:\"um-faicon-angle-double-left\";i:962;s:28:\"um-faicon-angle-double-right\";i:963;s:25:\"um-faicon-angle-double-up\";i:964;s:27:\"um-faicon-angle-double-down\";i:965;s:20:\"um-faicon-angle-left\";i:966;s:21:\"um-faicon-angle-right\";i:967;s:18:\"um-faicon-angle-up\";i:968;s:20:\"um-faicon-angle-down\";i:969;s:17:\"um-faicon-desktop\";i:970;s:16:\"um-faicon-laptop\";i:971;s:16:\"um-faicon-tablet\";i:972;s:16:\"um-faicon-mobile\";i:973;s:18:\"um-faicon-circle-o\";i:974;s:20:\"um-faicon-quote-left\";i:975;s:21:\"um-faicon-quote-right\";i:976;s:17:\"um-faicon-spinner\";i:977;s:14:\"um-faicon-spin\";i:978;s:16:\"um-faicon-circle\";i:979;s:15:\"um-faicon-reply\";i:980;s:20:\"um-faicon-github-alt\";i:981;s:18:\"um-faicon-folder-o\";i:982;s:23:\"um-faicon-folder-open-o\";i:983;s:17:\"um-faicon-smile-o\";i:984;s:17:\"um-faicon-frown-o\";i:985;s:15:\"um-faicon-meh-o\";i:986;s:17:\"um-faicon-gamepad\";i:987;s:20:\"um-faicon-keyboard-o\";i:988;s:16:\"um-faicon-flag-o\";i:989;s:24:\"um-faicon-flag-checkered\";i:990;s:18:\"um-faicon-terminal\";i:991;s:14:\"um-faicon-code\";i:992;s:19:\"um-faicon-reply-all\";i:993;s:21:\"um-faicon-star-half-o\";i:994;s:24:\"um-faicon-location-arrow\";i:995;s:14:\"um-faicon-crop\";i:996;s:19:\"um-faicon-code-fork\";i:997;s:22:\"um-faicon-chain-broken\";i:998;s:18:\"um-faicon-question\";i:999;s:14:\"um-faicon-info\";i:1000;s:21:\"um-faicon-exclamation\";i:1001;s:21:\"um-faicon-superscript\";i:1002;s:19:\"um-faicon-subscript\";i:1003;s:16:\"um-faicon-eraser\";i:1004;s:22:\"um-faicon-puzzle-piece\";i:1005;s:20:\"um-faicon-microphone\";i:1006;s:26:\"um-faicon-microphone-slash\";i:1007;s:16:\"um-faicon-shield\";i:1008;s:20:\"um-faicon-calendar-o\";i:1009;s:27:\"um-faicon-fire-extinguisher\";i:1010;s:16:\"um-faicon-rocket\";i:1011;s:16:\"um-faicon-maxcdn\";i:1012;s:29:\"um-faicon-chevron-circle-left\";i:1013;s:30:\"um-faicon-chevron-circle-right\";i:1014;s:27:\"um-faicon-chevron-circle-up\";i:1015;s:29:\"um-faicon-chevron-circle-down\";i:1016;s:15:\"um-faicon-html5\";i:1017;s:14:\"um-faicon-css3\";i:1018;s:16:\"um-faicon-anchor\";i:1019;s:20:\"um-faicon-unlock-alt\";i:1020;s:18:\"um-faicon-bullseye\";i:1021;s:20:\"um-faicon-ellipsis-h\";i:1022;s:20:\"um-faicon-ellipsis-v\";i:1023;s:20:\"um-faicon-rss-square\";i:1024;s:21:\"um-faicon-play-circle\";i:1025;s:16:\"um-faicon-ticket\";i:1026;s:22:\"um-faicon-minus-square\";i:1027;s:24:\"um-faicon-minus-square-o\";i:1028;s:18:\"um-faicon-level-up\";i:1029;s:20:\"um-faicon-level-down\";i:1030;s:22:\"um-faicon-check-square\";i:1031;s:23:\"um-faicon-pencil-square\";i:1032;s:30:\"um-faicon-external-link-square\";i:1033;s:22:\"um-faicon-share-square\";i:1034;s:17:\"um-faicon-compass\";i:1035;s:29:\"um-faicon-caret-square-o-down\";i:1036;s:27:\"um-faicon-caret-square-o-up\";i:1037;s:30:\"um-faicon-caret-square-o-right\";i:1038;s:13:\"um-faicon-eur\";i:1039;s:13:\"um-faicon-gbp\";i:1040;s:13:\"um-faicon-usd\";i:1041;s:13:\"um-faicon-inr\";i:1042;s:13:\"um-faicon-jpy\";i:1043;s:13:\"um-faicon-rub\";i:1044;s:13:\"um-faicon-krw\";i:1045;s:13:\"um-faicon-btc\";i:1046;s:14:\"um-faicon-file\";i:1047;s:19:\"um-faicon-file-text\";i:1048;s:24:\"um-faicon-sort-alpha-asc\";i:1049;s:25:\"um-faicon-sort-alpha-desc\";i:1050;s:25:\"um-faicon-sort-amount-asc\";i:1051;s:26:\"um-faicon-sort-amount-desc\";i:1052;s:26:\"um-faicon-sort-numeric-asc\";i:1053;s:27:\"um-faicon-sort-numeric-desc\";i:1054;s:19:\"um-faicon-thumbs-up\";i:1055;s:21:\"um-faicon-thumbs-down\";i:1056;s:24:\"um-faicon-youtube-square\";i:1057;s:17:\"um-faicon-youtube\";i:1058;s:14:\"um-faicon-xing\";i:1059;s:21:\"um-faicon-xing-square\";i:1060;s:22:\"um-faicon-youtube-play\";i:1061;s:17:\"um-faicon-dropbox\";i:1062;s:24:\"um-faicon-stack-overflow\";i:1063;s:19:\"um-faicon-instagram\";i:1064;s:16:\"um-faicon-flickr\";i:1065;s:13:\"um-faicon-adn\";i:1066;s:19:\"um-faicon-bitbucket\";i:1067;s:26:\"um-faicon-bitbucket-square\";i:1068;s:16:\"um-faicon-tumblr\";i:1069;s:23:\"um-faicon-tumblr-square\";i:1070;s:25:\"um-faicon-long-arrow-down\";i:1071;s:23:\"um-faicon-long-arrow-up\";i:1072;s:25:\"um-faicon-long-arrow-left\";i:1073;s:26:\"um-faicon-long-arrow-right\";i:1074;s:15:\"um-faicon-apple\";i:1075;s:17:\"um-faicon-windows\";i:1076;s:17:\"um-faicon-android\";i:1077;s:15:\"um-faicon-linux\";i:1078;s:18:\"um-faicon-dribbble\";i:1079;s:15:\"um-faicon-skype\";i:1080;s:20:\"um-faicon-foursquare\";i:1081;s:16:\"um-faicon-trello\";i:1082;s:16:\"um-faicon-female\";i:1083;s:14:\"um-faicon-male\";i:1084;s:16:\"um-faicon-gittip\";i:1085;s:15:\"um-faicon-sun-o\";i:1086;s:16:\"um-faicon-moon-o\";i:1087;s:17:\"um-faicon-archive\";i:1088;s:13:\"um-faicon-bug\";i:1089;s:12:\"um-faicon-vk\";i:1090;s:15:\"um-faicon-weibo\";i:1091;s:16:\"um-faicon-renren\";i:1092;s:19:\"um-faicon-pagelines\";i:1093;s:24:\"um-faicon-stack-exchange\";i:1094;s:30:\"um-faicon-arrow-circle-o-right\";i:1095;s:29:\"um-faicon-arrow-circle-o-left\";i:1096;s:29:\"um-faicon-caret-square-o-left\";i:1097;s:22:\"um-faicon-dot-circle-o\";i:1098;s:20:\"um-faicon-wheelchair\";i:1099;s:22:\"um-faicon-vimeo-square\";i:1100;s:13:\"um-faicon-try\";i:1101;s:23:\"um-faicon-plus-square-o\";i:1102;s:23:\"um-faicon-space-shuttle\";i:1103;s:15:\"um-faicon-slack\";i:1104;s:25:\"um-faicon-envelope-square\";i:1105;s:19:\"um-faicon-wordpress\";i:1106;s:16:\"um-faicon-openid\";i:1107;s:20:\"um-faicon-university\";i:1108;s:24:\"um-faicon-graduation-cap\";i:1109;s:15:\"um-faicon-yahoo\";i:1110;s:16:\"um-faicon-google\";i:1111;s:16:\"um-faicon-reddit\";i:1112;s:23:\"um-faicon-reddit-square\";i:1113;s:28:\"um-faicon-stumbleupon-circle\";i:1114;s:21:\"um-faicon-stumbleupon\";i:1115;s:19:\"um-faicon-delicious\";i:1116;s:14:\"um-faicon-digg\";i:1117;s:20:\"um-faicon-pied-piper\";i:1118;s:24:\"um-faicon-pied-piper-alt\";i:1119;s:16:\"um-faicon-drupal\";i:1120;s:16:\"um-faicon-joomla\";i:1121;s:18:\"um-faicon-language\";i:1122;s:13:\"um-faicon-fax\";i:1123;s:18:\"um-faicon-building\";i:1124;s:15:\"um-faicon-child\";i:1125;s:13:\"um-faicon-paw\";i:1126;s:15:\"um-faicon-spoon\";i:1127;s:14:\"um-faicon-cube\";i:1128;s:15:\"um-faicon-cubes\";i:1129;s:17:\"um-faicon-behance\";i:1130;s:24:\"um-faicon-behance-square\";i:1131;s:15:\"um-faicon-steam\";i:1132;s:22:\"um-faicon-steam-square\";i:1133;s:17:\"um-faicon-recycle\";i:1134;s:13:\"um-faicon-car\";i:1135;s:14:\"um-faicon-taxi\";i:1136;s:14:\"um-faicon-tree\";i:1137;s:17:\"um-faicon-spotify\";i:1138;s:20:\"um-faicon-deviantart\";i:1139;s:20:\"um-faicon-soundcloud\";i:1140;s:18:\"um-faicon-database\";i:1141;s:20:\"um-faicon-file-pdf-o\";i:1142;s:21:\"um-faicon-file-word-o\";i:1143;s:22:\"um-faicon-file-excel-o\";i:1144;s:27:\"um-faicon-file-powerpoint-o\";i:1145;s:22:\"um-faicon-file-image-o\";i:1146;s:24:\"um-faicon-file-archive-o\";i:1147;s:22:\"um-faicon-file-audio-o\";i:1148;s:22:\"um-faicon-file-video-o\";i:1149;s:21:\"um-faicon-file-code-o\";i:1150;s:14:\"um-faicon-vine\";i:1151;s:17:\"um-faicon-codepen\";i:1152;s:18:\"um-faicon-jsfiddle\";i:1153;s:19:\"um-faicon-life-ring\";i:1154;s:24:\"um-faicon-circle-o-notch\";i:1155;s:15:\"um-faicon-rebel\";i:1156;s:16:\"um-faicon-empire\";i:1157;s:20:\"um-faicon-git-square\";i:1158;s:13:\"um-faicon-git\";i:1159;s:21:\"um-faicon-hacker-news\";i:1160;s:23:\"um-faicon-tencent-weibo\";i:1161;s:12:\"um-faicon-qq\";i:1162;s:16:\"um-faicon-weixin\";i:1163;s:21:\"um-faicon-paper-plane\";i:1164;s:23:\"um-faicon-paper-plane-o\";i:1165;s:17:\"um-faicon-history\";i:1166;s:21:\"um-faicon-circle-thin\";i:1167;s:16:\"um-faicon-header\";i:1168;s:19:\"um-faicon-paragraph\";i:1169;s:17:\"um-faicon-sliders\";i:1170;s:19:\"um-faicon-share-alt\";i:1171;s:26:\"um-faicon-share-alt-square\";i:1172;s:14:\"um-faicon-bomb\";i:1173;s:18:\"um-faicon-futbol-o\";i:1174;s:13:\"um-faicon-tty\";i:1175;s:20:\"um-faicon-binoculars\";i:1176;s:14:\"um-faicon-plug\";i:1177;s:20:\"um-faicon-slideshare\";i:1178;s:16:\"um-faicon-twitch\";i:1179;s:14:\"um-faicon-yelp\";i:1180;s:21:\"um-faicon-newspaper-o\";i:1181;s:14:\"um-faicon-wifi\";i:1182;s:20:\"um-faicon-calculator\";i:1183;s:16:\"um-faicon-paypal\";i:1184;s:23:\"um-faicon-google-wallet\";i:1185;s:17:\"um-faicon-cc-visa\";i:1186;s:23:\"um-faicon-cc-mastercard\";i:1187;s:21:\"um-faicon-cc-discover\";i:1188;s:17:\"um-faicon-cc-amex\";i:1189;s:19:\"um-faicon-cc-paypal\";i:1190;s:19:\"um-faicon-cc-stripe\";i:1191;s:20:\"um-faicon-bell-slash\";i:1192;s:22:\"um-faicon-bell-slash-o\";i:1193;s:15:\"um-faicon-trash\";i:1194;s:19:\"um-faicon-copyright\";i:1195;s:12:\"um-faicon-at\";i:1196;s:20:\"um-faicon-eyedropper\";i:1197;s:21:\"um-faicon-paint-brush\";i:1198;s:23:\"um-faicon-birthday-cake\";i:1199;s:20:\"um-faicon-area-chart\";i:1200;s:19:\"um-faicon-pie-chart\";i:1201;s:20:\"um-faicon-line-chart\";i:1202;s:16:\"um-faicon-lastfm\";i:1203;s:23:\"um-faicon-lastfm-square\";i:1204;s:20:\"um-faicon-toggle-off\";i:1205;s:19:\"um-faicon-toggle-on\";i:1206;s:17:\"um-faicon-bicycle\";i:1207;s:13:\"um-faicon-bus\";i:1208;s:17:\"um-faicon-ioxhost\";i:1209;s:19:\"um-faicon-angellist\";i:1210;s:12:\"um-faicon-cc\";i:1211;s:13:\"um-faicon-ils\";i:1212;s:18:\"um-faicon-meanpath\";i:1213;s:14:\"um-faicon-spin\";i:1214;s:14:\"um-faicon-spin\";i:1215;s:14:\"um-faicon-spin\";i:1216;s:14:\"um-faicon-spin\";i:1217;s:14:\"um-faicon-spin\";}', 'yes'),
(746, 'um_cached_users_queue', '0', 'no'),
(756, '_transient_orders-transient-version', '1551686689', 'yes'),
(775, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(803, 'product_cat_children', 'a:2:{i:18;a:1:{i:0;i:25;}i:17;a:1:{i:0;i:26;}}', 'yes'),
(811, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(825, 'category_children', 'a:0:{}', 'yes'),
(841, '_transient_is_multi_author', '0', 'yes'),
(842, '_transient_wp_store_categories', '1', 'yes'),
(853, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1554864619;s:7:\"checked\";a:5:{s:10:\"shop-elite\";s:5:\"1.0.4\";s:14:\"twentynineteen\";s:3:\"1.3\";s:15:\"twentyseventeen\";s:3:\"2.1\";s:13:\"twentysixteen\";s:3:\"1.9\";s:8:\"wp-store\";s:6:\"1.0.22\";}s:8:\"response\";a:1:{s:8:\"wp-store\";a:4:{s:5:\"theme\";s:8:\"wp-store\";s:11:\"new_version\";s:6:\"1.0.23\";s:3:\"url\";s:38:\"https://wordpress.org/themes/wp-store/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/wp-store.1.0.23.zip\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_disparoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(854, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1554864617;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:6:\"2.1.13\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.5.5\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:5:\"1.4.0\";}s:8:\"response\";a:2:{s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:6:\"2.1.14\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/woo-gutenberg-products-block\";s:4:\"slug\";s:28:\"woo-gutenberg-products-block\";s:6:\"plugin\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:11:\"new_version\";s:5:\"1.4.0\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/woo-gutenberg-products-block/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/woo-gutenberg-products-block.1.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-256x256.png?rev=1863757\";s:2:\"1x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-128x128.png?rev=1863757\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/woo-gutenberg-products-block/assets/banner-772x250.png?rev=1863757\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(861, '_transient_timeout_external_ip_address_::1', '1555469405', 'no'),
(862, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(864, '_transient_timeout_wc_term_counts', '1557456608', 'no'),
(865, '_transient_wc_term_counts', 'a:4:{i:17;s:1:\"1\";i:18;s:1:\"1\";i:26;s:1:\"1\";i:25;s:1:\"1\";}', 'no'),
(869, '_site_transient_timeout_theme_roots', '1554866418', 'no'),
(870, '_site_transient_theme_roots', 'a:5:{s:10:\"shop-elite\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:8:\"wp-store\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparpostmeta`
--

DROP TABLE IF EXISTS `wp_disparpostmeta`;
CREATE TABLE `wp_disparpostmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparpostmeta`
--

INSERT INTO `wp_disparpostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(7, 7, '_customize_changeset_uuid', '77edeb2e-111a-4a07-9fb6-782d5eae5bad'),
(8, 9, '_menu_item_type', 'post_type'),
(9, 9, '_menu_item_menu_item_parent', '0'),
(10, 9, '_menu_item_object_id', '7'),
(11, 9, '_menu_item_object', 'page'),
(12, 9, '_menu_item_target', ''),
(13, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 9, '_menu_item_xfn', ''),
(15, 9, '_menu_item_url', ''),
(16, 10, '_menu_item_type', 'custom'),
(17, 10, '_menu_item_menu_item_parent', '0'),
(18, 10, '_menu_item_object_id', '10'),
(19, 10, '_menu_item_object', 'custom'),
(20, 10, '_menu_item_target', ''),
(21, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 10, '_menu_item_xfn', ''),
(23, 10, '_menu_item_url', 'http://localhost/dispar'),
(48, 18, '_menu_item_type', 'post_type_archive'),
(49, 18, '_menu_item_menu_item_parent', '0'),
(50, 18, '_menu_item_object_id', '0'),
(51, 18, '_menu_item_object', 'product'),
(52, 18, '_menu_item_target', ''),
(53, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 18, '_menu_item_xfn', ''),
(55, 18, '_menu_item_url', ''),
(60, 20, '_wp_attached_file', '2019/03/Easter-website-bg.jpg'),
(61, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:29:\"2019/03/Easter-website-bg.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"Easter-website-bg-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"Easter-website-bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Easter-website-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Easter-website-bg-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Easter-website-bg-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Easter-website-bg-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"shop-elite-medium\";a:4:{s:4:\"file\";s:29:\"Easter-website-bg-800x560.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"Easter-website-bg-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"Easter-website-bg-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"Easter-website-bg-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"Easter-website-bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 21, '_wp_attached_file', '2019/03/cropped-Easter-website-bg.jpg'),
(63, 21, '_wp_attachment_context', 'custom-header'),
(64, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:37:\"2019/03/cropped-Easter-website-bg.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"cropped-Easter-website-bg-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"shop-elite-medium\";a:4:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-800x560.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-Easter-website-bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 21, '_wp_attachment_custom_header_last_used_shop-elite', '1551671398'),
(66, 21, '_wp_attachment_is_custom_header', 'shop-elite'),
(68, 20, '_wp_attachment_is_custom_background', 'shop-elite'),
(85, 33, '_wc_review_count', '0'),
(86, 33, '_wc_rating_count', 'a:0:{}'),
(87, 33, '_wc_average_rating', '0'),
(88, 33, '_edit_last', '1'),
(89, 33, '_edit_lock', '1552014572:1'),
(90, 34, '_wp_attached_file', '2019/03/download.jpg'),
(91, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2019/03/download.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 33, '_thumbnail_id', '34'),
(93, 33, '_sku', 'BP-1000'),
(94, 33, '_regular_price', '500000'),
(95, 33, '_sale_price', '450000'),
(96, 33, '_sale_price_dates_from', ''),
(97, 33, '_sale_price_dates_to', ''),
(98, 33, 'total_sales', '1'),
(99, 33, '_tax_status', 'taxable'),
(100, 33, '_tax_class', ''),
(101, 33, '_manage_stock', 'yes'),
(102, 33, '_backorders', 'no'),
(103, 33, '_low_stock_amount', ''),
(104, 33, '_sold_individually', 'no'),
(105, 33, '_weight', '0.3'),
(106, 33, '_length', '200'),
(107, 33, '_width', '100'),
(108, 33, '_height', '1'),
(109, 33, '_upsell_ids', 'a:0:{}'),
(110, 33, '_crosssell_ids', 'a:0:{}'),
(111, 33, '_purchase_note', ''),
(112, 33, '_default_attributes', 'a:0:{}'),
(113, 33, '_virtual', 'no'),
(114, 33, '_downloadable', 'no'),
(115, 33, '_product_image_gallery', '34'),
(116, 33, '_download_limit', '-1'),
(117, 33, '_download_expiry', '-1'),
(118, 33, '_stock', '99'),
(119, 33, '_stock_status', 'instock'),
(120, 33, '_product_version', '3.5.5'),
(121, 33, '_price', '450000'),
(122, 33, '_product_attributes', 'a:1:{s:5:\"warna\";a:6:{s:4:\"name\";s:5:\"Warna\";s:5:\"value\";s:14:\"Merah | Coklat\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(124, 36, '_wc_review_count', '0'),
(125, 36, '_wc_rating_count', 'a:0:{}'),
(126, 36, '_wc_average_rating', '0'),
(127, 36, '_edit_last', '1'),
(128, 36, '_edit_lock', '1552014540:1'),
(129, 37, '_wp_attached_file', '2019/03/5f6397895a9d4f457ba28c7d1d3ac529_preview_featured.jpg'),
(130, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:61:\"2019/03/5f6397895a9d4f457ba28c7d1d3ac529_preview_featured.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"shop-elite-medium\";a:4:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-800x533.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:61:\"5f6397895a9d4f457ba28c7d1d3ac529_preview_featured-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(131, 38, '_wp_attached_file', '2019/03/d85f70f0fde7b29190766c9f5b3e09d6_preview_featured.jpg'),
(132, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:532;s:4:\"file\";s:61:\"2019/03/d85f70f0fde7b29190766c9f5b3e09d6_preview_featured.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"shop-elite-medium\";a:4:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-800x532.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:61:\"d85f70f0fde7b29190766c9f5b3e09d6_preview_featured-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 36, '_thumbnail_id', '39'),
(134, 36, '_sku', 'MP-1000'),
(135, 36, '_regular_price', '75000'),
(136, 36, '_sale_price', '50000'),
(137, 36, '_sale_price_dates_from', ''),
(138, 36, '_sale_price_dates_to', ''),
(139, 36, 'total_sales', '0'),
(140, 36, '_tax_status', 'taxable'),
(141, 36, '_tax_class', ''),
(142, 36, '_manage_stock', 'yes'),
(143, 36, '_backorders', 'no'),
(144, 36, '_low_stock_amount', ''),
(145, 36, '_sold_individually', 'no'),
(146, 36, '_weight', '0.5'),
(147, 36, '_length', '20'),
(148, 36, '_width', '10'),
(149, 36, '_height', '15'),
(150, 36, '_upsell_ids', 'a:0:{}'),
(151, 36, '_crosssell_ids', 'a:0:{}'),
(152, 36, '_purchase_note', ''),
(153, 36, '_default_attributes', 'a:0:{}'),
(154, 36, '_virtual', 'no'),
(155, 36, '_downloadable', 'no'),
(156, 36, '_product_image_gallery', '38,37'),
(157, 36, '_download_limit', '-1'),
(158, 36, '_download_expiry', '-1'),
(159, 36, '_stock', '1000'),
(160, 36, '_stock_status', 'instock'),
(161, 36, '_product_version', '3.5.5'),
(162, 36, '_price', '50000'),
(163, 39, '_wp_attached_file', '2019/03/vespa-kayu-360x420.jpg'),
(164, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:420;s:4:\"file\";s:30:\"2019/03/vespa-kayu-360x420.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"vespa-kayu-360x420-300x420.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"vespa-kayu-360x420-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"vespa-kayu-360x420-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"vespa-kayu-360x420-257x300.jpg\";s:5:\"width\";i:257;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"vespa-kayu-360x420-300x420.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"vespa-kayu-360x420-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:30:\"vespa-kayu-360x420-230x350.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 7, '_edit_lock', '1552014744:1'),
(167, 7, '_edit_last', '1'),
(178, 44, '_edit_lock', '1551682240:1'),
(179, 44, '_oembed_9e0812b79185159fe59bf3122db2899f', '{{unknown}}'),
(185, 44, '_edit_last', '1'),
(187, 49, '_menu_item_type', 'post_type'),
(188, 49, '_menu_item_menu_item_parent', '0'),
(189, 49, '_menu_item_object_id', '44'),
(190, 49, '_menu_item_object', 'page'),
(191, 49, '_menu_item_target', ''),
(192, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 49, '_menu_item_xfn', ''),
(194, 49, '_menu_item_url', ''),
(206, 54, '_wp_attached_file', '2019/03/wood-1020x610.jpg'),
(207, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:610;s:4:\"file\";s:25:\"2019/03/wood-1020x610.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"wood-1020x610-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"wood-1020x610-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"wood-1020x610-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"wood-1020x610-300x179.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"wood-1020x610-768x459.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:459;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"shop-elite-medium\";a:4:{s:4:\"file\";s:25:\"wood-1020x610-800x560.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"wood-1020x610-600x359.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:359;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"wood-1020x610-300x457.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"wood-1020x610-600x359.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:359;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"wood-1020x610-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 28, '_edit_lock', '1551677092:1'),
(218, 64, '_edit_lock', '1552015135:1'),
(221, 64, '_edit_last', '1'),
(240, 73, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(241, 73, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"Pariwisata \"[your-subject]\"\";s:6:\"sender\";s:31:\"Pariwisata <fadprgrm@gmail.com>\";s:9:\"recipient\";s:18:\"fadprgrm@gmail.com\";s:4:\"body\";s:172:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Pariwisata (http://localhost/dispar)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(242, 73, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"Pariwisata \"[your-subject]\"\";s:6:\"sender\";s:31:\"Pariwisata <fadprgrm@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:114:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Pariwisata (http://localhost/dispar)\";s:18:\"additional_headers\";s:28:\"Reply-To: fadprgrm@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(243, 73, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(244, 73, '_additional_settings', ''),
(245, 73, '_locale', 'en_US'),
(255, 81, '_menu_item_type', 'post_type'),
(256, 81, '_menu_item_menu_item_parent', '0'),
(257, 81, '_menu_item_object_id', '28'),
(258, 81, '_menu_item_object', 'page'),
(259, 81, '_menu_item_target', ''),
(260, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(261, 81, '_menu_item_xfn', ''),
(262, 81, '_menu_item_url', ''),
(265, 82, '_um_custom_fields', 'a:6:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"5\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(266, 82, '_um_mode', 'register'),
(267, 82, '_um_core', 'register'),
(268, 82, '_um_register_use_custom_settings', '0'),
(269, 83, '_um_custom_fields', 'a:3:{s:8:\"username\";a:13:{s:5:\"title\";s:18:\"Username or E-mail\";s:7:\"metakey\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:18:\"Username or E-mail\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:24:\"unique_username_or_email\";s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(270, 83, '_um_mode', 'login'),
(271, 83, '_um_core', 'login'),
(272, 83, '_um_login_use_custom_settings', '0'),
(273, 84, '_um_custom_fields', 'a:1:{s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(274, 84, '_um_mode', 'profile'),
(275, 84, '_um_core', 'profile'),
(276, 84, '_um_profile_use_custom_settings', '0'),
(277, 85, '_um_template', 'members'),
(278, 85, '_um_mode', 'directory'),
(279, 85, '_um_has_profile_photo', '0'),
(280, 85, '_um_has_cover_photo', '0'),
(281, 85, '_um_show_social', '0'),
(282, 85, '_um_show_userinfo', '0'),
(283, 85, '_um_show_tagline', '0'),
(284, 85, '_um_search', '0'),
(285, 85, '_um_userinfo_animate', '1'),
(286, 85, '_um_sortby', 'user_registered_desc'),
(287, 85, '_um_profile_photo', '1'),
(288, 85, '_um_cover_photos', '1'),
(289, 85, '_um_show_name', '1'),
(290, 85, '_um_search_filters', ''),
(291, 85, '_um_directory_header', '{total_users} Members'),
(292, 85, '_um_directory_header_single', '{total_users} Member'),
(293, 85, '_um_directory_no_users', 'We are sorry. We cannot find any users who match your search criteria.'),
(294, 85, '_um_profiles_per_page', '12'),
(295, 85, '_um_profiles_per_page_mobile', '6'),
(296, 85, '_um_core', 'members'),
(297, 86, '_order_key', 'wc_order_HgrozH89v5736'),
(298, 86, '_customer_user', '1'),
(299, 86, '_payment_method', 'bacs'),
(300, 86, '_payment_method_title', 'Direct bank transfer'),
(301, 86, '_transaction_id', ''),
(302, 86, '_customer_ip_address', '::1'),
(303, 86, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36'),
(304, 86, '_created_via', 'checkout'),
(305, 86, '_date_completed', ''),
(306, 86, '_completed_date', ''),
(307, 86, '_date_paid', '1551686688'),
(308, 86, '_paid_date', '2019-03-04 08:04:48'),
(309, 86, '_cart_hash', '8474bc413ef8ba9443c611b53e69a220'),
(310, 86, '_billing_first_name', 'Talita'),
(311, 86, '_billing_last_name', 'Arabella'),
(312, 86, '_billing_company', 'Rumah Pak Kris'),
(313, 86, '_billing_address_1', 'Jl. Raya Sigaluh Km.10 Gembongan, Sigaluh'),
(314, 86, '_billing_address_2', ''),
(315, 86, '_billing_city', 'Banjarnegara'),
(316, 86, '_billing_state', 'JT'),
(317, 86, '_billing_postcode', '53481'),
(318, 86, '_billing_country', 'ID'),
(319, 86, '_billing_email', 'fadprgrm@gmail.com'),
(320, 86, '_billing_phone', '085200811048'),
(321, 86, '_shipping_first_name', 'Talita'),
(322, 86, '_shipping_last_name', 'Arabella'),
(323, 86, '_shipping_company', 'Rumah Pak Kris'),
(324, 86, '_shipping_address_1', 'Jl. Raya Sigaluh Km.10 Gembongan, Sigaluh'),
(325, 86, '_shipping_address_2', ''),
(326, 86, '_shipping_city', 'Banjarnegara'),
(327, 86, '_shipping_state', 'JT'),
(328, 86, '_shipping_postcode', '53481'),
(329, 86, '_shipping_country', 'ID'),
(330, 86, '_order_currency', 'IDR'),
(331, 86, '_cart_discount', '0'),
(332, 86, '_cart_discount_tax', '0'),
(333, 86, '_order_shipping', '0.00'),
(334, 86, '_order_shipping_tax', '0'),
(335, 86, '_order_tax', '0'),
(336, 86, '_order_total', '450000.00'),
(337, 86, '_order_version', '3.5.5'),
(338, 86, '_prices_include_tax', 'no'),
(339, 86, '_billing_address_index', 'Talita Arabella Rumah Pak Kris Jl. Raya Sigaluh Km.10 Gembongan, Sigaluh  Banjarnegara JT 53481 ID fadprgrm@gmail.com 085200811048'),
(340, 86, '_shipping_address_index', 'Talita Arabella Rumah Pak Kris Jl. Raya Sigaluh Km.10 Gembongan, Sigaluh  Banjarnegara JT 53481 ID'),
(341, 86, '_recorded_sales', 'yes'),
(342, 86, '_recorded_coupon_usage_counts', 'yes'),
(343, 86, '_order_stock_reduced', 'yes'),
(344, 86, '_download_permissions_granted', 'yes'),
(345, 7, 'wp_store_sidebar_layout', 'right-sidebar'),
(348, 64, '_thumbnail_id', '34'),
(351, 64, 'wp_store_sidebar_layout', 'both-sidebar'),
(360, 1, '_edit_lock', '1552015129:1'),
(363, 1, '_thumbnail_id', '20'),
(364, 1, '_edit_last', '1'),
(365, 1, '_pingme', '1'),
(366, 1, '_encloseme', '1'),
(367, 1, 'wp_store_sidebar_layout', 'right-sidebar');

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparposts`
--

DROP TABLE IF EXISTS `wp_disparposts`;
CREATE TABLE `wp_disparposts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparposts`
--

INSERT INTO `wp_disparposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-03-03 04:30:52', '2019-03-03 04:30:52', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-03-08 03:19:13', '2019-03-08 03:19:13', '', 0, 'http://localhost/dispar/?p=1', 0, 'post', '', 1),
(3, 1, '2019-03-03 04:30:52', '2019-03-03 04:30:52', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/dispar.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-03-03 04:30:52', '2019-03-03 04:30:52', '', 0, 'http://localhost/dispar/?page_id=3', 0, 'page', '', 0),
(7, 1, '2019-03-04 03:30:07', '2019-03-04 03:30:07', '<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Batik Fest</p><cite>Mandala Krida, 29 maret 2019</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Local Pride</p><cite>12 Desember 2019 - Mandala Krida</cite></blockquote>\n<!-- /wp:quote -->', 'Event', '', 'publish', 'closed', 'closed', '', 'event', '', '', '2019-03-08 03:14:29', '2019-03-08 03:14:29', '', 0, 'http://localhost/dispar/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-03-04 03:30:07', '2019-03-04 03:30:07', '', 'Event', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-03-04 03:30:07', '2019-03-04 03:30:07', '', 7, 'http://localhost/dispar/2019/03/04/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-03-04 03:30:08', '2019-03-04 03:30:08', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2019-03-04 05:13:41', '2019-03-04 05:13:41', '', 0, 'http://localhost/dispar/2019/03/04/9/', 3, 'nav_menu_item', '', 0),
(10, 1, '2019-03-04 03:30:09', '2019-03-04 03:30:09', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-03-04 03:30:09', '2019-03-04 03:30:09', '', 0, 'http://localhost/dispar/2019/03/04/home/', 1, 'nav_menu_item', '', 0),
(18, 1, '2019-03-04 03:38:20', '2019-03-04 03:38:20', '', 'Shop', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-03-04 05:13:42', '2019-03-04 05:13:42', '', 0, 'http://localhost/dispar/2019/03/04/18/', 2, 'nav_menu_item', '', 0),
(20, 1, '2019-03-04 03:49:35', '2019-03-04 03:49:35', '', 'Easter-website-bg', '', 'inherit', 'open', 'closed', '', 'easter-website-bg', '', '', '2019-03-04 03:49:35', '2019-03-04 03:49:35', '', 0, 'http://localhost/dispar/wp-content/uploads/2019/03/Easter-website-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-03-04 03:49:55', '2019-03-04 03:49:55', '', 'cropped-Easter-website-bg.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-easter-website-bg-jpg', '', '', '2019-03-04 03:49:55', '2019-03-04 03:49:55', '', 0, 'http://localhost/dispar/wp-content/uploads/2019/03/cropped-Easter-website-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-03-04 04:04:22', '2019-03-04 04:04:22', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-03-04 04:04:22', '2019-03-04 04:04:22', '', 0, 'http://localhost/dispar/shop/', 0, 'page', '', 0),
(26, 1, '2019-03-04 04:04:23', '2019-03-04 04:04:23', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-03-04 04:04:23', '2019-03-04 04:04:23', '', 0, 'http://localhost/dispar/cart/', 0, 'page', '', 0),
(27, 1, '2019-03-04 04:04:23', '2019-03-04 04:04:23', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-03-04 04:04:23', '2019-03-04 04:04:23', '', 0, 'http://localhost/dispar/checkout/', 0, 'page', '', 0),
(28, 1, '2019-03-04 04:04:23', '2019-03-04 04:04:23', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-03-04 04:04:23', '2019-03-04 04:04:23', '', 0, 'http://localhost/dispar/my-account/', 0, 'page', '', 0),
(33, 1, '2019-03-04 04:22:54', '2019-03-04 04:22:54', 'Batik Parang merupakan salah satu motif batik yang paling tua di Indonesia. Parang berasal dari kata Pereng yang berarti lereng. Perengan menggambarkan sebuah garis menurun dari tinggi ke rendah secara diagonal. Susunan motif S jalin-menjalin tidak terputus melambangkan kesinambungan', 'Batik Parang', 'Batik Parang merupakan salah satu motif batik yang paling tua di Indonesia. Parang berasal dari kata Pereng yang berarti lereng. Perengan menggambarkan sebuah garis menurun dari tinggi ke rendah secara diagonal. Susunan motif S jalin-menjalin tidak terputus melambangkan kesinambungan', 'publish', 'open', 'closed', '', 'batik-parang', '', '', '2019-03-08 03:11:47', '2019-03-08 03:11:47', '', 0, 'http://localhost/dispar/?post_type=product&#038;p=33', 0, 'product', '', 0),
(34, 1, '2019-03-04 04:21:36', '2019-03-04 04:21:36', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-03-04 04:21:36', '2019-03-04 04:21:36', '', 33, 'http://localhost/dispar/wp-content/uploads/2019/03/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-03-04 04:34:31', '2019-03-04 04:34:31', 'Vespa Kayu', 'Vespa Kayu', '', 'publish', 'open', 'closed', '', 'vespa-kayu', '', '', '2019-03-08 03:10:43', '2019-03-08 03:10:43', '', 0, 'http://localhost/dispar/?post_type=product&#038;p=36', 0, 'product', '', 0),
(37, 1, '2019-03-04 04:33:57', '2019-03-04 04:33:57', '', '5f6397895a9d4f457ba28c7d1d3ac529_preview_featured', '', 'inherit', 'open', 'closed', '', '5f6397895a9d4f457ba28c7d1d3ac529_preview_featured', '', '', '2019-03-04 04:33:57', '2019-03-04 04:33:57', '', 36, 'http://localhost/dispar/wp-content/uploads/2019/03/5f6397895a9d4f457ba28c7d1d3ac529_preview_featured.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-03-04 04:34:10', '2019-03-04 04:34:10', '', 'd85f70f0fde7b29190766c9f5b3e09d6_preview_featured', '', 'inherit', 'open', 'closed', '', 'd85f70f0fde7b29190766c9f5b3e09d6_preview_featured', '', '', '2019-03-04 04:34:10', '2019-03-04 04:34:10', '', 36, 'http://localhost/dispar/wp-content/uploads/2019/03/d85f70f0fde7b29190766c9f5b3e09d6_preview_featured.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-03-04 04:35:23', '2019-03-04 04:35:23', '', 'vespa-kayu-360x420', '', 'inherit', 'open', 'closed', '', 'vespa-kayu-360x420', '', '', '2019-03-04 04:35:23', '2019-03-04 04:35:23', '', 36, 'http://localhost/dispar/wp-content/uploads/2019/03/vespa-kayu-360x420.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-03-04 04:43:36', '2019-03-04 04:43:36', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"dropCap\":true,\"customTextColor\":\"#ffffff\",\"backgroundColor\":\"luminous-vivid-orange\"} -->\n<p style=\"color:#ffffff\" class=\"has-text-color has-background has-drop-cap has-luminous-vivid-orange-background-color\">12 Desember 2019 - Localpride - Mandala Krida</p>\n<!-- /wp:paragraph -->', 'Event', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-03-04 04:43:36', '2019-03-04 04:43:36', '', 7, 'http://localhost/dispar/2019/03/04/7-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-03-04 04:52:51', '2019-03-04 04:52:51', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Local Pride</p><cite>12 Desember 2019 - Mandala Krida</cite></blockquote>\n<!-- /wp:quote -->', 'Event', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-03-04 04:52:51', '2019-03-04 04:52:51', '', 7, 'http://localhost/dispar/2019/03/04/7-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-03-04 04:55:22', '2019-03-04 04:55:22', '<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Batik Fest</p><cite>Mandala Krida, 29 maret 2019</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/dispar/wp-content/uploads/2019/03/Easter-website-bg-1024x576.jpg\" alt=\"\" class=\"wp-image-20\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">Meet the sunset 13 July 2019</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Local Pride</p><cite>12 Desember 2019 - Mandala Krida</cite></blockquote>\n<!-- /wp:quote -->', 'Event', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-03-04 04:55:22', '2019-03-04 04:55:22', '', 7, 'http://localhost/dispar/2019/03/04/7-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-03-04 05:12:41', '2019-03-04 05:12:41', '<!-- wp:paragraph -->\n<p> <br>Dunia terus bergerak, meninggalkan mereka yang tidak sepakat. Kami percaya bahwa perubahan dalam bisnis adalah satu hal yang niscaya. Dispar hadir untuk menjadi tempat bertanya seputar ini dan harus ada jawabnya. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact Us</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"73\" title=\"Contact Us\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-03-04 06:51:54', '2019-03-04 06:51:54', '', 0, 'http://localhost/dispar/?page_id=44', 0, 'page', '', 0),
(47, 1, '2019-03-04 05:12:41', '2019-03-04 05:12:41', '<!-- wp:paragraph -->\n<p>Abous Us</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact</strong><br></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-04 05:12:41', '2019-03-04 05:12:41', '', 44, 'http://localhost/dispar/2019/03/04/44-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-03-04 05:13:42', '2019-03-04 05:13:42', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2019-03-04 05:13:42', '2019-03-04 05:13:42', '', 0, 'http://localhost/dispar/2019/03/04/49/', 4, 'nav_menu_item', '', 0),
(54, 1, '2019-03-04 05:24:20', '2019-03-04 05:24:20', '', 'wood-1020x610', '', 'inherit', 'open', 'closed', '', 'wood-1020x610', '', '', '2019-03-04 05:24:20', '2019-03-04 05:24:20', '', 0, 'http://localhost/dispar/wp-content/uploads/2019/03/wood-1020x610.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-03-04 05:37:36', '2019-03-04 05:37:36', '<!-- wp:paragraph -->\n<p> <br>Dunia terus bergerak, meninggalkan mereka yang tidak sepakat. Kami percaya bahwa perubahan dalam bisnis adalah satu hal yang niscaya. Karinov.co.id hadir untuk menjadi tempat bertanya seputar ini dan harus ada jawabnya. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p>&#128231;  : dispar@gmail.com </p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Instagram : dispar </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-04 05:37:36', '2019-03-04 05:37:36', '', 44, 'http://localhost/dispar/2019/03/04/44-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-03-04 05:38:26', '2019-03-04 05:38:26', '<!-- wp:paragraph -->\n<p> <br>Dunia terus bergerak, meninggalkan mereka yang tidak sepakat. Kami percaya bahwa perubahan dalam bisnis adalah satu hal yang niscaya. Karinov.co.id hadir untuk menjadi tempat bertanya seputar ini dan harus ada jawabnya. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p>&#9993;  : dispar@gmail.com </p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Instagram : dispar </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-04 05:38:26', '2019-03-04 05:38:26', '', 44, 'http://localhost/dispar/2019/03/04/44-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-03-04 05:40:10', '2019-03-04 05:40:10', '<!-- wp:paragraph -->\n<p> <br>Dunia terus bergerak, meninggalkan mereka yang tidak sepakat. Kami percaya bahwa perubahan dalam bisnis adalah satu hal yang niscaya. Karinov.co.id hadir untuk menjadi tempat bertanya seputar ini dan harus ada jawabnya. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p>&#9993;  : dispar@gmail.com | &#9743; : 0274000111</p>\n<!-- /wp:html -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-04 05:40:10', '2019-03-04 05:40:10', '', 44, 'http://localhost/dispar/2019/03/04/44-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-03-04 05:42:12', '2019-03-04 05:42:12', '<!-- wp:paragraph -->\n<p> <br>Dunia terus bergerak, meninggalkan mereka yang tidak sepakat. Kami percaya bahwa perubahan dalam bisnis adalah satu hal yang niscaya. Dispar hadir untuk menjadi tempat bertanya seputar ini dan harus ada jawabnya. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p>&#9993;  : dispar@gmail.com | &#9743; : 0274000111</p>\n<!-- /wp:html -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-04 05:42:12', '2019-03-04 05:42:12', '', 44, 'http://localhost/dispar/2019/03/04/44-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-03-04 05:55:20', '2019-03-04 05:55:20', '<!-- wp:paragraph -->\n<p>Batik adalah kerajinan yang memiliki nilai seni tinggi dan telah menjadi bagian dari budaya Indonesia (khususnya Jawa) sejak lama. Perempuan-perempuan Jawa pada masa lampau menjadikan keterampilan mereka dalam membatik sebagai mata pencaharian, sehingga pada masa lalu pekerjaan membatik adalah pekerjaan eksklusif perempuan sampai ditemukannya \"Batik Cap\" yang memungkinkan masuknya laki-laki ke dalam bidang ini. Ada beberapa pengecualian bagi fenomena ini, yaitu batik pesisir yang memiliki garis maskulin seperti yang bisa dilihat pada corak \"Mega Mendung\", di mana di beberapa daerah pesisir pekerjaan membatik adalah lazim bagi kaum lelaki.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tradisi membatik pada mulanya merupakan tradisi yang turun temurun, sehingga kadang kala suatu motif dapat dikenali berasal dari batik keluarga tertentu. Beberapa motif batik dapat menunjukkan status seseorang. Bahkan sampai saat ini, beberapa motif batik tadisional hanya dipakai oleh keluarga keraton Yogyakarta dan Surakarta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Batik Cirebon bermotif mahluk laut<br>\nBatik merupakan warisan nenek moyang Indonesia ( Jawa ) yang sampai saat ini masih ada. Batik juga pertama kali diperkenalkan kepada dunia oleh Presiden Soeharto, yang pada waktu itu memakai batik pada Konferensi PBB.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Batik dipakai untuk membungkus seluruh tubuh oleh penari Tari Bedhoyo Ketawang di keraton Jawa.<br>\nCorak batik<br>\nRagam corak dan warna Batik dipengaruhi oleh berbagai pengaruh asing. Awalnya, batik memiliki ragam corak dan warna yang terbatas, dan beberapa corak hanya boleh dipakai oleh kalangan tertentu. Namun batik pesisir menyerap berbagai pengaruh luar, seperti para pedagang asing dan juga pada akhirnya, para penjajah. Warna-warna cerah seperti merah dipopulerkan oleh Tionghoa, yang juga memopulerkan corak phoenix. Bangsa penjajah Eropa juga mengambil minat kepada batik, dan hasilnya adalah corak bebungaan yang sebelumnya tidak dikenal (seperti bunga tulip) dan juga benda-benda yang dibawa oleh penjajah (gedung atau kereta kuda), termasuk juga warna-warna kesukaan mereka seperti warna biru. Batik tradisonal tetap mempertahankan coraknya, dan masih dipakai dalam upacara-upacara adat, karena biasanya masing-masing corak memiliki perlambangan masing-masing.</p>\n<!-- /wp:paragraph -->', 'Batik', '', 'publish', 'open', 'open', '', 'batik', '', '', '2019-03-08 03:18:04', '2019-03-08 03:18:04', '', 0, 'http://localhost/dispar/?p=64', 0, 'post', '', 0),
(65, 1, '2019-03-04 05:55:20', '2019-03-04 05:55:20', '<!-- wp:paragraph -->\n<p>Batik adalah kerajinan yang memiliki nilai seni tinggi dan telah menjadi bagian dari budaya Indonesia (khususnya Jawa) sejak lama. Perempuan-perempuan Jawa pada masa lampau menjadikan keterampilan mereka dalam membatik sebagai mata pencaharian, sehingga pada masa lalu pekerjaan membatik adalah pekerjaan eksklusif perempuan sampai ditemukannya \"Batik Cap\" yang memungkinkan masuknya laki-laki ke dalam bidang ini. Ada beberapa pengecualian bagi fenomena ini, yaitu batik pesisir yang memiliki garis maskulin seperti yang bisa dilihat pada corak \"Mega Mendung\", di mana di beberapa daerah pesisir pekerjaan membatik adalah lazim bagi kaum lelaki.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tradisi membatik pada mulanya merupakan tradisi yang turun temurun, sehingga kadang kala suatu motif dapat dikenali berasal dari batik keluarga tertentu. Beberapa motif batik dapat menunjukkan status seseorang. Bahkan sampai saat ini, beberapa motif batik tadisional hanya dipakai oleh keluarga keraton Yogyakarta dan Surakarta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Batik Cirebon bermotif mahluk laut<br>\nBatik merupakan warisan nenek moyang Indonesia ( Jawa ) yang sampai saat ini masih ada. Batik juga pertama kali diperkenalkan kepada dunia oleh Presiden Soeharto, yang pada waktu itu memakai batik pada Konferensi PBB.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Batik dipakai untuk membungkus seluruh tubuh oleh penari Tari Bedhoyo Ketawang di keraton Jawa.<br>\nCorak batik<br>\nRagam corak dan warna Batik dipengaruhi oleh berbagai pengaruh asing. Awalnya, batik memiliki ragam corak dan warna yang terbatas, dan beberapa corak hanya boleh dipakai oleh kalangan tertentu. Namun batik pesisir menyerap berbagai pengaruh luar, seperti para pedagang asing dan juga pada akhirnya, para penjajah. Warna-warna cerah seperti merah dipopulerkan oleh Tionghoa, yang juga memopulerkan corak phoenix. Bangsa penjajah Eropa juga mengambil minat kepada batik, dan hasilnya adalah corak bebungaan yang sebelumnya tidak dikenal (seperti bunga tulip) dan juga benda-benda yang dibawa oleh penjajah (gedung atau kereta kuda), termasuk juga warna-warna kesukaan mereka seperti warna biru. Batik tradisonal tetap mempertahankan coraknya, dan masih dipakai dalam upacara-upacara adat, karena biasanya masing-masing corak memiliki perlambangan masing-masing.</p>\n<!-- /wp:paragraph -->', 'Batik', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-04 05:55:20', '2019-03-04 05:55:20', '', 64, 'http://localhost/dispar/2019/03/04/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-03-04 05:57:18', '2019-03-04 05:57:18', '<!-- wp:image {\"id\":34} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/dispar/wp-content/uploads/2019/03/download.jpg\" alt=\"\" class=\"wp-image-34\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Batik adalah kerajinan yang memiliki nilai seni tinggi dan telah menjadi bagian dari budaya Indonesia (khususnya Jawa) sejak lama. Perempuan-perempuan Jawa pada masa lampau menjadikan keterampilan mereka dalam membatik sebagai mata pencaharian, sehingga pada masa lalu pekerjaan membatik adalah pekerjaan eksklusif perempuan sampai ditemukannya \"Batik Cap\" yang memungkinkan masuknya laki-laki ke dalam bidang ini. Ada beberapa pengecualian bagi fenomena ini, yaitu batik pesisir yang memiliki garis maskulin seperti yang bisa dilihat pada corak \"Mega Mendung\", di mana di beberapa daerah pesisir pekerjaan membatik adalah lazim bagi kaum lelaki.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tradisi membatik pada mulanya merupakan tradisi yang turun temurun, sehingga kadang kala suatu motif dapat dikenali berasal dari batik keluarga tertentu. Beberapa motif batik dapat menunjukkan status seseorang. Bahkan sampai saat ini, beberapa motif batik tadisional hanya dipakai oleh keluarga keraton Yogyakarta dan Surakarta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Batik Cirebon bermotif mahluk laut<br>\nBatik merupakan warisan nenek moyang Indonesia ( Jawa ) yang sampai saat ini masih ada. Batik juga pertama kali diperkenalkan kepada dunia oleh Presiden Soeharto, yang pada waktu itu memakai batik pada Konferensi PBB.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Batik dipakai untuk membungkus seluruh tubuh oleh penari Tari Bedhoyo Ketawang di keraton Jawa.<br>\nCorak batik<br>\nRagam corak dan warna Batik dipengaruhi oleh berbagai pengaruh asing. Awalnya, batik memiliki ragam corak dan warna yang terbatas, dan beberapa corak hanya boleh dipakai oleh kalangan tertentu. Namun batik pesisir menyerap berbagai pengaruh luar, seperti para pedagang asing dan juga pada akhirnya, para penjajah. Warna-warna cerah seperti merah dipopulerkan oleh Tionghoa, yang juga memopulerkan corak phoenix. Bangsa penjajah Eropa juga mengambil minat kepada batik, dan hasilnya adalah corak bebungaan yang sebelumnya tidak dikenal (seperti bunga tulip) dan juga benda-benda yang dibawa oleh penjajah (gedung atau kereta kuda), termasuk juga warna-warna kesukaan mereka seperti warna biru. Batik tradisonal tetap mempertahankan coraknya, dan masih dipakai dalam upacara-upacara adat, karena biasanya masing-masing corak memiliki perlambangan masing-masing.</p>\n<!-- /wp:paragraph -->', 'Batik', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-04 05:57:18', '2019-03-04 05:57:18', '', 64, 'http://localhost/dispar/2019/03/04/64-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-03-04 06:46:31', '2019-03-04 06:46:31', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nPariwisata \"[your-subject]\"\nPariwisata <fadprgrm@gmail.com>\nfadprgrm@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Pariwisata (http://localhost/dispar)\nReply-To: [your-email]\n\n\n\n\nPariwisata \"[your-subject]\"\nPariwisata <fadprgrm@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Pariwisata (http://localhost/dispar)\nReply-To: fadprgrm@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-03-04 06:49:37', '2019-03-04 06:49:37', '', 0, 'http://localhost/dispar/?post_type=wpcf7_contact_form&#038;p=73', 0, 'wpcf7_contact_form', '', 0),
(74, 1, '2019-03-04 06:51:09', '2019-03-04 06:51:09', '<!-- wp:paragraph -->\n<p> <br>Dunia terus bergerak, meninggalkan mereka yang tidak sepakat. Kami percaya bahwa perubahan dalam bisnis adalah satu hal yang niscaya. Dispar hadir untuk menjadi tempat bertanya seputar ini dan harus ada jawabnya. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"73\" title=\"Contact Us\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:html -->\n<p>✉  : dispar@gmail.com | ☏ : 0274000111</p>\n<!-- /wp:html -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-04 06:51:09', '2019-03-04 06:51:09', '', 44, 'http://localhost/dispar/2019/03/04/44-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-03-04 06:51:30', '2019-03-04 06:51:30', '<!-- wp:paragraph -->\n<p> <br>Dunia terus bergerak, meninggalkan mereka yang tidak sepakat. Kami percaya bahwa perubahan dalam bisnis adalah satu hal yang niscaya. Dispar hadir untuk menjadi tempat bertanya seputar ini dan harus ada jawabnya. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact Us</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"73\" title=\"Contact Us\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:html -->\n<p>✉  : dispar@gmail.com | ☏ : 0274000111</p>\n<!-- /wp:html -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-04 06:51:30', '2019-03-04 06:51:30', '', 44, 'http://localhost/dispar/2019/03/04/44-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-03-04 06:51:54', '2019-03-04 06:51:54', '<!-- wp:paragraph -->\n<p> <br>Dunia terus bergerak, meninggalkan mereka yang tidak sepakat. Kami percaya bahwa perubahan dalam bisnis adalah satu hal yang niscaya. Dispar hadir untuk menjadi tempat bertanya seputar ini dan harus ada jawabnya. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"huge\"} -->\n<p style=\"text-align:left\" class=\"has-huge-font-size\"><strong>Contact Us</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"73\" title=\"Contact Us\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-04 06:51:54', '2019-03-04 06:51:54', '', 44, 'http://localhost/dispar/2019/03/04/44-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-03-04 07:01:57', '2019-03-04 07:01:57', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2019-03-04 07:01:57', '2019-03-04 07:01:57', '', 0, 'http://localhost/dispar/2019/03/04/81/', 5, 'nav_menu_item', '', 0),
(82, 1, '2019-03-04 07:14:54', '2019-03-04 07:14:54', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2019-03-04 07:14:54', '2019-03-04 07:14:54', '', 0, 'http://localhost/dispar/um_form/default-registration/', 0, 'um_form', '', 0),
(83, 1, '2019-03-04 07:14:55', '2019-03-04 07:14:55', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2019-03-04 07:14:55', '2019-03-04 07:14:55', '', 0, 'http://localhost/dispar/um_form/default-login/', 0, 'um_form', '', 0),
(84, 1, '2019-03-04 07:14:55', '2019-03-04 07:14:55', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2019-03-04 07:14:55', '2019-03-04 07:14:55', '', 0, 'http://localhost/dispar/um_form/default-profile/', 0, 'um_form', '', 0),
(85, 1, '2019-03-04 07:14:56', '2019-03-04 07:14:56', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2019-03-04 07:14:56', '2019-03-04 07:14:56', '', 0, 'http://localhost/dispar/um_directory/members/', 0, 'um_directory', '', 0),
(86, 1, '2019-03-04 07:47:21', '2019-03-04 07:47:21', '', 'Order &ndash; March 4, 2019 @ 07:47 AM', '', 'wc-processing', 'open', 'closed', 'wc_order_KRHuqT92mqtbD', 'order-mar-04-2019-0747-am', '', '', '2019-03-04 08:04:48', '2019-03-04 08:04:48', '', 0, 'http://localhost/dispar/?post_type=shop_order&#038;p=86', 0, 'shop_order', '', 3),
(87, 1, '2019-03-08 03:14:27', '2019-03-08 03:14:27', '<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Batik Fest</p><cite>Mandala Krida, 29 maret 2019</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Local Pride</p><cite>12 Desember 2019 - Mandala Krida</cite></blockquote>\n<!-- /wp:quote -->', 'Event', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-03-08 03:14:27', '2019-03-08 03:14:27', '', 7, 'http://localhost/dispar/2019/03/08/7-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-03-08 03:18:01', '2019-03-08 03:18:01', '<!-- wp:paragraph -->\n<p>Batik adalah kerajinan yang memiliki nilai seni tinggi dan telah menjadi bagian dari budaya Indonesia (khususnya Jawa) sejak lama. Perempuan-perempuan Jawa pada masa lampau menjadikan keterampilan mereka dalam membatik sebagai mata pencaharian, sehingga pada masa lalu pekerjaan membatik adalah pekerjaan eksklusif perempuan sampai ditemukannya \"Batik Cap\" yang memungkinkan masuknya laki-laki ke dalam bidang ini. Ada beberapa pengecualian bagi fenomena ini, yaitu batik pesisir yang memiliki garis maskulin seperti yang bisa dilihat pada corak \"Mega Mendung\", di mana di beberapa daerah pesisir pekerjaan membatik adalah lazim bagi kaum lelaki.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tradisi membatik pada mulanya merupakan tradisi yang turun temurun, sehingga kadang kala suatu motif dapat dikenali berasal dari batik keluarga tertentu. Beberapa motif batik dapat menunjukkan status seseorang. Bahkan sampai saat ini, beberapa motif batik tadisional hanya dipakai oleh keluarga keraton Yogyakarta dan Surakarta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Batik Cirebon bermotif mahluk laut<br>\nBatik merupakan warisan nenek moyang Indonesia ( Jawa ) yang sampai saat ini masih ada. Batik juga pertama kali diperkenalkan kepada dunia oleh Presiden Soeharto, yang pada waktu itu memakai batik pada Konferensi PBB.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Batik dipakai untuk membungkus seluruh tubuh oleh penari Tari Bedhoyo Ketawang di keraton Jawa.<br>\nCorak batik<br>\nRagam corak dan warna Batik dipengaruhi oleh berbagai pengaruh asing. Awalnya, batik memiliki ragam corak dan warna yang terbatas, dan beberapa corak hanya boleh dipakai oleh kalangan tertentu. Namun batik pesisir menyerap berbagai pengaruh luar, seperti para pedagang asing dan juga pada akhirnya, para penjajah. Warna-warna cerah seperti merah dipopulerkan oleh Tionghoa, yang juga memopulerkan corak phoenix. Bangsa penjajah Eropa juga mengambil minat kepada batik, dan hasilnya adalah corak bebungaan yang sebelumnya tidak dikenal (seperti bunga tulip) dan juga benda-benda yang dibawa oleh penjajah (gedung atau kereta kuda), termasuk juga warna-warna kesukaan mereka seperti warna biru. Batik tradisonal tetap mempertahankan coraknya, dan masih dipakai dalam upacara-upacara adat, karena biasanya masing-masing corak memiliki perlambangan masing-masing.</p>\n<!-- /wp:paragraph -->', 'Batik', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-03-08 03:18:01', '2019-03-08 03:18:01', '', 64, 'http://localhost/dispar/2019/03/08/64-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-03-08 03:19:09', '2019-03-08 03:19:09', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-03-08 03:19:09', '2019-03-08 03:19:09', '', 1, 'http://localhost/dispar/2019/03/08/1-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparqueue`
--

DROP TABLE IF EXISTS `wp_disparqueue`;
CREATE TABLE `wp_disparqueue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_dispartermmeta`
--

DROP TABLE IF EXISTS `wp_dispartermmeta`;
CREATE TABLE `wp_dispartermmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_dispartermmeta`
--

INSERT INTO `wp_dispartermmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '2'),
(2, 17, 'display_type', ''),
(3, 17, 'thumbnail_id', '34'),
(4, 15, 'display_type', ''),
(5, 15, 'thumbnail_id', '20'),
(6, 18, 'order', '3'),
(7, 18, 'display_type', ''),
(8, 18, 'thumbnail_id', '54'),
(9, 15, 'order', '1'),
(10, 17, 'product_count_product_cat', '1'),
(11, 15, 'product_count_product_cat', '2'),
(12, 19, 'product_count_product_tag', '1'),
(13, 20, 'product_count_product_tag', '1'),
(14, 18, 'product_count_product_cat', '1'),
(15, 21, 'product_count_product_tag', '1'),
(16, 22, 'product_count_product_tag', '1'),
(17, 23, 'product_count_product_tag', '1'),
(18, 24, 'product_count_product_tag', '1'),
(19, 25, 'order', '0'),
(20, 25, 'display_type', 'subcategories'),
(21, 25, 'thumbnail_id', '0'),
(22, 26, 'order', '0'),
(23, 26, 'display_type', 'subcategories'),
(24, 26, 'thumbnail_id', '0'),
(25, 25, 'product_count_product_cat', '1'),
(26, 26, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparterms`
--

DROP TABLE IF EXISTS `wp_disparterms`;
CREATE TABLE `wp_disparterms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparterms`
--

INSERT INTO `wp_disparterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Category', 'category', 0),
(16, 'Home', 'home', 0),
(17, 'Batik', 'batik', 0),
(18, 'Kayu', 'kayu', 0),
(19, 'Batik', 'batik', 0),
(20, 'Batik Parang', 'batikparang', 0),
(21, 'Kayu', 'kayu', 0),
(22, 'Kayu Jati', 'kayujati', 0),
(23, 'Miniatur', 'miniatur', 0),
(24, 'Vespa', 'vespa', 0),
(25, 'UD. Kayu Makmurindo', 'kayu-makmur', 0),
(26, 'UD. Batikindo', 'batikindo', 0),
(27, 'Sejarah', 'sejarah', 0),
(28, 'batik', 'batik', 0),
(29, 'sejarahbatik', 'sejarahbatik', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparterm_relationships`
--

DROP TABLE IF EXISTS `wp_disparterm_relationships`;
CREATE TABLE `wp_disparterm_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparterm_relationships`
--

INSERT INTO `wp_disparterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 27, 0),
(9, 16, 0),
(10, 16, 0),
(18, 16, 0),
(33, 2, 0),
(33, 17, 0),
(33, 19, 0),
(33, 20, 0),
(33, 26, 0),
(36, 2, 0),
(36, 18, 0),
(36, 21, 0),
(36, 22, 0),
(36, 23, 0),
(36, 24, 0),
(36, 25, 0),
(49, 16, 0),
(64, 27, 0),
(64, 28, 0),
(64, 29, 0),
(81, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparterm_taxonomy`
--

DROP TABLE IF EXISTS `wp_disparterm_taxonomy`;
CREATE TABLE `wp_disparterm_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparterm_taxonomy`
--

INSERT INTO `wp_disparterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 5),
(17, 17, 'product_cat', 'Batik', 0, 1),
(18, 18, 'product_cat', '', 0, 1),
(19, 19, 'product_tag', 'batik', 0, 1),
(20, 20, 'product_tag', 'Batik Parang', 0, 1),
(21, 21, 'product_tag', 'kayu', 0, 1),
(22, 22, 'product_tag', 'Kayu Jati', 0, 1),
(23, 23, 'product_tag', '', 0, 1),
(24, 24, 'product_tag', '', 0, 1),
(25, 25, 'product_cat', 'UD. Kayu Makmurindo', 18, 1),
(26, 26, 'product_cat', 'UD. Batikindo', 17, 1),
(27, 27, 'category', '', 0, 2),
(28, 28, 'post_tag', '', 0, 1),
(29, 29, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparusermeta`
--

DROP TABLE IF EXISTS `wp_disparusermeta`;
CREATE TABLE `wp_disparusermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparusermeta`
--

INSERT INTO `wp_disparusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin@admin.com'),
(2, 1, 'first_name', 'Talita'),
(3, 1, 'last_name', 'Arabella'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_disparcapabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_disparuser_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dispardashboard_quick_press_last_post_id', '4'),
(19, 1, 'wc_last_active', '1552003200'),
(20, 1, 'wp_disparuser-settings', 'libraryContent=browse'),
(21, 1, 'wp_disparuser-settings-time', '1551672134'),
(22, 1, 'dismissed_no_secure_connection_notice', '1'),
(23, 1, 'closedpostboxes_product', 'a:0:{}'),
(24, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(27, 1, 'closedpostboxes_page', 'a:1:{i:0;s:19:\"shop-elite-meta-box\";}'),
(28, 1, 'metaboxhidden_page', 'a:0:{}'),
(29, 2, 'nickname', 'bgst'),
(30, 2, 'first_name', ''),
(31, 2, 'last_name', ''),
(32, 2, 'description', ''),
(33, 2, 'rich_editing', 'true'),
(34, 2, 'syntax_highlighting', 'true'),
(35, 2, 'comment_shortcuts', 'false'),
(36, 2, 'admin_color', 'fresh'),
(37, 2, 'use_ssl', '0'),
(38, 2, 'show_admin_bar_front', 'true'),
(39, 2, 'locale', ''),
(40, 2, 'wp_disparcapabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(41, 2, 'wp_disparuser_level', '0'),
(43, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(44, 2, 'wc_last_active', '1551657600'),
(45, 3, 'nickname', 'seventeenpls'),
(46, 3, 'first_name', ''),
(47, 3, 'last_name', ''),
(48, 3, 'description', ''),
(49, 3, 'rich_editing', 'true'),
(50, 3, 'syntax_highlighting', 'true'),
(51, 3, 'comment_shortcuts', 'false'),
(52, 3, 'admin_color', 'fresh'),
(53, 3, 'use_ssl', '0'),
(54, 3, 'show_admin_bar_front', 'true'),
(55, 3, 'locale', ''),
(56, 3, 'wp_disparcapabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(57, 3, 'wp_disparuser_level', '0'),
(59, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(60, 3, 'wc_last_active', '1551657600'),
(61, 1, 'session_tokens', 'a:2:{s:64:\"ea39fea9a199ea989255399c1cad9e69d9acedbe01030cac1fa7652318b5c621\";a:4:{s:10:\"expiration\";i:1552187113;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\";s:5:\"login\";i:1552014313;}s:64:\"f61b7fcb705d648c649ac8a8df6bdb442322c21db6e4c97025b6f67996b492ce\";a:4:{s:10:\"expiration\";i:1552212507;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\";s:5:\"login\";i:1552039707;}}'),
(63, 1, 'account_status', 'approved'),
(64, 2, 'account_status', 'approved'),
(65, 3, 'account_status', 'approved'),
(66, 1, 'last_update', '1552014345'),
(67, 1, 'billing_first_name', 'Talita'),
(68, 1, 'billing_last_name', 'Arabella'),
(69, 1, 'billing_company', 'Rumah Pak Kris'),
(70, 1, 'billing_address_1', 'Jl. Raya Sigaluh Km.10 Gembongan, Sigaluh'),
(71, 1, 'billing_city', 'Banjarnegara'),
(72, 1, 'billing_state', 'JT'),
(73, 1, 'billing_postcode', '53481'),
(74, 1, 'billing_country', 'ID'),
(75, 1, 'billing_email', 'fadprgrm@gmail.com'),
(76, 1, 'billing_phone', '085200811048'),
(77, 1, 'shipping_first_name', 'Talita'),
(78, 1, 'shipping_last_name', 'Arabella'),
(79, 1, 'shipping_company', 'Rumah Pak Kris'),
(80, 1, 'shipping_address_1', 'Jl. Raya Sigaluh Km.10 Gembongan, Sigaluh'),
(81, 1, 'shipping_city', 'Banjarnegara'),
(82, 1, 'shipping_state', 'JT'),
(83, 1, 'shipping_postcode', '53481'),
(84, 1, 'shipping_country', 'ID'),
(85, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}'),
(87, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparusers`
--

DROP TABLE IF EXISTS `wp_disparusers`;
CREATE TABLE `wp_disparusers` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparusers`
--

INSERT INTO `wp_disparusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin@admin.com', '$P$BeeUuNtQ3p3sUyF4CvW6y4jlZDizOH1', 'adminadmin-com', 'fadprgrm@gmail.com', '', '2019-03-03 04:30:49', '', 0, 'talita'),
(2, 'bgst', '$P$B5Jp.LYc6DQvc.Zz8E/wrCL5.r87zn1', 'bgst', 'bgst@gmail.com', '', '2019-03-04 06:20:25', '', 0, 'bgst'),
(3, 'seventeenpls', '$P$BpbLi3qTt7Wihm9WPYsWZbdBierwtD0', 'seventeenpls', 'seventeenpls@gmail.com', '', '2019-03-04 06:21:19', '', 0, 'seventeenpls');

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwc_download_log`
--

DROP TABLE IF EXISTS `wp_disparwc_download_log`;
CREATE TABLE `wp_disparwc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwc_webhooks`
--

DROP TABLE IF EXISTS `wp_disparwc_webhooks`;
CREATE TABLE `wp_disparwc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_api_keys`;
CREATE TABLE `wp_disparwoocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_attribute_taxonomies`;
CREATE TABLE `wp_disparwoocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_downloadable_product_permissions`;
CREATE TABLE `wp_disparwoocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_log`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_log`;
CREATE TABLE `wp_disparwoocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_order_itemmeta`;
CREATE TABLE `wp_disparwoocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparwoocommerce_order_itemmeta`
--

INSERT INTO `wp_disparwoocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '33'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '450000'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '450000'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'flat_rate'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '0.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(15, 2, 'Items', 'Batik Parang &times; 1'),
(16, 1, '_reduced_stock', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_order_items`;
CREATE TABLE `wp_disparwoocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparwoocommerce_order_items`
--

INSERT INTO `wp_disparwoocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Batik Parang', 'line_item', 86),
(2, 'Flat rate', 'shipping', 86);

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_payment_tokenmeta`;
CREATE TABLE `wp_disparwoocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_payment_tokens`;
CREATE TABLE `wp_disparwoocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_sessions`;
CREATE TABLE `wp_disparwoocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_shipping_zones`;
CREATE TABLE `wp_disparwoocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparwoocommerce_shipping_zones`
--

INSERT INTO `wp_disparwoocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Indonesia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_shipping_zone_locations`;
CREATE TABLE `wp_disparwoocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparwoocommerce_shipping_zone_locations`
--

INSERT INTO `wp_disparwoocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'ID', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_shipping_zone_methods`;
CREATE TABLE `wp_disparwoocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_disparwoocommerce_shipping_zone_methods`
--

INSERT INTO `wp_disparwoocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_tax_rates`;
CREATE TABLE `wp_disparwoocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_disparwoocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_disparwoocommerce_tax_rate_locations`;
CREATE TABLE `wp_disparwoocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_disparcommentmeta`
--
ALTER TABLE `wp_disparcommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_disparcomments`
--
ALTER TABLE `wp_disparcomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_disparfailed_jobs`
--
ALTER TABLE `wp_disparfailed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_disparlinks`
--
ALTER TABLE `wp_disparlinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_disparoptions`
--
ALTER TABLE `wp_disparoptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_disparpostmeta`
--
ALTER TABLE `wp_disparpostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_disparposts`
--
ALTER TABLE `wp_disparposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_disparqueue`
--
ALTER TABLE `wp_disparqueue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_dispartermmeta`
--
ALTER TABLE `wp_dispartermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_disparterms`
--
ALTER TABLE `wp_disparterms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_disparterm_relationships`
--
ALTER TABLE `wp_disparterm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_disparterm_taxonomy`
--
ALTER TABLE `wp_disparterm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_disparusermeta`
--
ALTER TABLE `wp_disparusermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_disparusers`
--
ALTER TABLE `wp_disparusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_disparwc_download_log`
--
ALTER TABLE `wp_disparwc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_disparwc_webhooks`
--
ALTER TABLE `wp_disparwc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_disparwoocommerce_api_keys`
--
ALTER TABLE `wp_disparwoocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_disparwoocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_disparwoocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_disparwoocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_disparwoocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_disparwoocommerce_log`
--
ALTER TABLE `wp_disparwoocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_disparwoocommerce_order_itemmeta`
--
ALTER TABLE `wp_disparwoocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_disparwoocommerce_order_items`
--
ALTER TABLE `wp_disparwoocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_disparwoocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_disparwoocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_disparwoocommerce_payment_tokens`
--
ALTER TABLE `wp_disparwoocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_disparwoocommerce_sessions`
--
ALTER TABLE `wp_disparwoocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_disparwoocommerce_shipping_zones`
--
ALTER TABLE `wp_disparwoocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_disparwoocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_disparwoocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_disparwoocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_disparwoocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_disparwoocommerce_tax_rates`
--
ALTER TABLE `wp_disparwoocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_disparwoocommerce_tax_rate_locations`
--
ALTER TABLE `wp_disparwoocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_disparcommentmeta`
--
ALTER TABLE `wp_disparcommentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparcomments`
--
ALTER TABLE `wp_disparcomments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_disparfailed_jobs`
--
ALTER TABLE `wp_disparfailed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparlinks`
--
ALTER TABLE `wp_disparlinks`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparoptions`
--
ALTER TABLE `wp_disparoptions`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=877;

--
-- AUTO_INCREMENT for table `wp_disparpostmeta`
--
ALTER TABLE `wp_disparpostmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `wp_disparposts`
--
ALTER TABLE `wp_disparposts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `wp_disparqueue`
--
ALTER TABLE `wp_disparqueue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_dispartermmeta`
--
ALTER TABLE `wp_dispartermmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_disparterms`
--
ALTER TABLE `wp_disparterms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_disparterm_taxonomy`
--
ALTER TABLE `wp_disparterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_disparusermeta`
--
ALTER TABLE `wp_disparusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `wp_disparusers`
--
ALTER TABLE `wp_disparusers`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_disparwc_download_log`
--
ALTER TABLE `wp_disparwc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwc_webhooks`
--
ALTER TABLE `wp_disparwc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_api_keys`
--
ALTER TABLE `wp_disparwoocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_disparwoocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_disparwoocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_log`
--
ALTER TABLE `wp_disparwoocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_order_itemmeta`
--
ALTER TABLE `wp_disparwoocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_order_items`
--
ALTER TABLE `wp_disparwoocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_disparwoocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_payment_tokens`
--
ALTER TABLE `wp_disparwoocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_sessions`
--
ALTER TABLE `wp_disparwoocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_shipping_zones`
--
ALTER TABLE `wp_disparwoocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_disparwoocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_disparwoocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_tax_rates`
--
ALTER TABLE `wp_disparwoocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_disparwoocommerce_tax_rate_locations`
--
ALTER TABLE `wp_disparwoocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_disparwc_download_log`
--
ALTER TABLE `wp_disparwc_download_log`
  ADD CONSTRAINT `fk_wp_disparwc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_disparwoocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
