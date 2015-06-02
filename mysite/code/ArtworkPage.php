<?php
class ArtworkPage extends Page {
	private static $db = array(


		'ArtworkArtistLifespan' => 'Text',
		'ArtworkTitle' => 'Text',
		'ArtworkYear' => 'Text',
		'ArtworkMedium' => 'Text',
		'ArtworkDimensions' => 'Text',
		'ArtworkCollectionInfo' => 'Text',
		'ArtworkText' => 'HTMLText',

	);
	private static $has_one = array(

		'ArtworkImage' => 'Image',

	);

	

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");
		$fields->removeByName("Content");
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");

		$fields->addFieldToTab('Root.Main', new UploadField('ArtworkImage', 'Artwork Image'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkArtistLifespan','Artist Lifespan Information'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkTitle','Artwork Title'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkYear','Artwork Year'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkMedium','Artwork Medium'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkDimensions','Artwork Dimensions'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkCollectionInfo','Collections Information'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('ArtworkText','Artwork HTML Text'));

		return $fields;
	}
}

class ArtworkPage_Controller extends Page_Controller {

}
?>