<?php
class ExhibitionPage extends Page {
	static $db = array(

		'StartDate' => 'SS_Datetime',
		'EndDate' => 'SS_Datetime',
		'EventLocation' => 'Text',
		'ExhibitionAddress' => 'Text',
		'LocationLink' => 'Text',
		'EventDescription' => 'HTMLText',

	);
	static $has_one = array(

		'EventPageImage' => 'Image',

	);

	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		$fields->removeByName("Content");
		$fields->addFieldToTab('Root.Main', new UploadField('EventPageImage', 'Exhibition Image'));
		$fields->addFieldToTab("Root.Main", $dateField = new DatetimeField('StartDate', 'Start Date'));
		$dateField->getDateField()->setConfig('showcalendar', true);
		$fields->addFieldToTab("Root.Main", $dateField = new DatetimeField('EndDate', 'End Date'));
		$dateField->getDateField()->setConfig('showcalendar', true);
		$fields->addFieldToTab('Root.Main', new TextField('EventLocation','Exhibition Location'));
		$fields->addFieldToTab('Root.Main', new TextField('ExhibitionAddress','Exhibition Address'));
		$fields->addFieldToTab('Root.Main', new TextField('LocationLink','Location Link'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('EventDescription','Exhibition Description'));


		 return $fields;
	}
}

class ExhibitionPage_Controller extends Page_Controller {

}
?>