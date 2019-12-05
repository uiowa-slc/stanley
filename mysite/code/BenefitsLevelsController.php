<?php
class BenefitLevelsController extends PageController {

	private static $url_handlers = array("table" => "table");

	private static $allowed_actions = array("table");



	public function table(){

		return $this->renderWith(array('BenefitLevels_table', 'Page'));


	}

}
