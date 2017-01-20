<?php

class DailyArtBlogPost extends BlogPost {

	private static $db = array(

	);
	private static $has_one = array(
		'DailyArtImage' => 'Image',
		'DailyArtBlogDay' => 'DailyArtBlogDay'
	);


	private static $allowed_children = array(

	);

	private static $extensions = array(

    );

    protected function onBeforeWrite(){

    	

    	$blogDay = DataObject::get_one('DailyArtBlogDay', array('Month' => $this->obj('PublishDate')->format('m'), 'Day' => $this->obj('PublishDate')->format('d')));

    	if($blogDay){
    			// $bool = Boolean::create('HasPost', 1);
    		$blogDay->HasPost = 1;
    		$this->DailyArtBlogDayID = $blogDay->ID;
    		//$blogDay->DailyArtBlogPosts()->add($this);

    		// if($blogDay->LatestPostID != 0){
    		//SS_Log::log(print_r($blogDay->DailyArtBlogPosts(), true), SS_Log::NOTICE);
	    	// 	$blogDayLatestPost = DailyArtBlogPost::get()->filter(array('ID' => $blogDay->LatestPostID))->First();
	    	// 	SS_Log::log(print_r($blogDay, true), SS_Log::NOTICE);
	    	// 	if($blogDayLatestPost->PublishDate < $this->PublishDate){
	    		
	    	// 		$blogDay->LatestPostID = $this->ID;
	    	// 		$blogDay->write();
	    	// 	}    			
    		// }else{

	    	// 	$blogDay->LatestPostID = $this->ID;
	    	// 	$blogDay->write();
	    	// }

    	}
    	parent::onBeforeWrite();
    	
    }


	public function getCMSFields() {
		$fields = parent::getCMSFields();


		$fields->removeByName("FeaturedImage");
		$fields->removeByName("Metadata");
		$fields->removeByName("Photo");
		$fields->removeByName("CustomSummary");

		$fields->addFieldToTab('Root.Main', new UploadField('DailyArtImage', 'Artwork Image'),'Content');

		return $fields;
	}

	public function getPublishDateOnly(){
		$date = Date::create();
		$date->setValue($this->obj('PublishDate')->format('Y-m-d'));
		return $date;
	}

	public function getOtherPosts(){

		$postDate = $this->obj('PublishDate');

		// $dateObj = Date::create();
	 //    $dateObj->setValue($postDate->Format('Y-m-d'));

	    $day = DataObject::get_one('DailyArtBlogDay', array('Date' => $postDate->Format('d'), 'Month' => $postDate->Format('m')));
	    // $day->Date = $dateObj;

	    $posts = $day->getPosts()->exclude(array('ID' => $this->ID));

	    return $posts;

	}


	// public function NextPage() {
	// 	$postDate = $this->obj('PublishDate');
	// 	$currentDate = $currentDate = SS_Datetime::now();

	// 	$nextDay = $postDate->next_day($currentDate->Format('Y'),$postDate->Format('m'),$postDate->Format('d'));

	// 	$dateObj = Date::create();
	// 	$dateObj->setValue($nextDay);

	// 	$day = DailyArtBlogDay::create();
	// 	$day->Date = $dateObj;

	// 	return $day->getLatestDailyArtBlogPost();

		
	// }
	// public function PreviousPage() {
	// 	$postDate = $this->obj('PublishDate');
	// 	$currentDate = $currentDate = SS_Datetime::now();

	// 	$nextDay = $postDate->day_before($currentDate->Format('Y'),$postDate->Format('m'),$postDate->Format('d'));

	// 	$dateObj = Date::create();
	// 	$dateObj->setValue($nextDay);

	// 	$day = DailyArtBlogDay::create();
	// 	$day->Date = $dateObj;

	// 	return $day->getLatestDailyArtBlogPost();

		
	// }
}

class DailyArtBlogPost_Controller extends BlogPost_Controller {

	private static $allowed_actions = array (
	);



	public function init() {
		parent::init();

	}

}
