<?php

use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\View\Requirements;
use SilverStripe\CMS\Controllers\ContentController;
class Page extends SiteTree {

	private static $db = array(
		'CreditName'           => 'Text',
		'CreditArtistLifespan' => 'Text',
		'CreditTitle'          => 'HTMLText',
		'CreditYear'           => 'Text',
		'CreditMedium'         => 'Text',
		'CreditDimensions'     => 'Text',
		'CreditCollectionInfo' => 'Text',
		'HideSideNav' => 'Boolean'
	);

	private static $has_one = array(
		"Photo"          => Image::class,
		'CreditThumb'    => Image::class,
		"AssociatedPage" => SiteTree::class,
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		// $fields->removeByName("Metadata");
		$fields->addFieldToTab("Root.Main", new CheckboxField("HideSideNav", "Hide Side Navigation"), 'Content');
		$fields->addFieldToTab("Root.Main", new UploadField("Photo", "Main Page Photo (1200px x 400px)"));

		$fields->addFieldToTab('Root.Credit', new UploadField('CreditThumb', 'Credit: Artwork Thumbnail'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditName', 'Credit: Artist Name'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditArtistLifespan', 'Credit: Artist Lifespan Information'));
		$creditTitleField = new HTMLEditorField('CreditTitle', 'Credit Artwork Title');
		$creditTitleField->setRows(3);

		$fields->addFieldToTab('Root.Credit', $creditTitleField);
		// $fields->addFieldToTab('Root.Credit', new HTMLEditorField('CreditTitle','Credit: Artwork Title'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditYear', 'Credit: Artwork Year'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditMedium', 'Credit: Artwork Medium'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditDimensions', 'Credit: Artwork Dimensions'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditCollectionInfo', 'Credit: Collections Information'));
		//$fields->push( new TreeDropdownField("AssociatedPageID", "Header image link credit", "SiteTree"));
		return $fields;

	}

	public function NiceName() {
		$niceNames = array(
			'Page'                => null,
			'CollectionsPage'     => 'Collection',
			'CollectionsHolder'   => 'Collection List',
			'ArtworkPage'         => 'Artwork Item',
			'BenefitLevels'       => 'Benefit Levels',
			'CarouselItem'        => null,
			'ExhibitionHolder'    => 'Exhibition List',
			'ExhibitionPage'      => 'Exhibition Item',
			'HomePage'            => null,
			'NewsEntry'           => 'News Item',
			'NewsHolder'          => 'News List',
			'PastEvent'           => 'Event',
			'PastEventsCalendar'  => null,
			'SiteConfigExtension' => null
		);

		if(isset($niceNames[$this->ClassName])){
			$niceClassName = $niceNames[$this->ClassName];
			return $niceClassName;
		}else{
			return preg_replace('/([a-z]+)([A-Z])/', '$1 $2', $this->getClassName());
		}
	}

	public function Days(){
		return DailyArtBlogDay::get();
	}
}

