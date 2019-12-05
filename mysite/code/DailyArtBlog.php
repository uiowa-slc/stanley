<?php

use SilverStripe\Blog\Model\Blog;
use SilverStripe\ORM\FieldType\DBDatetime;
use SilverStripe\View\ArrayData;
use SilverStripe\Blog\Model\BlogController;

class DailyArtBlog extends Blog {

	private static $db = array(

	);

	private static $allowed_children = array(
		'DailyArtBlogPost'
	);
    private static $singular_name = 'Art of the Day Blog';

    private static $plural_name = 'Art of the Day Blogs';
    private static $show_in_sitetree = true;

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}

    public function getLumberjackTitle() {
        return 'Art of the Day Posts';
    }

}

