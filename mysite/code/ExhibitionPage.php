<?php
class ExhibitionPage extends Page {
	static $db = array(

		'StartDate' => 'SS_Datetime',
		'EndDate' => 'SS_Datetime',
		'ExhibitionLocation' => 'Text',
		'ExhibitionAddress' => 'Text',
		'LocationLink' => 'Text',
		'ExhibitionDescription' => 'HTMLText',
		'EventTag' => 'Text',
		'ArtName' => 'Text',
		'ArtArtistLifespan' => 'Text',
		'ArtTitle' => 'Text',
		'ArtYear' => 'Text',
		'ArtMedium' => 'Text',
		'ArtDimensions' => 'Text',
		'ArtCollectionInfo' => 'Text',

	);
	static $has_one = array(

		'ExhibitionImage' => 'Image',
		'ExhibitionThumb' => 'Image'

	);

	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		$fields->removeByName("Content");
		$fields->addFieldToTab("Root.Main", $dateField = new DatetimeField('StartDate', 'Start Date'));
		$dateField->getDateField()->setConfig('showcalendar', true);
		$fields->addFieldToTab("Root.Main", $dateField = new DatetimeField('EndDate', 'End Date'));
		$dateField->getDateField()->setConfig('showcalendar', true);
		$fields->addFieldToTab('Root.Main', new TextField('ExhibitionLocation','Exhibition Location'));
		$fields->addFieldToTab('Root.Main', new TextField('ExhibitionAddress','Exhibition Address'));
		$fields->addFieldToTab('Root.Main', new TextField('LocationLink','Location Link'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('ExhibitionDescription','Exhibition Description'));
		$fields->addFieldToTab("Root.Main", new TextField("EventTag", "Tag used to show related events"));
		$fields->addFieldToTab('Root.Main', new UploadField('ExhibitionImage', 'Large Exhibition Image (1200px width, 600px height'));
		$fields->addFieldToTab('Root.Main', new UploadField('ExhibitionThumb', 'Credit: Artwork Thumbnail'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtName','Credit: Artist Name'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtArtistLifespan','Credit: Artist Lifespan Information'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtTitle','Credit: Artwork Title'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtYear','Credit: Artwork Year'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtMedium','Credit: Artwork Medium'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtDimensions','Credit: Artwork Dimensions'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtCollectionInfo','Credit: Collections Information'));

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