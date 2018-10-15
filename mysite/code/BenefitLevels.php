<?php
class BenefitLevels extends Page {
	private static $db = array(
		"Level1Title" => "Text",
		"Level1" => "HTMLText",
		"Level2Title" => "Text",
		"Level2" => "HTMLText",
		"Level3Title" => "Text",
		"Level3" => "HTMLText",
		"Level4Title" => "Text",
		"Level4" => "HTMLText",
		"Level5Title" => "Text",
		"Level5" => "HTMLText",
		"Level6Title" => "Text",
		"Level6" => "HTMLText",
		"Level7Title" => "Text",
		"Level7" => "HTMLText",
		"Level8Title" => "Text",
		"Level8" => "HTMLText",
		"Level9Title" => "Text",
		"Level9" => "HTMLText",
		"Level10Title" => "Text",
		"Level10" => "HTMLText",

	);
	private static $has_one = array(
	);


	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName("Metadata");

		$fields->addFieldToTab('Root.LevelOne', new TextField('Level1Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelOne', new HTMLEditorField('Level1', 'Content'));

		$fields->addFieldToTab('Root.LevelTwo', new TextField('Level2Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelTwo', new HTMLEditorField('Level2', 'Content'));

		$fields->addFieldToTab('Root.LevelThree', new TextField('Level3Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelThree', new HTMLEditorField('Level3', 'Content'));

		$fields->addFieldToTab('Root.LevelFour', new TextField('Level4Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelFour', new HTMLEditorField('Level4', 'Content'));

		$fields->addFieldToTab('Root.LevelFive', new TextField('Level5Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelFive', new HTMLEditorField('Level5', 'Content'));

		$fields->addFieldToTab('Root.LevelSix', new TextField('Level6Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelSix', new HTMLEditorField('Level6', 'Content'));

		$fields->addFieldToTab('Root.LevelSeven', new TextField('Level7Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelSeven', new HTMLEditorField('Level7', 'Content'));

		$fields->addFieldToTab('Root.LevelEight', new TextField('Level8Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelEight', new HTMLEditorField('Level8', 'Content'));

		$fields->addFieldToTab('Root.LevelNine', new TextField('Level9Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelNine', new HTMLEditorField('Level9', 'Content'));

		$fields->addFieldToTab('Root.LevelTen', new TextField('Level10Title','Level 1 Title'));
		$fields->addFieldToTab('Root.LevelTen', new HTMLEditorField('Level10', 'Content'));


	return $fields;
	}
}

class BenefitLevels_Controller extends Page_Controller {

}
?>
