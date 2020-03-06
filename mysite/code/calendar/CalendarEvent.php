<?php
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\TextField;

class CalendarEvent extends Page {

	private static $db = array (
		'Location' => 'Text',
	);
	private static $icon_class = 'font-icon-p-event-alt';

	private static $has_many = array (
		'DateTimes' => 'CalendarDateTime'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new TextField( 'Location', 'Location'), 'Content');
		$dateTimesConf = GridFieldConfig_RelationEditor::create();
		$dateTimesField = new GridField('DateTimes', 'Dates and Times', $this->DateTimes(), $dateTimesConf);

		$fields->addFieldToTab('Root.DatesAndTimes', $dateTimesField);
		return $fields;
	}

	public function getFirstStartDate(){
		$dateTime = $this->DateTimes()->sort('StartDate')->First();
		return $dateTime->StartDate;
	}
	public function getFirstEndDate(){
		$dateTime = $this->DateTimes()->sort('StartDate')->First();
		return $dateTime->EndDate;
	}
}
