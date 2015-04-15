<?php
class ArtworkPage extends Page {
	static $db = array(

		'ArtworkArtist' => 'Text',
		'ArtworkArtistLifespan' => 'Text',
		'ArtworkTitle' => 'Text',
		'ArtworkYear' => 'Text',
		'ArtworkMedium' => 'Text',
		'ArtworkDimensions' => 'Text',
		'ArtworkCollectionInfo' => 'Text',
		'ArtworkText' => 'HTMLText',
		'VideoLink' => 'Text',

	);
	static $has_one = array(

		'ArtworkImage' => 'Image',

	);

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");
		$fields->removeByName("Content");
		$fields->removeByName("Photo");

		$fields->addFieldToTab('Root.Main', new UploadField('ArtworkImage', 'Artwork Image'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkArtist','Artwork Artist'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkArtistLifespan','Artist Lifespan Information'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkTitle','Artwork Title'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkYear','Artwork Year'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkMedium','Artwork Medium'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkDimensions','Artwork Dimensions'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkCollectionInfo','Collections Information'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('ArtworkText','Artwork HTML Text'));
		$fields->addFieldToTab('Root.Main', new TextField('VideoLink', 'Enter full youtube video url here'));

		return $fields;
	}
}

class ArtworkPage_Controller extends Page_Controller {

}
?>