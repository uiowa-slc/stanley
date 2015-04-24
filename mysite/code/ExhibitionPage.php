<?php
class ExhibitionPage extends Page {
	static $db = array(

		'StartDate' => 'SS_Datetime',
		'EndDate' => 'SS_Datetime',
		'EventLocation' => 'Text',
		'ExhibitionAddress' => 'Text',
		'LocationLink' => 'Text',
		'EventDescription' => 'HTMLText',
		"EventTag" => "Text"

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
		$fields->addFieldToTab("Root.Main", new TextField("EventTag", "Tag used to show related events"));


		 return $fields;
	}
}

class ExhibitionPage_Controller extends Page_Controller {
	public function EventListByTag() {
		$calendar = LocalistCalendar::get()->First();

		if (isset($this->EventTag)) {
			$events = $calendar->EventListByTag($this->EventTag);
			return $events;
		} else {
			$events = $calendar->EventList();
		}

		return $events;
	}

	public function EventListBySearch() {
		$calendar = LocalistCalendar::get()->First();

		if (isset($this->EventTag)) {
			$events = $calendar->EventListBySearchTerm($this->EventTag);
			return $events;
		} else {
			$events = $calendar->EventList();
		}

		return $events;
	}
}
?>