<?php 
class CollectionsHolderController extends PageController {

	public function CollectionChildren() {
		return $this->Children()->filter(array('ClassName' => 'CollectionsPage'));
	}

	public function init() {
		parent::init();

	}

}