<?php

/**
 * Similar to {@link RebuildStaticPagesTask}, but only queues pages for republication
 * in the {@link StaticPagesQueue}. This queue is worked off by an independent task running constantly on the server.
 */
class AddAdditionalStaticURLs extends BuildTask {

	/**
	 * @var URLArrayObject
	 */
	protected $urlArrayObject;

	private static $dependencies = array(
		'urlArrayObject' =>  '%$URLArrayObject'
	);

	/**
	 *
	 * @var string
	 */
	protected $description = 'Add additional URLs that are not SiteTree items as part of a full rebuild to the bottom of the queue';

	/** @var int - chunk size (set via config) */
	private static $records_per_request = 200;


	/**
	 * Checks if this task is enabled / disabled via the config setting
	 */
	public function __construct() {
		parent::__construct();
		if($this->config()->get('disabled') === true) {
			$this->enabled = false;
		}
	}

	public function setUrlArrayObject($o) {
		$this->urlArrayObject = $o;
	}

	public function getUrlArrayObject() {
		return $this->urlArrayObject;
	}

	/**
	 * 
	 * @param SS_HTTPRequest $request
	 * @return bool
	 */
	public function run($request) {

		$dailyArtBlog = DataObject::get_one('DailyArtBlog');

		$urls = array(
			$dailyArtBlog->Link('slider')
		);

		foreach($urls as $url){
			echo "Adding ".$url." at the bottom of the static publishing queue";
		}

		return $this->queueURLs($urls);

	}



	/**
	 * Adds an array of urls to the Queue
	 *
	 * @param array $urls
	 * @return bool - if any pages were queued
	 */
	protected function queueURLs($urls = array()) {
		echo sprintf("AddAdditionalStaticURLs: Queuing %d URLs".PHP_EOL, count($urls));
		if(!count($urls)) {
			return false;
		}
		$this->getUrlArrayObject()->addUrls($urls);
		return true;
	}
	

}
