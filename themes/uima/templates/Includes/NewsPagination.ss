<% if PaginatedNewsEntries.MoreThanOnePage %>
<div id="PageNumbers">
	<ul class="pagination">
		<% if PaginatedNewsEntries.NotFirstPage %>
			<li class="arrow">
				<a href="$PaginatedNewsEntries.PrevLink" title="View the previous page">&laquo; Previous</a>
			</li>
		<% end_if %>
	
    	<% loop PaginatedNewsEntries.PaginationSummary(4) %>
			<% if CurrentBool %>
				<li class="current"><a class="disabled">$PageNum</a></li>
			<% else %>
				<% if Link %>
					<li>
						<a class="<% if BeforeCurrent %>paginate-left<% else %>paginate-right<% end_if %>" href="$Link">
						$PageNum
						</a>
					</li>
				<% else %>
					<li class="disabled"><a class="disabled">&hellip;</a></li>						
				<% end_if %>
			<% end_if %>
		<% end_loop %>
	
		<% if PaginatedNewsEntries.NotLastPage %>
			<li class="arrow">
				<a href="$PaginatedNewsEntries.NextLink" title="View the next page">Next &raquo;</a>
			</li>
		<% end_if %>
	</ul>
	<p>Page $PaginatedNewsEntries.CurrentPage of $PaginatedNewsEntries.TotalPages</p>
</div>
<% end_if %>