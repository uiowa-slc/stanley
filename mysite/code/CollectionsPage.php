<?php
class CollectionsPage extends Page {
	private static $db = array(


	);
	private static $has_one = array(
		'ArtCreditLink' => 'SiteTree',
		'CollectionsImage' => 'Image',
		'CollectionsCover' => 'Image',

	);

	private static $allowed_children = array('ArtworkPage');


	function getCMSFields() {

		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");

		$fields->addFieldToTab('Root.Main', new UploadField('CollectionsCover', 'Collections Cover Image'));
		$fields->addFieldToTab('Root.Main', new UploadField('CollectionsImage', 'Collections Large Header Image (1200px x 400px'));
		$fields->addFieldToTab('Root.Main', new TreeDropdownField('ArtCreditLinkID', 'Image Credit Link', 'SiteTree'));


	return $fields;
	}
}

class CollectionsPage_Controller extends Page_Controller {

}
?>