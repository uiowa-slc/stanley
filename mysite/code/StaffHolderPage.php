<?php
use SilverStripe\Forms\CheckboxField;
use SilverStripe\UserForms\Model\UserDefinedForm;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridField;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class StaffHolderPage extends Page {

	private static $db = array(
    'HideImages' => 'Boolean',
	);

	private static $has_one = array(

	);
	private static $icon_class = 'font-icon-torsos-all';
	// private static $belongs_many_many = array(
	// 	"Teams" => "StaffTeam"
	// );

	private static $allowed_children = array("StaffPage","*Page", UserDefinedForm::class);

	public function getCMSFields(){
		$f = parent::getCMSFields();

		// $f->addFieldToTab('Root.Main', new CheckboxSetField("Teams", 'Show the following staff teams on this page:', StaffTeam::get()->map('ID', 'Title')), 'Content');

		//$f->removeByName("Content");
    $f->addFieldToTab('Root.Main', new CheckboxField('HideImages', 'Hide Profile Images'));

		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));


		$gridField = new GridField("StaffTeam", "Staff Teams", StaffTeam::get(), $gridFieldConfig);
		$f->addFieldToTab("Root.Main", $gridField, "Content"); // add the grid field to a tab in the CMS
		      $this->extend('updateCMSFields', $f);
		return $f;
	}

	public function Children(){
		$staffPages = parent::Children()->sort('LastName');
		$this->extend('alterChildren', $staffPages);
		return $staffPages;
	}

	public function StaffTeams(){
		$teams = StaffTeam::get()->sort('Name DESC');
		return $teams;
	}
}

