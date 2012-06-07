<?php

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function preservation_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
	$site_name = $_SERVER['SERVER_NAME'];
	if (function_exists('drush_get_option')) {
		$site_name = variable_get('site_name', drush_get_option('sitename', ''));
	}
	watchdog('preservation_install', '@sitename', array('@sitename' => $site_name));
  $form['site_information']['site_name']['#default_value'] = $site_name;
}
