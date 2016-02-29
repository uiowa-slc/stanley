<?php

class UimaCalendar extends Calendar {
	private static $db = array(

	);

	private static $allowed_children = array(
		'UimaEvent'
	);


	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Credit");
		return $fields;
	}


}

class UimaCalendar_Controller extends Calendar_Controller {

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
		//must render past events to a template called PastEventCalnder_past.ss

	private static $allowed_actions = array('past');
	private static $url_handlers = array (
		'past' => 'past'
		);


	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

	function PaginatedList(){
		$start_date = date( "d/m/Y", time() );
		$end_date = date('Y-m-d',strtotime(date("Y-m-d", time()) . " + 365 day"));
		$eventDateTimes = $this->getEventList(
			sfDate::getInstance()->date(),
			sfDate::getInstance()->addYear(10)->date(),
			null,
			null
		);

		$events = new ArrayList();
		foreach($eventDateTimes as $eventDateTime){
			$events->push($eventDateTime->Event());
		}
		$events->removeDuplicates('ID');
		$paginatedList = new PaginatedList($events, $this->getRequest());
		$paginatedList->setPageLength(10);

		return $paginatedList;
	}

	public function past() {

		$pastEvents = $this->PastEvents();
		$Data = array(
			'Title' => 'Past Events',
			'PaginatedList' => $pastEvents,
		);
		return $this->customise($Data)->renderWith(array('UimaCalendar', 'Page'));
	}



	public function PastEvents($limit = null, $filter = null){

  		$start_date = new sfDate('0000-01-01 0:0:00');
		$end_date = sfDate::getInstance();

		$l = ($limit === null) ? "9999" : $limit;
		$eventDateTimes = $this->getEventList(
			$start_date->date(),
			$end_date->date(),
			$filter,
			$l
		);

		$events = new ArrayList();
		foreach($eventDateTimes as $eventDateTime){
			$events->push($eventDateTime->Event());
		}

		$eventsReversed = $events->reverse();

		$paginatedList = new PaginatedList($eventsReversed, $this->getRequest());
		$paginatedList->setPageLength(10);

		return $paginatedList;

	}


}