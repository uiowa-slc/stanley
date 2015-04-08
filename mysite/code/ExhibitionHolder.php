<?php

class ExhibitionHolder extends Page {

	public static $db = array(

	);

	public static $has_one = array(

	);

	static $allowed_children = array('ExhibitionPage', 'ExhibitionHolder', 'RedirectorPage');


	function getCMSFields() {
		$fields = parent::getCMSFields();

	   return $fields;

	}

}

class ExhibitionHolder_Controller extends Page_Controller {

	public function init() {
		parent::init();

	}

}

?>