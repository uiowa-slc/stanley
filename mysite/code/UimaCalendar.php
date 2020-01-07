<?php

use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\DataObject;
use SilverStripe\ORM\DataList;
use SilverStripe\Lumberjack\Model\Lumberjack;
use SilverStripe\Forms\FieldList; 
use SilverStripe\Forms\GridField\GridFieldDataColumns;

class UimaCalendar extends Calendar {
	private static $db = array(

	);

	private static $casting = array(
		'FilterHeader' => 'Text'
	);

	private static $allowed_children = array(
		'UimaEvent'
	);


    private static $singular_name = 'Stanley Calendar';


}


