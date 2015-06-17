<% if ExhibitionList.MoreThanOnePage %>
<div id="PageNumbers">
	<ul class="pagination">
		<% if ExhibitionList.NotFirstPage %>
			<li class="arrow">
				<a href="$ExhibitionList.PrevLink" title="View the previous page">&laquo; Previous</a>
			</li>
		<% end_if %>
	
    	<% loop ExhibitionList.PaginationSummary(4) %>
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
	
		<% if ExhibitionList.NotLastPage %>
			<li class="arrow">
				<a href="$ExhibitionList.NextLink" title="View the next page">Next &raquo;</a>
			</li>
		<% end_if %>
	</ul>
	<p>Page $ExhibitionList.CurrentPage of $ExhibitionList.TotalPages</p>
</div>
<% end_if %>