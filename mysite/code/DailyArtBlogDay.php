<?php

class DailyArtBlogDay extends DataObject {
		
	private static $db = array(
		'Date' => 'Int',
		'Month' => 'Int',
		'HasPost' => 'Boolean',
		'TestField' => 'Text'
	);

	private static $casting = array(
		'Link' => 'Text'
	);

	private static $has_many = array(
		'DailyArtBlogPosts' => 'DailyArtBlogPost'
	);

	private static $default_sort = "Month ASC, Date ASC";

	public function getPosts(){
		return DailyArtBlogPost::get()->filter(array('DailyArtBlogDayID' => $this->ID));
	}
	public function getLatestPost(){
		return DailyArtBlogPost::get()->filter(array('DailyArtBlogDayID' => $this->ID))->First();
	}

	public function getFormattedMonth(){
		$dateObj   = DateTime::createFromFormat('!m', $this->Month);
		$monthName = $dateObj->format('M'); // March
		return $monthName;
	}

	public function getFormattedDate(){
		$dateObj   = DateTime::createFromFormat('!j', $this->Month);
		$date = $dateObj->format('j'); // March	
		return $date;		
	}

	public function NextPage(){
		$currentDate = SS_Datetime::now();
		$nextDate = $currentDate->next_day($currentDate->Format('Y'),$this->Month,$this->Date);

		$dateObj = Date::create();
		$dateObj->setValue($nextDate);

		$day = DailyArtBlogDay::get()->filter(array('Month' => $dateObj->Format('m'), 'Date' => $dateObj->Format('d')))->First();
		//print_r($day->getLatestPost());
		return $day->getLatestPost();
	}

	public function PreviousPage(){
		$currentDate = SS_Datetime::now();
		$nextDate = $currentDate->day_before($currentDate->Format('Y'),$this->Month,$this->Date);

		$dateObj = Date::create();
		$dateObj->setValue($nextDate);

		$day = DailyArtBlogDay::get()->filter(array('Month' => $dateObj->Format('m'), 'Date' => $dateObj->Format('d')))->First();
		//print_r($day->getLatestPost());
		return $day->getLatestPost();
	}


}