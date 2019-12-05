<?php
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\DataObject;

class UimaCalendarController extends CalendarController {

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

	private static $allowed_actions = array('index','past', 'year');
	private static $url_handlers = array (
		'past' => 'past'
	);


	public function init() {
		parent::init();


	}
	public function getFilterHeader(){

		if(($this->getRequest()->param('Action') == "year") && (is_numeric($this->getRequest()->param('ID')))){
			return 'Event Archive: '.$this->getRequest()->param('ID');
		}elseif($this->getRequest()->param('Action') == 'past'){
			return 'Event Archive';
		}elseif(!$this->getRequest()->param('Action')){
			return 'Upcoming Events';
		}else{
			return null;
		}

	}
	public function PaginatedList(){
		//print_r(is_int($this->getRequest()->param('ID')));
		if(($this->getRequest()->param('Action') == "year") && (is_numeric($this->getRequest()->param('ID')))){

			$start_date = date('Y-m-d',mktime(0, 0, 0, 1, 1, $this->getRequest()->param('ID')));
			$end_date = date('Y-m-d',mktime(0, 0, 0, 12, 31, $this->getRequest()->param('ID')));

			$eventDateTimes = $this->getEventList(
				$start_date,
				$end_date,
				null,
				null
			);

		}

		else{
			$start_date = date( 'Y-m-d', time() );
			$end_date = date('Y-m-d',strtotime(date("Y-m-d", time()) . " + 365 day"));

			$eventDateTimes = $this->getEventList(
				sfDate::getInstance()->date(),
				sfDate::getInstance()->addYear(10)->date(),
				null,
				null
			);
		}



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

	public function ArchiveYears() {

		$eventDates = CalendarDateTime::get();

		$eventYears = new ArrayList();

		foreach ($eventDates as $eventDate) {

			$eventYear = new DataObject;
			$eventStartDateandTime = $eventDate->obj("StartDate");

			if ($eventStartDateandTime->Year()) {



				$eventYear->Year = $eventStartDateandTime->Year();
				$eventYear->Link = $this->Link("year/".$eventYear->Year);

				// print_r($eventStartDateandTime->Year());
				if(($this->getRequest()->param('Action') == "year") && (is_numeric($this->getRequest()->param('ID')))){

					//print_r(intval($eventYear->Year).' == '.intval($this->getRequest()->param('ID')).'<br />');
					if(intval($eventYear->Year) == intval($this->getRequest()->param('ID'))){
						$eventYear->Active = 'active';
					}else{
						$eventYear->Active = 'inactive';
					}

				}

				$eventYears->push($eventYear);
			}

		}

		$eventYears->removeDuplicates("Year");
		//print_r($eventYears);

		return $eventYears->sort('Year','DESC');

	}

}
