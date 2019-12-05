<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TreeDropdownField;

class CollectionsPage extends Page {
	private static $db = array(
		'ChildrenSubheading' => 'Text'

	);
	private static $has_one = array(
		'ArtCreditLink' => SiteTree::class,
		'CollectionsImage' => Image::class,
		'CollectionsCover' => Image::class,


	);

	private static $allowed_children = array('ArtworkPage');

	private static $defaults = array(
		'HideSideNav' => 1,
		'ChildrenSubheading' => 'Collection Highlights'
	);
	public function getCMSFields() {

		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");
		$fields->removeByName("Photo");
		$fields->addFieldToTab('Root.Main', new TextField('ChildrenSubheading', 'Heading for pages under this Collection (default: "Collection Highlights", can be left blank)' ));
		$fields->addFieldToTab('Root.Main', new UploadField('CollectionsCover', 'Collections Cover Image'));

		$fields->addFieldToTab('Root.Main', new UploadField('CollectionsImage', 'Collections Large Header Image (1200px x 400px'));
		$fields->addFieldToTab('Root.Main', new TreeDropdownField('ArtCreditLinkID', 'Image Credit Link', SiteTree::class));


	return $fields;
	}
}
