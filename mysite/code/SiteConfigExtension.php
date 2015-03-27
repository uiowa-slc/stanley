<?php

class SiteConfigExtension extends DataExtension {

	static $db = array(
		'TwitterLink' => 'Text',
		'FacebookLink' =>'Text',
		'YoutubeLink' =>'Text'
	);

	static $has_one = array(

	);

	public function updateCMSFields(FieldList $fields){

		$fields->addFieldToTab('Root.Main', new TextField('TwitterLink', 'Twitter Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('FacebookLink', 'Facebook Account URL'));
		$fields->addFieldToTab('Root.Main', new TextField('YoutubeLink', 'Youtube Account URL'));

		return $fields;

	}

}
class SiteConfigExtensionPage_Controller extends Page_Controller {

	public function init() {
		parent::init();
	}

}