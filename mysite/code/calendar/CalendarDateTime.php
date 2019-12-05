<?php
use SilverStripe\ORM\DataObject;
use SilverStripe\Control\Controller;
class CalendarDateTime extends DataObject {

	private static $db = array (
		'StartDate' => 'Date',
		'StartTime' => 'Time',
		'EndDate' => 'Date',
		'EndTime' => 'Time',
		'AllDay' => 'Boolean'
	);

	private static $has_one = array (
		'Event' => 'CalendarEvent'
	);

	private static $summary_fields = array(
		'StartDate.Nice',
		'StartTime',
		'EndDate',
		'EndTime',
		'AllDay'
	);

	private static $default_sort = "StartDate ASC, StartTime ASC";

	public function ICSLink() {
		$ics_start = $this->obj('StartDate')->Format('YMMdd')."T".$this->obj('StartTime')->Format('HHmmss');
		if($this->EndDate) {
			$ics_end = $this->obj('EndDate')->Format('YMMdd')."T".$this->obj('EndTime')->Format('HHmmss');
		}
		else {
			$ics_end = $ics_start;
		}
		if($this->Feed) {
			return Controller::join_links(
				$this->Calendar()->Link(),
				"ics",
				$this->ID,
				$ics_start . "-" . $ics_end,
				"?title=".urlencode($this->Title)
			);
		}

		return Controller::join_links(
			$this->Event()->Parent()->Link(),
			"ics",
			$this->Event()->ID,
			$ics_start . "-" . $ics_end
		);
	}
}
