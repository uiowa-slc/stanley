<?php

use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\PaginatedList;

class PastEventsCalendar extends Calendar {
	private static $db = array(

	);

	private static $allowed_children = array(
		'PastEvent',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Credit");
		return $fields;
	}
	//Overload these to stop the Uncaught Exception: Object->__call(): the method 'parent' does not exist on 'BlogHolder' error.
	public function validURLSegment() {
		return true;
	}
	public function syncLinkTracking() {
		return null;
	}

}

