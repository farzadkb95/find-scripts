<?php

/*
 * Plugin Name:find script load
 * Description: get all script loaded in wordpress pages such as a css and js 
 * Version: 1.1
 * Plugin URI: https://tarrahiweb.com
 * Author URI: https://www.tarrahiweb.com/
 * Author: farzadbeheshti
 * Text Domain: farzad
 * Requires PHP: 5.5
 * Domain Path: /languages
 */ 


//  find enque scrip
function scriptsfinder() {
    if( !is_admin() && is_user_logged_in() && current_user_can( 'manage_options' )) {
        // Print Scripts
        global $wp_scripts;
        foreach( $wp_scripts->queue as $handle ) :
           echo '<div style="margin: 5px 3%; border: 1px solid #eee; padding: 20px;">Script <br />';
           echo "Handle: " . $handle . '<br />';
           echo "URL: " . $wp_scripts->registered[$handle]->src;
           echo '</div>';
        endforeach;
     
        // Print Styles
        global $wp_styles;
        foreach( $wp_styles->queue as $handle ) :
           echo '<div style="margin: 5px 3%; border: 1px solid #eee; padding: 20px; background-color: #e0e0e0;">Style <br />';
           echo "Handle: " . $handle . '<br />';
           echo "URL: " . $wp_styles->registered[$handle]->src;
           echo '</div>';
        endforeach;
    }
}
add_action( 'wp_print_scripts', 'scriptsfinder', 101 );




*/
