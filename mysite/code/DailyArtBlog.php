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
 /**
     * @var array
     */
    private static $allowed_actions = array(

    );

    /**
     * @var array
     */
    private static $url_handlers = array(

    );

}