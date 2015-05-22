<form id="SearchForm_SearchForm" action="{$BaseHref}/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
	<p id="SearchForm_SearchForm_error" class="message " style="display: none"></p>
	<fieldset>
		<div id="Search" class="field text nolabel">
			<div class="middleColumn">
				<label for="SearchForm_SearchForm_Search" class="visuallyhidden">Search</label>
				<input type="text" name="Search" value="" placeholder="Search" class="text nolabel" id="SearchForm_SearchForm_Search">
			</div>
		</div>
		<input type="submit" name="action_results" value="Go" class="action" id="SearchForm_SearchForm_action_results">
	</fieldset>
</form>