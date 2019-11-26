<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dispar' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'zzqVTx9$>m9Oliv}|tUD}p/][SuNA. noFVo+?Dno}qH=Qr7rhuS;T? Jx7}sf>$' );
define( 'SECURE_AUTH_KEY',  '`+<+J%RnSXT;Lw)%zow1rtW0q^Bae,G(r@al%6{jxe%?LLN> AvCUJ&` e`duTg&' );
define( 'LOGGED_IN_KEY',    'P*~0c3)O<En@P~deL]RE(qcWX]BpCKXVqME~*r~L.CsIcM%i<z~7~cC^bB/5aXsD' );
define( 'NONCE_KEY',        'z!*D6V<sfw<! T6ZX8dF}nHPoS=e`3!K hFbrnKzDg j<}&@ cpBu.^$<;_ije$B' );
define( 'AUTH_SALT',        '%!iMz=$:SIRSJN%m{T08j80sso(#[ucK*_^d25QGcXs#t/jCVuU?dIkM[+)Ynl)J' );
define( 'SECURE_AUTH_SALT', 'Hf^&..^mHpb1n1W5OlnV0h]J5Aq93911s=>+g,V)dj;feVSgo65(W|cc9qHu)a5*' );
define( 'LOGGED_IN_SALT',   '_DEo[p+<_P~HcqzUQ#!<xzlD`vjcw<r80nS!.KYN;9Lsat&Is|n~}V&OcD9:&)N0' );
define( 'NONCE_SALT',       'g.z,_EbLsc~N5/sI<c8-4 YRy{wbC/Z5LqdpH7UJ3P`zl0Dvl:F6y.*/miH GnYe' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_dispar';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
