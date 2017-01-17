<?php

class DailyArtBlogDay extends DataObject {
		
	private static $casting = array(
		'Date' => 'Date',
		'Link' => 'Text'
	);

	public function getLatestDailyArtBlogPost(){
		return $this->getDailyArtBlogPosts()->First();
	}

	public function getDailyArtBlogPosts(){
		$blog = DailyArtBlog::get()->First();
		$years = range(date("Y"), 2016);
		$posts = new ArrayList();
		//print_r($this->obj('Date'));
    	foreach($years as $year){
    		$yearPosts = $blog->getArchivedBlogPosts($year, $month = $this->obj('Date')->Format('n'), $this->obj('Date')->Format('j'));
    		$posts->merge($yearPosts);
    	}

    	return $posts;

	}
	public function getLink(){

		$blog = DailyArtBlog::get()->First();
		$date = $this->obj('Date');
		$link = $blog->Link().'day/'.$date->Format('n').'/'.$date->Format('j');

		return $link;

	}


}