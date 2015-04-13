<?php

class ExhibitionHolder extends Page {

	public static $db = array(

	);

	public static $has_one = array(

	);

	static $allowed_children = array('ExhibitionPage', 'ExhibitionHolder', 'RedirectorPage');


	function getCMSFields() {
		$fields = parent::getCMSFields();

	   return $fields;

	}

}

class ExhibitionHolder_Controller extends Page_Controller {
	private static $allowed_actions = array('exhibition');

	private static $url_handlers = array(
        'exhibition/$StartDate/$EndDate' => 'payroll',
        
    );
    $exhibitions = ExhibitionPage::get();

	public function init() {
		parent::init();

	}

	public function upcoming(){
		foreach ($exhibitions as $exhibition) {
				if ($exhibition->StartDate > TODAY) {
					$upcomingExhibitions = $upcomingExhibitions->push($exhibition);
				}
			}
			return $upcomingExhibitions;
		}
	}
	public function past(){
		foreach ($exhibitions as $exhibition) {
				if ($exhibition->EndDate < TODAY) {
					$pastExhibitions = $pastExhibitions->push($exhibition);
				}
			}
			return $pastExhibitions;
		}
	}
	public function current(){
		
	}

}

?>