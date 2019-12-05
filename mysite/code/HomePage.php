<?php

use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Security\Permission;
use SilverStripe\Forms\GridField\GridFieldAddNewButton;
use SilverStripe\Forms\GridField\GridFieldDeleteAction;
use SilverStripe\Forms\GridField\GridField;

class HomePage extends Page {

	private static $db = array(

	);

	private static $has_one = array(

	);



	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");

		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));

		if(!Permission::check('ADMIN')){
			$gridFieldConfig->removeComponentsByType(GridFieldAddNewButton::class);
			$gridFieldConfig->removeComponentsByType(GridFieldDeleteAction::class);
		}

		$CarouselItem = new GridField("CarouselItem", "Carousel Items", CarouselItem::get(), $gridFieldConfig);
		$fields->addFieldToTab("Root.Carousel", $CarouselItem);

		return $fields;

	}
	public function CarouselItems() {
		$features = CarouselItem::get();
		return $features;
	}
}
