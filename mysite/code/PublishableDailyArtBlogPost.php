<?php
/**
 * RedirectorPage-specific implementation.
 */

class PublishableDailyArtBlogPost extends Extension implements StaticallyPublishable {

	public function urlsToCache() {
		$posts = DailyArtBlogPost::get()->exclude(array('ID' => $this->owner->ID));
		$urls = array();

		foreach($posts as $post){
			$urls[$post->Link()] = 0;
		}

		$blog = DailyArtBlog::get()->First();
		$urls[$blog->Link()] = 0;

		return $urls;
	}

}


