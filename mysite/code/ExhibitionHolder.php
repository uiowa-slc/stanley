<?php

class ExhibitionHolder extends Page {

	private static $extensions = array(
        'LumberjackExhibition',
    );

	private static $db = array(

	);

	private static $has_one = array(

	);
	private static $icon = 'mysite/icons/painting.png';

	private static $allowed_children = array('ExhibitionPage', 'ExhibitionHolder', 'RedirectorPage', 'DailyArtBlog');


	public function getCMSFields() {


		$fields = parent::getCMSFields();

		$pages = SiteTree::get()->filter(array(
			'ParentID' => $this->owner->ID,
		));


		$fields->removeByName("Credit");
		$fields->removeByName("Content");
		return $fields;

	}

	


	public function getPastExhibitions() {
		$now = date('Y-m-d');
		return ExhibitionPage::get()->filter(array(
				'EndDate:LessThan' => $now,
			))->sort('EndDate DESC');

	}

}

class ExhibitionHolder_Controller extends Page_Controller {
	private static $allowed_actions = array(
		'upcoming',
		'past',
		'year',
	);

	private static $url_handlers = array(
		'index'       => 'current',
		'upcoming'    => 'upcoming',
		'past'        => 'past',
		'year//$Year' => 'year',

	);

	public function init() {
		parent::init();

	}

	public function index() {
		$exhibitions        = $this->Children()->sort('StartDate', 'DESC');
		$paginatedList      = new ArrayList();
		$currentExhibitions = new PaginatedList($paginatedList, $this->request);
		$currentExhibitions->setPageLength(10);
		foreach ($exhibitions as $exhibition) {
			if ($exhibition->IsCurrent()) {
				$currentExhibitions->push($exhibition);
			} else if ((!$exhibition->StartDate) && (!$exhibition->EndDate)) {
				$currentExhibitions->push($exhibition);
			}
		}
		$Data = array(
			'PaginatedList' => $currentExhibitions,
		);

		return $this->customise($Data)->renderWith(array('ExhibitionHolder', 'Page'));
	}

	public function upcoming() {
		$exhibitions         = $this->Children()->sort('StartDate', 'ASC');
		$paginatedList       = new ArrayList();
		$upcomingExhibitions = new PaginatedList($paginatedList, $this->request);
		$upcomingExhibitions->setPageLength(10);
		foreach ($exhibitions as $exhibition) {
			if ($exhibition->obj("StartDate")->InFuture()) {
				$upcomingExhibitions->push($exhibition);
			}
		}
		$Data = array(
			'PaginatedList' => $upcomingExhibitions,
		);

		return $this->customise($Data)->renderWith(array('ExhibitionHolder', 'Page'));
	}

	public function past() {

		$now = date('Y-m-d');

		$exhibitions     = $this->getPastExhibitions();
		$pastExhibitions = new PaginatedList($exhibitions, $this->request);
		$pastExhibitions->setPageLength(10);

		$Data = array(
			'PaginatedList' => $pastExhibitions,
		);

		return $this->customise($Data)->renderWith(array('ExhibitionHolder', 'Page'));
	}

	public function year() {

		if (!$this->getRequest()->param('Year')) {
			return $this->redirect($this->Link());
		}

		$year          = $this->getRequest()->param('Year');
		$yearFormatted = intval($year).'-01-01';

		$nextYear          = $year+1;
		$nextYearFormatted = $nextYear.'-01-01';

		$now = date('Y-m-d');

		$exhibitions = ExhibitionPage::get()->filter(array(
				'StartDate:GreaterThanOrEqual' => $yearFormatted,
				'StartDate:LessThan'           => $nextYearFormatted,
				'EndDate:LessThan'             => $now,
			))->sort('EndDate DESC');

		$paginatedList = new PaginatedList($exhibitions, $this->request);
		$paginatedList->setPageLength(10);

		$Data = array(
			'PaginatedList' => $paginatedList,
			'ActiveYear'    => $year,
		);

		return $this->customise($Data)->renderWith(array('ExhibitionHolder', 'Page'));
	}
	public function ArchiveYears() {
		$exhibitions     = $this->getPastExhibitions();
		$exhibitionYears = new ArrayList();

		foreach ($exhibitions as $exhibition) {
			$exhibitionYear          = new DataObject;
			$exhibitionStartDateTime = $exhibition->obj("StartDate");

			if ($exhibitionStartDateTime->Year()) {

				$exhibitionYear->Year = $exhibitionStartDateTime->Year();
				$exhibitionYear->Link = $this->Link("year/".$exhibitionYear->Year);

				if(($this->getRequest()->param('Action') == "year") && (is_numeric($this->getRequest()->param('Year')))){

					//print_r(intval($eventYear->Year).' == '.intval($this->getRequest()->param('ID')).'<br />');
					if(intval($exhibitionYear->Year) == intval($this->getRequest()->param('Year'))){
						$exhibitionYear->Active = 'active';
					}else{
						$exhibitionYear->Active = 'inactive';
					}
					
				}
				$exhibitionYears->push($exhibitionYear);
			}
		}

		//print_r($exhibitionYears);

		$exhibitionYears->removeDuplicates("Year");

		return $exhibitionYears->sort('Year', 'DESC');

	}
}

?>