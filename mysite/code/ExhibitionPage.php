<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\DatetimeField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;

class ExhibitionPage extends Page {

	private static $show_in_sitetree = false;

	private static $icon_class = 'font-icon-thumbnails';

    private static $allowed_children = array(
    	'*ExhibitionPage',
    	'CollectionsHolder',
    	'CollectionsPage'
    );

	private static $db = array(

		'StartDate'             => 'Datetime',
		'EndDate'               => 'Datetime',
		'ExhibitionLocation'    => 'Text',
		'ExhibitionAddress'     => 'Text',
		'LocationLink'          => 'Text',
		'ExhibitionDescription' => 'HTMLText',

	);

	private static $summary_fields = array(
        'ExhibitionAddress' => 'Address'
    );

	private static $has_one = array(

		'ExhibitionImage' => Image::class,

	);



	public function IsCurrent() {
		return $this->obj("StartDate")->InPast() && $this->obj("EndDate")->InFuture();
	}
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		$fields->removeByName("Content");
		$fields->addFieldToTab("Root.Main", $dateField = new DatetimeField('StartDate', 'Start Date'));
		$dateField->getDateField()->setConfig('showcalendar', true);
		$fields->addFieldToTab("Root.Main", $dateField = new DatetimeField('EndDate', 'End Date'));
		$dateField->getDateField()->setConfig('showcalendar', true);
		$fields->addFieldToTab('Root.Main', new TextField('ExhibitionLocation', 'Exhibition Location'));
		$fields->addFieldToTab('Root.Main', new TextField('ExhibitionAddress', 'Exhibition Address'));
		$fields->addFieldToTab('Root.Main', new TextField('LocationLink', 'Location Link'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('ExhibitionDescription', 'Exhibition Description'));
		$fields->addFieldToTab('Root.Main', new UploadField('ExhibitionImage', 'Large Exhibition Image (1200px width, 600px height'));

		return $fields;
	}


}


?>
