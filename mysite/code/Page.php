<?php
class Page extends SiteTree {

	private static $db = array(
		'CreditName' => 'Text',
		'CreditArtistLifespan' => 'Text',
		'CreditTitle' => 'HTMLText',
		'CreditYear' => 'Text',
		'CreditMedium' => 'Text',
		'CreditDimensions' => 'Text',
		'CreditCollectionInfo' => 'Text',
	);

	private static $has_one = array(
		"Photo" => "Image",
		'CreditThumb' => 'Image',
		"AssociatedPage" => "SiteTree",
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Metadata");
		$fields->addFieldToTab("Root.Main", new UploadField("Photo", "Main Page Photo (1200px x 400px"));

		$fields->addFieldToTab('Root.Credit', new UploadField('CreditThumb', 'Credit: Artwork Thumbnail'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditName','Credit: Artist Name'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditArtistLifespan','Credit: Artist Lifespan Information'));
		$creditTitleField =  new HTMLEditorField('CreditTitle','Credit Artwork Title');
		$creditTitleField->setRows(3);

		$fields->addFieldToTab('Root.Credit', $creditTitleField);
		// $fields->addFieldToTab('Root.Credit', new HTMLEditorField('CreditTitle','Credit: Artwork Title'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditYear','Credit: Artwork Year'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditMedium','Credit: Artwork Medium'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditDimensions','Credit: Artwork Dimensions'));
		$fields->addFieldToTab('Root.Credit', new TextField('CreditCollectionInfo','Credit: Collections Information'));
		$fields->push( new TreeDropdownField("AssociatedPageID", "Header image link credit", "SiteTree"));
		return $fields;

	}

	public function NiceName(){

		$niceNames = array(

			'Page' => null,
			'CollectionsPage' => 'Collection',
			'CollectionsHolder' => 'Collection List',
			'ArtworkPage' => 'Artwork Item',
			'BenefitLevels' => 'Benefit Levels',
			'CarouselItem' => null,
			'ExhibitionHolder' => 'Exhibition List',
			'ExhibitionPage' => 'Exhibition Item',
			'HomePage' => null,
			'NewsEntry' => 'News Item',
			'NewsHolder' => 'News List',
			'PastEvent' => 'Event',
			'PastEventsCalendar' => null,
			'SiteConfigExtension' => null
		);

		$niceClassName = $niceNames[$this->ClassName];
		return $niceClassName;


		print_r('nice name: '.$this->nice_name);
		if ($this->nice_name){
	   		return $this->nice_name;
		}
		else{
			return "not found";
		}


	}
}


class Page_Controller extends ContentController {

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
	private static $allowed_actions = array(
	);

	public function init() {
		parent::init();

		Requirements::block('event_calendar/javascript/calendar_widget.js');
		Requirements::block('framework/thirdparty/jquery/jquery.js');
	}

	public function DollarSign() {
		return "$";
	}




}
