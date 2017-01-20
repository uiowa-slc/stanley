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

	// public function getLatestDailyArtBlogPost(){
	// 	return $this->getDailyArtBlogPosts()->First();
	// }

	// public function getDailyArtBlogPosts(){
	// 	$blog = DailyArtBlog::get()->First();
	// 	$years = range(date("Y"), 2016);
	// 	$posts = new ArrayList();
	// 	//print_r($this->obj('Date'));
 //    	foreach($years as $year){
 //    		$yearPosts = $blog->getArchivedBlogPosts($year, $month = $this->obj('Date')->Format('n'), $this->obj('Date')->Format('j'));
 //    		$posts->merge($yearPosts);
 //    	}

 //    	return $posts;

	//}
	public function getPosts(){
		return DailyArtBlogPost::get()->filter(array('DailyArtBlogDayID' => $this->ID));
	}
	public function getLatestPost(){
		return DailyArtBlogPost::get()->filter(array('DailyArtBlogDayID' => $this->ID))->First();
	}
	// public function getLink(){
	// 	$blog = DailyArtBlog::get()->First();
	// 	$date = $this->obj('Date');
	// 	$link = $blog->Link().'day/'.$date->Format('n').'/'.$date->Format('j');
	// 	return $link;
	// }

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