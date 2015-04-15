<?php
class CollectionsHolder extends Page {

	public static $db = array(

	);

	public static $has_one = array(

	);

	static $allowed_children = array('CollectionsPage');


	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Metadata");
		$fields->removeByName("Photo");

		return $fields;

	}

}

class CollectionsHolder_Controller extends Page_Controller {

	public function init() {
		parent::init();

	}

}

?>