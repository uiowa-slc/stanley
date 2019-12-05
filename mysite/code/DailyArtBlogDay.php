<?php

use SilverStripe\ORM\FieldType\DBDatetime;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\ORM\DataObject;

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

	public function NextDay(){
		$currentDate = DBDatetime::now();
		$nextDate = $this->next_day($currentDate->Format('Y'),$this->Month,$this->Date);

		$dateObj = DBDate::create();
		$dateObj->setValue($nextDate);

		$day = DailyArtBlogDay::get()->filter(array('Month' => $dateObj->Format('m'), 'Date' => $dateObj->Format('d')))->First();
		return $day;
	}

	public function NextPage(){
		$currentDate = DBDatetime::now();
		$nextDate = $this->next_day($currentDate->Format('Y'),$this->Month,$this->Date);

		$dateObj = DBDate::create();
		$dateObj->setValue($nextDate);

		$day = DailyArtBlogDay::get()->filter(array('Month' => $dateObj->Format('M'), 'Date' => $dateObj->Format('d')))->First();
		//print_r($day->getLatestPost());
		return $day->getLatestPost();
	}
	public function PreviousDay(){
		$currentDate = DBDatetime::now();

		/*	public function day_before($fyear, $fmonth, $fday){
		return date ("Y-m-d", mktime (0,0,0,$fmonth,$fday-1,$fyear));
	}
	*/
		$nextDate = $this->day_before($currentDate->Format('Y'),$this->Month,$this->Date);

		$dateObj = DBDate::create();
		$dateObj->setValue($nextDate);

		$day = DailyArtBlogDay::get()->filter(array('Month' => $dateObj->Format('M'), 'Date' => $dateObj->Format('d')))->First();
		return $day;
	}
	public function PreviousPage(){
		$currentDate = DBDatetime::now();
		$nextDate = $this->day_before($currentDate->Format('Y'),$this->Month,$this->Date);


		$dateObj = DBDate::create();
		$dateObj->setValue($nextDate);
		//print_r($dateObj->Format('M'));

		$day = DailyArtBlogDay::get()->filter(array('Month' => $dateObj->Format('M'), 'Date' => $dateObj->Format('M')))->First();



		//print_r($day->getLatestPost());
		return $day->getLatestPost();
	}

	private function day_before($fyear, $fmonth, $fday){
		return date ("Y-m-d", mktime (0,0,0,$fmonth,$fday-1,$fyear));
	}

	private function next_day($fyear, $fmonth, $fday){
		return date ("Y-m-d", mktime (0,0,0,$fmonth,$fday+1,$fyear));
	}
}
