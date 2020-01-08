<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class ArtworkPage extends Page {
	private static $db = array(


		'ArtworkArtistLifespan' => 'Text',
		'ArtworkTitle' => 'HTMLText',
		'ArtworkYear' => 'Text',
		'ArtworkMedium' => 'Text',
		'ArtworkDimensions' => 'Text',
		'ArtworkCollectionInfo' => 'Text',
		'ArtworkText' => 'HTMLText',
		'ArtCredit' => 'Text',

	);
	private static $has_one = array(

		'ArtworkImage' => Image::class,

	);

	private static $owns = array('ArtworkImage');

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");
		$fields->removeByName("Content");
		$fields->removeByName("Photo");
		$fields->removeByName("Credit");

		$fields->addFieldToTab('Root.Main', new UploadField('ArtworkImage', 'Artwork Image'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtCredit','Image Credit'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkArtistLifespan','Artist Lifespan Information'));

		$artworkTitleField =  new HTMLEditorField('ArtworkTitle','Artwork Title');
		$artworkTitleField->setRows(3);

		$fields->addFieldToTab('Root.Main', $artworkTitleField);
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkYear','Artwork Year'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkMedium','Artwork Medium'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkDimensions','Artwork Dimensions'));
		$fields->addFieldToTab('Root.Main', new TextField('ArtworkCollectionInfo','Collections Information'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('ArtworkText','Artwork Description'));

		return $fields;
	}
}

?>
