<?php

use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\DataObject;

class UimaCalendar extends Calendar {
	private static $db = array(

	);

	private static $casting = array(
		'FilterHeader' => 'Text'
	);

	private static $allowed_children = array(
		'UimaEvent'
	);

	private static $extensions = array(
        // 'LumberjackEvents',
    );


	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Credit");
		return $fields;
	}


}


