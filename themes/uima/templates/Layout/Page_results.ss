<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-md-10 col-md-offset-1">
			<section id="main-content" tabindex="-1">
				<h1>$Title</h1>

				<% if $Query %>
					<p class="searchQuery">You searched for &quot;{$Query}&quot;</p>
				<% end_if %>

				<% if $Results %>
				<ul id="SearchResults">
					<% loop $Results %>
					<li>
						<h4>
							<a href="$Link">
								<% if $MenuTitle %>
								$MenuTitle
								<% else %>
								$Title
								<% end_if %>
							</a>
						</h4>
						<% if $Content %>
							<p>$Content.LimitWordCountXML</p>
						<% end_if %>
						<p>$NiceName</p>
						<a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>

					</li>
					<% end_loop %>
				</ul>
				<% else %>
				<p>Sorry, your search query did not return any results.</p>
				<% end_if %>

				<% if $Results.MoreThanOnePage %>
				<div id="PageNumbers">
					<ul class="clearfix pagination" role="menubar" aria-label="Pagination">
						<% if $Results.NotFirstPage %>
							<li class="arrow">
								<a href="$Results.PrevLink" title="View the previous page">&laquo; Previous</a>
							</li>
						<% end_if %>

						<% loop $Results.Pages %>
							<% if $CurrentBool %>
								<li class="current"><a href="">$PageNum</a></li>
							<% else %>
								<li>
									<a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
								</li>
							<% end_if %>
						<% end_loop %>

						<% if $Results.NotLastPage %>
							<li class="arrow">
								<a href="$Results.NextLink" title="View the next page">Next &raquo;</a>
							</li>
						<% end_if %>
					</ul>
					<p>Page $Results.CurrentPage of $Results.TotalPages</p>
				</div>
				<% end_if %>
			</section>
		</div>
	</div>
</main>