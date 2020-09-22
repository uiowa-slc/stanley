<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\CheckboxSetField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\View\Parsers\URLSegmentFilter;

class StaffPage extends Page {

	private static $db = array(
		"FirstName" => "Text",
		"MiddleName" => "Text",
		"LastName" => "Text",
		"Position" => "Text",
		"EmailAddress" => "Text",
		"Phone" => "Text",
		"ContactFor" => "HTMLText",

	);

	private static $has_one = array(
		"Photo" => Image::class,
	);

	private static $belongs_many_many = array(
		"Teams" => "StaffTeam",
	);
	private static $defaults = array(
		'Content' => '',
		'ShowInMenus' => 0,
		'ShowInSearch' => 0,
	);
	private static $icon_class = 'font-icon-p-profile';
	private static $owns = array('Photo');

	public function getCMSFields() {
		SiteTree::disableCMSFieldsExtensions();
		$fields = parent::getCMSFields();
		SiteTree::enableCMSFieldsExtensions();

		$fields->removeByName('Title');
		$fields->removeByName('MenuTitle');
		$fields->removeByName("Content");
		$fields->removeByName("Metadata");
		$fields->removeByName("HideSideNav");
		$fields->addFieldToTab("Root.Main", new UploadField("Photo", "Photo (portrait orientation preferred)"));
		$fields->addFieldToTab("Root.Main", new TextField("FirstName", "First Name"));
		$fields->addFieldToTab("Root.Main", new TextField("MiddleName", "Middle initial/name"));
		$fields->addFieldToTab("Root.Main", new TextField("LastName", "Last Name"));
		$fields->addFieldToTab("Root.Main", new TextField("Position", "Position"));
		$fields->addFieldToTab("Root.Main", new TextField("EmailAddress", "Email address"));
		$fields->addFieldToTab("Root.Main", new TextField("Phone", "Phone (XXX-XXX-XXXX)"));

		$fields->addFieldToTab("Root.Main", new CheckboxSetField("Teams", 'Team', StaffTeam::get()->map('ID', 'Name')));

		//$fields->addFieldToTab("Root.Main", new LiteralField("TeamLabel", ''));
		$fields->addFieldToTab("Root.Main", HTMLEditorField::create("ContactFor", "Contact " . $this->FirstName . " for: (bulleted list preferred)")->setRows(3)->addExtraClass('stacked'));
		// $fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Biography"));

		$this->extend('updateCMSFields', $fields);
		$fields->removeByName("BackgroundImage");
		return $fields;

	}
	public function FullNameTruncated() {
		$lastName = $this->owner->LastName;
		$fullName = $this->owner->FirstName . ' ' . substr($lastName, 0, 1) . '.';

		return $fullName;
	}
	public function onBeforeWrite() {
		$filter = new URLSegmentFilter();

		$this->Title = $this->FirstName . ' ' . $this->LastName;
		$this->URLSegment = $filter->filter($this->Title);

		// CAUTION: You are required to call the parent-function, otherwise
		// SilverStripe will not execute the request.
		parent::onBeforeWrite();
	}
	//private static $allowed_children = array("");

}
