<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HeaderField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextField;
use SilverStripe\Control\Email\Email;
use SilverStripe\ORM\DataExtension;

class SiteConfigExtension extends DataExtension {

	private static $db = array(
		'TwitterLink' => 'Text',
		'FacebookLink' =>'Text',
		'YoutubeLink' =>'Text',
		'InstagramLink' =>'Text',
		'Address1' =>'Text',
		'Address2' =>'Text',
		'City' => 'Text',
		'State' => 'Text',
		'Zip' => 'Text',
		'Phone' =>'Text',
		'Email' =>'Text'

	);

	private static $has_one = array(
		'DefaultOpenGraphImage' => Image::class,
	);

	public function updateCMSFields(FieldList $fields){
        $fields->addFieldsToTab('Root.Main', array(
            HeaderField::create('', 'Open Graph'),
            UploadField::create('DefaultOpenGraphImage', 'Default Facebook Share Image (1200 x 630)')
        ));
		$fields->addFieldToTab('Root.Main', new TextField('TwitterLink', 'Twitter Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('FacebookLink', 'Facebook Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('YoutubeLink', 'Youtube Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('InstagramLink', 'Instagram Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('Address1', 'Address Line 1'));
		$fields->addFieldToTab('Root.Main', new TextField('Address2', 'Address Line 2'));
		$fields->addFieldToTab('Root.Main', new TextField('City', 'City'));
		$fields->addFieldToTab('Root.Main', new TextField('State', 'State'));
		$fields->addFieldToTab('Root.Main', new TextField('Zip', 'Zip Code'));
		$fields->addFieldToTab('Root.Main', new TextField('Phone', 'Phone Number'));
		$fields->addFieldToTab('Root.Main', new TextField(Email::class, Email::class));
		return $fields;

	}

}
class SiteConfigExtensionPage_Controller extends PageController {

	public function init() {
		parent::init();
	}

}
