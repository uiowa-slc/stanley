<?php

class PopulateCollectionsPageSubheadingFieldBuildTask extends BuildTask {

	protected $title = 'Populate collections page subheadings';

	protected $enabled = true;

	function run($request) {
		$collectionPages = CollectionsPage::get();

		foreach($collectionPages as $collectionPage){

			$collectionPage->ChildrenSubheading = 'Collection Highlights';

			if ($collectionPage->isPublished()) {
				$collectionPage->doPublish('Stage', 'Live');
			}	
		}



		echo "<h2>Done</h2>";

	}

}