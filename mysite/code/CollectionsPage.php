<?php
class CollectionsPage extends Page {
	static $db = array(


	);
	static $has_one = array(
		'ArtCreditLink' => 'SiteTree',
		'CollectionsImage' => 'Image',
		'CollectionsCover' => 'Image',

	);

	function getCMSFields() {

		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");
		$fields->removeByName("Photo");

		$fields->addFieldToTab('Root.Main', new UploadField('CollectionsCover', 'Collections Cover Image'));
		$fields->addFieldToTab('Root.Main', new UploadField('CollectionsImage', 'Collections Large Header Image'));
		$fields->addFieldToTab('Root.Main', new TreeDropdownField('ArtCreditLinkID', 'Image Credit Link', 'SiteTree'));


	return $fields;
	}
}

class CollectionsPage_Controller extends Page_Controller {

}
?>