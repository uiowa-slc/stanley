<?php
class NewsEntry extends BlogEntry implements MigratableObject{

	private static $db = array(

	);

	private static $has_one = array(
		"Photo" => "Image",
	);
	private static $belongs_many_many = array (
	);
	private static $has_many = array(
	);

	private static $allowed_children = array(

	);

	private static $singular_name = 'News Entry';

	private static $plural_name = 'News Entries';
	

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName("Photo");
		$fields->removeByName("Widgets");

		// $fields->addFieldToTab("Root.Main", new UploadField("Photo", "Photo for News Article"));

		return $fields;
	}
    /**
     * {@inheritdoc}
     */
    public function canCreate($member = null)
    {
        return false;
    }

    /**
     * {@inheritdoc}
     */
    public function up()
    {
  
        //Migrate comma separated tags into BlogTag objects.
        foreach ($this->TagNames() as $tag) {
            $existingTag = BlogTag::get()->filter(array('Title' => $tag, 'BlogID' => $this->ParentID));
            if ($existingTag->count()) {
                //if tag already exists we will simply add it to this post.
                $tagObject = $existingTag->First();
            } else {
                //if the tag is now we create it and add it to this post.
                $tagObject = new BlogTag();
                $tagObject->Title = $tag;
                $tagObject->BlogID = $this->ParentID;
                $tagObject->write();
            }

            if ($tagObject) {
                $this->Tags()->add($tagObject);
            }
        }

        //Store if the original entity was published or not (draft)
        $published = $this->IsPublished();

        $this->ClassName = 'BlogPost';
        $this->RecordClassName = 'BlogPost';
      		
        //Migrate these key data attributes
        $this->PublishDate = $this->getField('Date');
        $this->AuthorNames = $this->Author;
        $this->InheritSideBar = true;




        //Write and additionally publish the item if it was published before.
        $this->write();
        if ($published) {
            $this->publish('Stage', 'Live');
            $message = "PUBLISHED: ";
        } else {
            $message = "DRAFT: ";
        }

       // return $message . $this->Title;

        return $message . $this->Title . '$this->PublishDate will equal '.$this->PublishDate;
    }

    /**
     * Safely split and parse all distinct tags assigned to this BlogEntry.
     *
     * @deprecated since version 2.0
     *
     * @return array
     */
    public function TagNames()
    {
        $tags = preg_split('/\s*,\s*/', trim($this->Tags));

        $results = array();

        foreach ($tags as $tag) {
            if ($tag) {
                $results[mb_strtolower($tag)] = $tag;
            }
        }

        return $results;
    }
}

class NewsEntry_Controller extends BlogEntry_Controller {

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
	private static $allowed_actions = array (
	);

	public function RelatedNewsEntries(){
		$holder = NewsHolder::get()->First();
		$tags = $this->TagsCollection()->sort('Date', 'ASC')->limit(6);
		$entries = new ArrayList();

		foreach($tags as $tag){
			$taggedEntries = $holder->Entries(5, $tag->Tag)->exclude(array("ID"=>$this->ID))->sort('Date', 'ASC')->First();
			if($taggedEntries){
				foreach($taggedEntries as $taggedEntry){
					if($taggedEntry->ID){
						$entries->push($taggedEntry);
					}
				}
			}

		}

		if($entries->count() > 1){
			$entries->removeDuplicates();
		}
		return $entries;
	}

	public function init() {
		parent::init();


	}

}