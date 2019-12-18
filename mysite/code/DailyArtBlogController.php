<?php
use SilverStripe\Blog\Model\Blog;
use SilverStripe\ORM\FieldType\DBDatetime;
use SilverStripe\View\ArrayData;
use SilverStripe\Blog\Model\BlogController;
use SilverStripe\Control\HTTPRequest;

class DailyArtBlog_Controller extends BlogController {

    private static $allowed_actions = array(
        'slider'
    );

    public function index(HTTPRequest $request){

    	$currentDate = DBDatetime::now();
    	$dayObj = DailyArtBlogDay::get()->filter(array('Month' => $currentDate->Format('M'), 'Date' => $currentDate->Format('d')))->First();
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
        return $this->renderWith('Includes/DailyArtBlogDaySlider');
    }


}
