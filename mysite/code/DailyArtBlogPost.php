<?php

class DailyArtBlogPost extends BlogPost {

	private static $db = array(
		'DailyArtAdditionalText' => 'HTMLText',

	);
	private static $has_one = array(
		'DailyArtImage' => 'Image',
		'DailyArtBlogDay' => 'DailyArtBlogDay'
	);


	private static $allowed_children = array(

	);

	private static $extensions = array(

    );

    protected function onBeforeWrite(){
    	$blogDay = DataObject::get_one('DailyArtBlogDay', array('Month' => $this->obj('PublishDate')->format('m'), 'Date' => $this->obj('PublishDate')->format('d')));
    	if($blogDay){
    		$blogDay->HasPost = 1;
    		$this->DailyArtBlogDayID = $blogDay->ID;
    	}
    	parent::onBeforeWrite();
    }


	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("FeaturedImage");
		$fields->removeByName("Metadata");
		$fields->removeByName("Photo");
		$fields->removeByName("CustomSummary");

		$fields->addFieldToTab('Root.Main', new UploadField('DailyArtImage', 'Artwork Image'),'Content');
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('DailyArtAdditionalText','Additional Information'));

		return $fields;
	}

	public function getPublishDateOnly(){
		$date = Date::create();
		$date->setValue($this->obj('PublishDate')->format('Y-m-d'));
		return $date;
	}

	public function getOtherPosts(){
		$postDate = $this->obj('PublishDate');
	    $day = DataObject::get_one('DailyArtBlogDay', array('Date' => $postDate->Format('d'), 'Month' => $postDate->Format('m')));
	    $posts = $day->getPosts()->exclude(array('ID' => $this->ID));
	    return $posts;
	}

	public function NextPage(){

	}

	// public function PreviousPage(){
	// 	// $prevPost = DailyArtBlogPost::get()->filter(array(
	// 	// 	'PublishDate:LessThan' => $this->PublishDate
	// 	// ))->First();

	// 	// return $prevPost;
	// 	//Sorta working query:
	// 	//SELECT DailyArtBlogPost.ID, BlogPost.ID, BlogPost.PublishDate FROM DailyArtBlogPost LEFT JOIN BlogPost ON DailyArtBlogPost.ID=BlogPost.ID
	// 		//NOT WORKIBNG:
	// 		//SELECT DailyArtBlogPost.ID, BlogPost.PublishDate, BlogPost.ID FROM DailyArtBlogPost LEFT JOIN "BlogPost" ON DailyArtBlogPost.ID=BlogPost.ID
	// 	$sqlQuery = new SQLSelect();

	// 	$sqlQuery->setSelect('DailyArtBlogPost.ID');
	// 	$sqlQuery->selectField('BlogPost.ID');
	// 	$sqlQuery->selectField('BlogPost.PublishDate');


	// 	$sqlQuery->setFrom('DailyArtBlogPost');
	// 	$sqlQuery->addLeftJoin('BlogPost','"DailyArtBlogPost"."ID"="BlogPost"."ID"');
	// 	//$sqlQuery->setWhere('DailyArtBlogPost.ID = '.$this->ID);
	// 	//$sqlQuery->addOrderBy("CASE WHEN BlogPost.ID >= ".$this->ID." THEN 0 ELSE 1 END ASC, BlogPost.ID ASC");
	// 	//$sqlQuery->setOrderBy("STR_TO_DATE( BlogPost.PublishDate, '%m/%d/%Y' ) ASC");
	// 	//$sqlQuery->setOrderBy("BlogPost.PublishDate DESC");
	// 	//$sqlQuery->setOrderBy("STR_TO_DATE( BlogPost.PublishDate, '%m/%d/%Y' ) ASC");

	// 	// $sqlQuery->setOrderBy("MONTH(BlogPost.PublishDate) DESC, DAY(BlogPost.PublishDate) DESC, CASE WHEN BlogPost.ID >= ".$this->ID." THEN 0 ELSE 1 END ASC");

	// 	$sqlQuery->addOrderBy("MONTH(BlogPost.PublishDate) DESC, DAY(BlogPost.PublishDate) DESC");
	// 	// $sqlQuery->addOrderBy("");
	// 	//$sqlQuery->setLimit(1,1);
	// 	// print_r($sqlQuery->__toString());
	// 	$result = $sqlQuery->execute();
	// 	// Iterate over results
	// 	foreach($result as $row) {
	// 	  echo $row['ID'].': '.$row['PublishDate'].'<br />';
	// 	}
	// }

	public function PreviousPage(){
		// $prevPost = DailyArtBlogPost::get()->sort(array('STR_TO_DATE( "PublishDate", "%m/%d/%Y" )'=>'DESC'));
		$posts = DailyArtBlogPost::get()->sort('MONTH(PublishDate) DESC, DAY(PublishDate) DESC');
		// $thisPost = $posts->filter(array('ID' =>$this->ID));
		//  //print_r($prevPost->sql());
		// print_r($thisPost->toArray());
		$postsCount = $posts->Count() - 1;
		foreach($posts as $key => $post) {
			if($post->ID == $this->ID){
				// print_r($posts->Count())
				if($key == $postsCount){
					$nextKey = 0;
				}else{
					$nextKey = $key + 1;
				}

				if($key == 0){
					$prevKey = $postsCount;
				}else{
					$prevKey = $key - 1;
				}

				//echo '<strong>key:'.$key.', post: '.$post->ID.': '.$post->PublishDate.', next key: '.$nextKey.', prev key: '.$prevKey.'</strong><br />';
			}else{
				//echo 'key:'.$key.', post: '.$post->ID.': '.$post->PublishDate.'<br />';
			}

		}
	}

}

class DailyArtBlogPost_Controller extends BlogPost_Controller {

	public function init() {
		parent::init();

	}

}
