<?php

class DailyArtBlog extends Blog {

	private static $db = array(

	);

	private static $allowed_children = array(
		'DailyArtBlogPost'
	);
    private static $singular_name = 'Art of the Day Blog';

    private static $plural_name = 'Art of the Day Blogs';
    private static $show_in_sitetree = true;

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}

    public function getLumberjackTitle() {
        return 'Art of the Day Posts';
    }

}

class DailyArtBlog_Controller extends Blog_Controller {
    
    private static $allowed_actions = array(
        'slider'
    );
  
    public function index(){

    	$currentDate = SS_Datetime::now();
    	$dayObj = DailyArtBlogDay::get()->filter(array('Month' => $currentDate->Format('n'), 'Date' => $currentDate->Format('j')))->First();
        $totalPosts = DailyArtBlogPost::get()->Count();

        if($totalPosts == 0){
            return $this->renderWith(array('DailyArtBlog', 'Page'));
        }

    	if($dayObj){
    		$posts = $dayObj->getPosts();
            while($posts->Count() == 0){
                $dayObj = $dayObj->PreviousDay();
                $posts = $dayObj->getPosts();
            }
    	}

    	$data = new ArrayData(
    		array(
    			'DailyArtBlogDay' => $dayObj,
    			'CurrentDayPosts' => $posts
    		)

    	);
    	return $this->customise($data)->renderWith(array('DailyArtBlog', 'Page'));
    
    }

    public function slider(){
        return $this->renderWith('DailyArtBlogDaySlider');
    }


}