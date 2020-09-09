<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\GridField\GridField;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
use SilverStripe\ORM\DataObject;
class StaffTeam extends DataObject {

	private static $db = array(
		'Name' => 'Text',
		'SortOrder' => 'Int'
	);

	private static $many_many = array(
		'StaffPages' => 'StaffPage'
		// 'StaffHolderPages' => 'StaffHolderPage'
	);
	private static $many_many_extraFields = array(
		'StaffPages' => array(
			'SortOrder' => 'Int',
		)
	);

	private static $belongs_many_many = array();

	private static $summary_fields = array(
		'Name' => 'Name',
	);

	private static $default_sort = array(
		'SortOrder'
	);

	public function getCMSFields() {
		$f = new FieldList();

		$f->push(new TextField('Name'));

		$conf = GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));

		$f->push(new GridField('StaffPages', 'StaffPages', $this->StaffPages(), $conf));
		return $f;

	}

	public function StaffPages(){
		return $this->getManyManyComponents('StaffPages')->sort('SortOrder');
	}

}
