<?php

use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\TextField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TreeDropdownField;

class UimaEvent extends CalendarEvent {
	private static $db = array(
		"SubTitle" => "Text",
		"Cost" => "Text",
		"Contact" => "Text",
		"Address" => "Text",
		'CreditName' => 'Text',
		'CreditArtistLifespan' => 'Text',
		'CreditTitle' => 'HTMLText',
		'CreditYear' => 'Text',
		'CreditMedium' => 'Text',
		'CreditDimensions' => 'Text',
		'CreditCollectionInfo' => 'Text',
	);

	private static $has_one = array (
		'Image' => Image::class,
		'CreditThumb' => Image::class,
		"AssociatedPage" => SiteTree::class,
	);
	private static $defaults = array (
		'ShowInMenus' => false
	);


	private static $singular_name = 'Stanley Event';



	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");
		$fields->removeByName("AssociatedPageID");

		$fields->addFieldToTab('Root.Main', new TextField( 'Address', 'Address'), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField( 'SubTitle', 'Subheading'), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField( 'Cost', 'Cost'), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField( 'Contact', 'Contact'), 'Content');
		$fields->addFieldToTab('Root.Main', new UploadField('Image', 'Image'), 'Content');

		$fields->addFieldToTab('Root.Credit', new UploadField('CreditThumb', 'Credit: Artwork Thumbnail'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditName','Credit: Artist Name'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditArtistLifespan','Credit: Artist Lifespan Information'));
		$creditTitleField =  new HTMLEditorField('CreditTitle','Credit Artwork Title');
		$creditTitleField->setRows(3);

		$fields->addFieldToTab('Root.Credit', $creditTitleField);
		$fields->addFieldToTab('Root.Credit', new TextField('CreditYear','Credit: Artwork Year'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditMedium','Credit: Artwork Medium'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditDimensions','Credit: Artwork Dimensions'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditCollectionInfo','Credit: Collections Information'));
		$fields->push( new TreeDropdownField("AssociatedPageID", "link for credit", SiteTree::class));

		return $fields;
	}


}
