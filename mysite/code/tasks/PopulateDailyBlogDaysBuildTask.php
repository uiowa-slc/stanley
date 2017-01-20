<?php

class PopulateDailyBlogDaysBuildTask extends BuildTask {

	protected $title = 'Populate the DailyArtBlogDay table with all days in the calendar year';

	protected $enabled = true;

	function run($request) {

		echo "<h2>Populating DailyArtBlogDay table:</h2>";

		for($month = 1; $month <= 12; $month++){
			$monthDays = cal_days_in_month(CAL_GREGORIAN, $month, date('Y'));
			for($day = 1; $day <= $monthDays; $day ++){

				$blogDayTest = DailyArtBlogDay::get()->filter(array('Month' => $month, 'Day' => $day))->First();

				if(!$blogDayTest){
					echo $month.'/'.$day.' not found in db, creating...<br />';
					$blogDay = new DailyArtBlogDay();
					$blogDay->Month = $month;
					$blogDay->Date = $day;
					$blogDay->write();
				}else{
					echo $month.'/'.$day.' already exists, no need to create a new entry.<br />';
				}



			}

		}

		echo '<h2>Adding Feb 29, aka leap day</h2>';
		$blogDayTest = DailyArtBlogDay::get()->filter(array('Month' => 2, 'Day' => 29))->First();
		if(!$blogDayTest){
			echo 'leap day not found in db, creating...<br />';
			$blogDay = new DailyArtBlogDay();
			$blogDay->Month = 2;
			$blogDay->Date = 29;
			$blogDay->write();
		}else{
			echo 'Leap day already in db, no need to create a new entry.<br />';
		}

		echo "<h2>Done</h2>";

	}

}