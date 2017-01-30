<?php

class PopulateDailyBlogPostsBuildTask extends BuildTask {

	protected $title = 'Populate the DailyArtBlogPost table with dummy posts for performance testing';

	protected $enabled = true;

	function run($request) {

		echo "<h2>Populating DailyArtBlogPost table:</h2>";

		for($month = 1; $month <= 12; $month++){
			$monthDays = cal_days_in_month(CAL_GREGORIAN, $month, date('Y'));
			for($day = 1; $day <= $monthDays; $day ++){

				$blogDayTest = DailyArtBlogDay::get()->filter(array('Month' => $month, 'Date' => $day))->First();

				$post = DailyArtBlogPost::create();
				$post->ParentID = 576;
				$post->Title = 'Daily Art Blog Post '.$month.'/'.$day;
				$post->PublishDate = SS_Datetime::create();
				$post->PublishDate->setValue('2018-'.$month.'-'.$day.' 00:00:00');
				$post->DailyArtImageID = 705;

				$post->write();

				echo 'Created Post: '.$post->Title.' under the date:'.$post->PublishDate.' <br />';

			}

		}

		// echo '<h2>Adding Feb 29, aka leap day</h2>';
		// $blogDayTest = DailyArtBlogDay::get()->filter(array('Month' => 2, 'Date' => 29))->First();
		// if(!$blogDayTest){
		// 	echo 'leap day not found in db, creating...<br />';
		// 	$blogDay = new DailyArtBlogDay();
		// 	$blogDay->Month = 2;
		// 	$blogDay->Date = 29;
		// 	$blogDay->write();
		// }else{
		// 	echo 'Leap day already in db, no need to create a new entry.<br />';
		// }

		echo "<h2>Done</h2>";

	}

}