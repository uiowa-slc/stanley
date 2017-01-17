<?php

class DailyArtBlogPost extends BlogPost {

	private static $db = array(

	);
	private static $has_one = array(
		'DailyArtImage' => 'Image',
	);

	private static $allowed_children = array(

	);

	private static $extensions = array(

    );


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

		$dateObj = Date::create();
	    $dateObj->setValue($postDate->Format('Y-m-d'));

	    $day = DailyArtBlogDay::create();
	    $day->Date = $dateObj;

	    $posts = $day->getDailyArtBlogPosts()->exclude(array('ID' => $this->ID));

	    return $posts;

	}

	public function NextPage() {
		$postDate = $this->obj('PublishDate');
		$currentDate = $currentDate = SS_Datetime::now();

		$nextDay = $postDate->next_day($currentDate->Format('Y'),$postDate->Format('m'),$postDate->Format('d'));

		$dateObj = Date::create();
		$dateObj->setValue($nextDay);

		$day = DailyArtBlogDay::create();
		$day->Date = $dateObj;

		return $day->getLatestDailyArtBlogPost();

		
	}
	public function PreviousPage() {
		$postDate = $this->obj('PublishDate');
		$currentDate = $currentDate = SS_Datetime::now();

		$nextDay = $postDate->day_before($currentDate->Format('Y'),$postDate->Format('m'),$postDate->Format('d'));

		$dateObj = Date::create();
		$dateObj->setValue($nextDay);

		$day = DailyArtBlogDay::create();
		$day->Date = $dateObj;

		return $day->getLatestDailyArtBlogPost();

		
	}
}

class DailyArtBlogPost_Controller extends BlogPost_Controller {

	private static $allowed_actions = array (
	);



	public function init() {
		parent::init();

	}

}
