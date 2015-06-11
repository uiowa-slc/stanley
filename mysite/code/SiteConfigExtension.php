<?php

class SiteConfigExtension extends DataExtension {

	private static $db = array(
		'TwitterLink' => 'Text',
		'FacebookLink' =>'Text',
		'YoutubeLink' =>'Text',
		'Address1' =>'Text',
		'Address2' =>'Text',
		'City' => 'Text',
		'State' => 'Text',
		'Zip' => 'Text',
		'Phone' =>'Text',
		'Email' =>'Text',
		'Analytics' =>'Text'

	);

	private static $has_one = array(

	);

	

	public function updateCMSFields(FieldList $fields){

		$fields->addFieldToTab('Root.Main', new TextField('Analytics', 'Google Analytics Tracking ID'));
		$fields->addFieldToTab('Root.Main', new TextField('TwitterLink', 'Twitter Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('FacebookLink', 'Facebook Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('YoutubeLink', 'Youtube Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('Address1', 'Address Line 1'));
		$fields->addFieldToTab('Root.Main', new TextField('Address2', 'Address Line 2'));
		$fields->addFieldToTab('Root.Main', new TextField('City', 'City'));
		$fields->addFieldToTab('Root.Main', new TextField('State', 'State'));
		$fields->addFieldToTab('Root.Main', new TextField('Zip', 'Zip Code'));
		$fields->addFieldToTab('Root.Main', new TextField('Phone', 'Phone Number'));
		$fields->addFieldToTab('Root.Main', new TextField('Email', 'Email'));
		return $fields;

	}

}
class SiteConfigExtensionPage_Controller extends Page_Controller {

	public function init() {
		parent::init();
	}

}