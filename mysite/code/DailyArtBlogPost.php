<?php

class DailyArtBlogPost extends BlogPost {

	private static $db = array(

	);

	private static $allowed_children = array(

	);

	private static $extensions = array(
    
    );


	public function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}


}

class DailyArtBlogPost_Controller extends BlogPost_Controller {

}