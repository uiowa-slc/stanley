<?php

use SilverStripe\CMS\Model\RedirectorPage;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\DataObject;

class ExhibitionHolder extends Page {

	private static $extensions = array(
        // 'LumberjackExhibition',
    );

	private static $db = array(

	);

	private static $has_one = array(

	);

	private static $show_in_site_tree = true;
	private static $icon_class = 'font-icon-sun';

	private static $allowed_children = array('ExhibitionPage','LegaciesPage', 'ExhibitionHolder', RedirectorPage::class, 'DailyArtBlog', 'CollectionsHolder', 'CollectionsPage');


	public function getCMSFields() {


		$fields = parent::getCMSFields();

		$pages = SiteTree::get()->filter(array(
			'ParentID' => $this->owner->ID,
		));


		$fields->removeByName("Credit");
		return $fields;

	}




	public function getPastExhibitions() {
		$now = date('Y-m-d');
		return ExhibitionPage::get()->filter(array(
				'EndDate:LessThan' => $now,
			))->sort('EndDate DESC');

	}

	public function OtherChildren(){
		$pages = $this->Children()->exclude(array('ClassName' => 'ExhibitionPage'));
		return $pages;
	}

}

?>
