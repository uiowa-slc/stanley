<?php

class UimaEvent extends CalendarEvent {
	private static $db = array(
		"SubTitle" => "Text",
		"Cost" => "Text",
		"Contact" => "Text",
		"Address" => "Text",
		'CreditName' => 'Text',
		'CreditArtistLifespan' => 'Text',
		'CreditTitle' => 'HTMLText',
		'CreditYear' => 'Text',
		'CreditMedium' => 'Text',
		'CreditDimensions' => 'Text',
		'CreditCollectionInfo' => 'Text',
	);

	private static $has_one = array (
		'Image' => 'Image',
		'CreditThumb' => 'Image',
		"AssociatedPage" => "SiteTree",
	);
	private static $defaults = array (
		'ShowInMenus' => false
	);




	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");
		$fields->removeByName("AssociatedPageID");

		$fields->addFieldToTab('Root.Main', new TextField( 'Address', 'Address'), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField( 'SubTitle', 'Subheading'), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField( 'Cost', 'Cost'), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField( 'Contact', 'Contact'), 'Content');
		$fields->addFieldToTab('Root.Main', new UploadField('Image'), 'Content');

		$fields->addFieldToTab('Root.Credit', new UploadField('CreditThumb', 'Credit: Artwork Thumbnail'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditName','Credit: Artist Name'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditArtistLifespan','Credit: Artist Lifespan Information'));
		$creditTitleField =  new HTMLEditorField('CreditTitle','Credit Artwork Title');
		$creditTitleField->setRows(3);

		$fields->addFieldToTab('Root.Credit', $creditTitleField);
		$fields->addFieldToTab('Root.Credit', new TextField('CreditYear','Credit: Artwork Year'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditMedium','Credit: Artwork Medium'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditDimensions','Credit: Artwork Dimensions'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditCollectionInfo','Credit: Collections Information'));
		$fields->push( new TreeDropdownField("AssociatedPageID", "link for credit", "SiteTree"));

		return $fields;
	}

	public function getFirstStartDate(){
		$dateTime = $this->DateTimes()->sort('StartDate')->First();
		return $dateTime->StartDate;
	}
	public function getFirstEndDate(){
		$dateTime = $this->DateTimes()->sort('StartDate')->First();
		return $dateTime->EndDate;
	}
}

class UimaEvent_Controller extends CalendarEvent_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}




}
