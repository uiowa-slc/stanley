<?php
class CollectionsHolder extends Page {

	private static $db = array(

	);

	private static $has_one = array(

	);

	private static $allowed_children = array('CollectionsPage');
	

	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Metadata");
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");

		return $fields;

	}

}

class CollectionsHolder_Controller extends Page_Controller {

	public function init() {
		parent::init();

	}

}

?>