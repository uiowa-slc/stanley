<?php

class DailyArtBlog extends Blog {

	private static $db = array(

	);

	private static $allowed_children = array(
		'DailyArtBlogPost'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}


}

class DailyArtBlog_Controller extends Blog_Controller {
    // private static $allowed_actions = array('day');

    // private static $url_handlers = array(
    //     'day/$Month/$Day' => 'day'
    // );

    public function index(){

    	$currentDate = SS_Datetime::now();
    	$mostRecentPost = $this->getBlogPosts()->First();
    	//$oldestPost = DailyArtBlogPost::get()->sort('"PublishDate" ASC')->First();
    	//print_r($oldestPost->obj('PublishDate')->Format('Y'));
    	//$years = range(date("Y"), $oldestPost->obj('PublishDate')->Format('Y'));
    	$years = range(date("Y"), 2016);
    	$posts = new ArrayList();

    	$mostRecentPostDate = $mostRecentPost->obj('PublishDate');
    	
    	foreach($years as $year){
    		$yearPosts = $this->getArchivedBlogPosts($year, $month = $currentDate->Format('n'), $currentDate->Format('j'));
    		$posts->merge($yearPosts);
    	}

    	$data = new ArrayData(
    		array(
    			'CurrentDayPosts' => $posts
    		)

    	);

    	return $this->customise($data)->renderWith(array('DailyArtBlog', 'Page'));
    	//redirect to an individual day?
    	//return $this->redirect($this->Link().'day/'.$mostRecentPostDate->Format('n').'/'.$mostRecentPostDate->Format('j'));


    }


    public function NextPage(){
    	$currentDate = SS_Datetime::now();
    	$nextDay = $currentDate->next_day($currentDate->Format('Y'),$currentDate->Format('n'),$currentDate->Format('j'));

    	$nextDayObj = DailyArtBlogDay::create();
    	$nextDayObj->Date = $nextDay;
    	// print_r($nextDayObj->obj('Date'));
    	return $nextDayObj->getLatestDailyArtBlogPost();
    }

    public function PreviousPage(){
    	$currentDate = SS_Datetime::now();
    	$nextDay = $currentDate->day_before($currentDate->Format('Y'),$currentDate->Format('n'),$currentDate->Format('j'));

    	$nextDayObj = DailyArtBlogDay::create();
    	$nextDayObj->Date = $nextDay;
    	// print_r($nextDayObj->obj('Date'));
    	return $nextDayObj->getLatestDailyArtBlogPost();
    }

    //Here be dragons and olde scheme where we do /blog/day/4/3
    // public function day() {

    // 	$currentDate = SS_Datetime::now();

    // 	$month = $this->getRequest()->param('Month');
    // 	$day = $this->getRequest()->param('Day');
    // 	$date = Date::create();

    // 	$date->setValue($currentDate->Format('Y').'-'.$month.'-'.$day);

    // 	$dayObj = DailyArtBlogDay::create();
    // 	$dayObj->Date = $date;


    // 	$data = new ArrayData(
    // 		array(
    // 			'Day' => $dayObj,
    // 			'NextPage' => ''

    // 		)
    // 	);

    // 	return $this->customise($data)->renderWith(array('DailyArtBlog_day', 'Page'));
    //     /* more processing goes here */
    // }

}