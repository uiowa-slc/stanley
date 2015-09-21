<?php

class UpdateEventPageTypesBuildTask extends BuildTask {

	protected $title = 'Change Calendar and event page types from PastEvents*';

	protected $enabled = true;

	function run($request) {

		echo "<h2>Converting Past Event Holder and bringing to top level.</h2>";
		$pastEventsCalendar = PastEventsCalendar::get()->First();

		echo "<li>converting PastEventsCalendar " . $pastEventsCalendar->Title . " to UimaCalendar .</li>";
		
		$newCalendar = $pastEventsCalendar->newClassInstance("UimaCalendar");

		//$pastEventsCalendar->ClassName = 'UimaCalendar';
		$newCalendar->Title = 'Events';
		$newCalendar->MenuTitle = 'Events';
		$newCalendar->ParentID = 0;
		$newCalendar->write();
		//$newCalendar->doPublish('Stage', 'Live');


		echo "<h2>Removing Localist Calendar</h2>";
		$localistCalendar = LocalistCalendar::get()->First();
		$localistCalendar->doUnpublish();
		$localistCalendar->delete();



		echo "<h2>Converting Events</h2>";
		$events = PastEvent::get();
		foreach ($events as $event) {
			echo "<li>converting PastEvent " . $event->Title . " to UimaEvent</li>";
			$event->ClassName = 'UimaEvent';

			$event->write();

			if ($event->isPublished()) {
				$event->doPublish('Stage', 'Live');
			}

		}

		echo "<h2>Done</h2>";

	}

}