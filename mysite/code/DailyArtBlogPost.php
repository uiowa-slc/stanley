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
    	$blogDay = DataObject::get_one('DailyArtBlogDay', array('Month' => $this->obj('PublishDate')->format('m'), 'Date' => $this->obj('PublishDate')->format('d')));
    	if($blogDay){
    		$blogDay->HasPost = 1;
    		$this->DailyArtBlogDayID = $blogDay->ID;
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
	    $day = DataObject::get_one('DailyArtBlogDay', array('Date' => $postDate->Format('d'), 'Month' => $postDate->Format('m')));
	    $posts = $day->getPosts()->exclude(array('ID' => $this->ID));
	    return $posts;
	}

}

class DailyArtBlogPost_Controller extends BlogPost_Controller {

	public function init() {
		parent::init();

	}

}
