<?php
class CollectionsHolder extends Page {

	private static $db = array(

	);

	private static $has_one = array(

	);


	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Metadata");
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");

		return $fields;

	}

}

class CollectionsHolder_Controller extends Page_Controller {

	public function CollectionChildren() {
		return $this->Children()->filter(array('ClassName' => 'CollectionsPage'));
	}

	public function init() {
		parent::init();

	}

}

?>