<?php
/**
 * Simple extension of the default Requirements_Backend that
 * allows you to specify exactly where css and js is placed
 * via html comments:
 *
 * <!-- INSERT CSS HERE -->
 * <!-- INSERT JS HERE -->
 *
 * If either is not present, it will fall back to the default rules.
 *
 * @author Mark Guinn <mark@adaircreative.com>
 * @date 09.12.2013
 * @package hhbc
 */
class BetterRequirementsBackend extends Requirements_Backend
{
	// These can be overridden via yml config
	private static $css_placement_tag = '<!-- INSERT CSS HERE -->';
	private static $js_placement_tag = '<!-- INSERT JS HERE -->';

	// If this is set to true, cache busting will be like filename.12345.js instead of filename.js?m=12345
	private static $filename_cache_busting = true;

	/**
	 * Update the given HTML content with the appropriate include tags for the registered
	 * requirements. Needs to receive a valid HTML/XHTML template in the $content parameter,
	 * including a <head> tag. The requirements will insert before the closing <head> tag automatically.
	 *
	 * @todo Calculate $prefix properly
	 *
	 * @param string $templateFile  Absolute path for the *.ss template file
	 * @param string $content HTML  content that has already been parsed from the $templateFilePath
	 *                              through {@link SSViewer}.
	 * @return string               HTML content thats augumented with the requirements before the
	 *                              closing <head> tag.
	 */
	public function includeInHTML($templateFile, $content) {
		if(
			(strpos($content, '</head>') !== false || strpos($content, '</head ') !== false)
			&& ($this->css || $this->javascript || $this->customCSS || $this->customScript || $this->customHeadTags)
		) {
			$requirements = '';
			$jsRequirements = '';

			// Combine files - updates $this->javascript and $this->css
			$this->process_combined_files();

			foreach(array_diff_key($this->javascript,$this->blocked) as $file => $dummy) {
				$path = Convert::raw2xml($this->path_for_file($file));
				if($path) {
					$jsRequirements .= "<script type=\"text/javascript\" src=\"$path\"></script>\n";
				}
			}

			// add all inline javascript *after* including external files which
			// they might rely on
			if($this->customScript) {
				foreach(array_diff_key($this->customScript,$this->blocked) as $script) {
					$jsRequirements .= "<script type=\"text/javascript\">\n//<![CDATA[\n";
					$jsRequirements .= "$script\n";
					$jsRequirements .= "\n//]]>\n</script>\n";
				}
			}

			foreach(array_diff_key($this->css,$this->blocked) as $file => $params) {
				$path = Convert::raw2xml($this->path_for_file($file));
				if($path) {
					$media = (isset($params['media']) && !empty($params['media']))
						? " media=\"{$params['media']}\"" : "";
					$requirements .= "<link rel=\"stylesheet\" type=\"text/css\"{$media} href=\"$path\" />\n";
				}
			}

			foreach(array_diff_key($this->customCSS, $this->blocked) as $css) {
				$requirements .= "<style type=\"text/css\">\n$css\n</style>\n";
			}

			foreach(array_diff_key($this->customHeadTags,$this->blocked) as $customHeadTag) {
				$requirements .= "$customHeadTag\n";
			}

			// BEGIN MODIFICATIONS
			$cssTag = Config::inst()->get('BetterRequirementsBackend', 'css_placement_tag');
			if ($cssTag && strpos($content, $cssTag) !== false) {
				$content = str_replace($cssTag, $requirements, $content);
			} else {
				// Put CSS at the bottom of the head
				$content = preg_replace("/(<\/head>)/i", $requirements . "\\1", $content);
			}

			$jsTag = Config::inst()->get('BetterRequirementsBackend', 'js_placement_tag');
			if ($jsTag && strpos($content, $jsTag) !== false) {
				// Remove all newlines from code to preserve layout
				$jsRequirements = preg_replace('/>\n*/', '>', $jsRequirements);
				// Replace the tag
				$content = str_replace($jsTag, $jsRequirements, $content);
			} elseif ($this->write_js_to_body) {
				// Remove all newlines from code to preserve layout
				$jsRequirements = preg_replace('/>\n*/', '>', $jsRequirements);

				// We put script tags into the body, for performance.
				// If your template already has script tags in the body, then we put our script
				// tags just before those. Otherwise, we put it at the bottom.
				$p2 = stripos($content, '<body');
				$p1 = stripos($content, '<script', $p2);

				if($p1 !== false) {
					$content = substr($content,0,$p1) . $jsRequirements . substr($content,$p1);
				} else {
					$content = preg_replace("/(<\/body[^>]*>)/i", $jsRequirements . "\\1", $content);
				}
			} else {
				$content = preg_replace("/(<\/head>)/i", $jsRequirements . "\\1", $content);
			}
			// END MODIFICATIONS
		}

		return $content;
	}


	/**
	 * Finds the path for specified file.
	 *
	 * @param string $fileOrUrl
	 * @return string|boolean
	 */
	protected function path_for_file($fileOrUrl) {
		if(preg_match('{^//|http[s]?}', $fileOrUrl)) {
			return $fileOrUrl;
		} elseif(Director::fileExists($fileOrUrl)) {
			$filePath = preg_replace('/\?.*/', '', Director::baseFolder() . '/' . $fileOrUrl);
			$prefix = Director::baseURL();
			if ($this->suffix_requirements && Config::inst()->get('BetterRequirementsBackend', 'filename_cache_busting')) {
				// pull out the query string
				$partsQS = explode('?', $fileOrUrl);
				// pull out the extension
				$parts = explode('.', $partsQS[0]);
				// add the url base prefix
				$parts[0] = $prefix . $parts[0];

				// add the modification time before the extension
				$extension = array_pop($parts);
				if ($extension != 'js' && $extension != 'css') {
					return parent::path_for_file($fileOrUrl);
				}
				array_push($parts, filemtime($filePath));
				array_push($parts, $extension);

				// put the query string back together
				$partsQS[0] = implode('.', $parts);
				return implode('?', $partsQS);
			} else {
				return parent::path_for_file($fileOrUrl);
			}
		} else {
			return false;
		}
	}

}