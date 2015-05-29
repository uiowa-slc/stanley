<?php

class PastEventsCalendar extends Calendar {
	private static $db = array(

	);

	private static $allowed_children = array(
		'PastEvent',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		return $fields;
	}





}

class PastEventsCalendar_Controller extends Calendar_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

	public function PastEvents($limit = null, $filter = null){

		// Get past EventDateTime objects see Calendar.php
		// $this->getEventList()
  		//$start_date = sfDate::getInstance();
  		$start_date = new sfDate('0000-01-01 0:0:00');

		$end_date = sfDate::getInstance();

		$l = ($limit === null) ? "9999" : $limit;
		$events = $this->getEventList(
			$start_date->date(),
			$end_date->date(), 
			$filter,
			$l
		);
		$events->sort('StartDate','DESC');

		$paginatedList = new PaginatedList($events, $this->getRequest());
		$paginatedList->setPageLength(1);

		//return $events;
		return $paginatedList;


	}
	//public function PastEvents() {
    	//$list = $this->PastEvents();

    	//return new PaginatedList($list, $this->getRequest());
	//}

}
