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


}

class DailyArtBlogPost_Controller extends BlogPost_Controller {

	private static $allowed_actions = array (
	);

	public function NextPage() {
		$page = Page::get()->filter(array(
			'ParentID' => $this->owner->ParentID,
			'Sort:GreaterThan' => $this->owner->Sort,
		))->First();
		return $page;
	}
	public function PreviousPage() {
		$page = Page::get()->filter(array(
			'ParentID' => $this->owner->ParentID,
			'Sort:LessThan' => $this->owner->Sort,
		))->Last();
		return $page;
	}

	public function init() {
		parent::init();

	}

}
