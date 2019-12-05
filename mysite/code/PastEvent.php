<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;


class PastEvent extends CalendarEvent {
	private static $db = array(

	);

	private static $has_one = array (
		'Image' => Image::class
	);
	private static $defaults = array (
		'ShowInMenus' => false
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");
		$fields->removeByName("AssociatedPageID");

		$fields->addFieldToTab('Root.Main', new UploadField(Image::class), 'Content');
		return $fields;
	}
	public function validURLSegment() {
		return true;
	}
	public function syncLinkTracking() {
		return null;
	}


}
