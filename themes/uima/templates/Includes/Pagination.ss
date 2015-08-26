<% if $PaginatedList.MoreThanOnePage %>
<div id="PageNumbers">
	<ul class="pagination">
		<% if $PaginatedList.NotFirstPage %>
			<li class="arrow">
				<a href="$PaginatedList.PrevLink" title="View the previous page">&laquo; Previous</a>
			</li>
		<% end_if %>
		<% loop $PaginatedList.Pages %>
			<% if $CurrentBool %>
				<li class="current"><a class="disabled">$PageNum</a></li>
				<% else %>
				<% if $Link %>
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
		<% if $PaginatedList.NotLastPage %>
			<li class="arrow">
				<a href="$PaginatedList.NextLink" title="View the next page">Next &raquo;</a>
			</li>
		<% end_if %>
	</ul>
	<p>Page $PaginatedList.CurrentPage of $PaginatedList.TotalPages</p>
</div>
<% end_if %>