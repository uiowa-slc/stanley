<?php
class CollectionsPage extends Page {
	static $db = array(

	'CollectionsTitle' => 'Text',
	'CollectionsText' => 'HTMLText',
	'CollectionsImageCaption' => 'HTMLText',

	);
	static $has_one = array(

		'CollectionsImage' => 'Image',

	);

	function getCMSFields() {

		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");
		$fields->removeByName("Content");
		$fields->removeByName("Photo");

		$fields->addFieldToTab('Root.Main', new UploadField('CollectionsImage', 'Collections Image (width must be 348 pixels)'));
		$fields->addFieldToTab('Root.Main', new TextField('CollectionsTitle','Collections Title'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('CollectionsImageCaption','Collections Image Caption'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('CollectionsText','Collections HTML Text'));


	return $fields;
	}
}

class CollectionsPage_Controller extends Page_Controller {

}
?>