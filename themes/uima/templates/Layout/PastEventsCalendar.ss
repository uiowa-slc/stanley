<% include HeaderPhoto %>

<main class="container main" role="main">
	<div class="row">
		<!-- Side Bar -->
		<% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
			<div class="col-md-4 col-lg-3 sidebar">
				<% include SideNav %>
			</div>
		<% end_if %>

		<!-- Main Content -->
		<div class="<% if $Children || $Parent %>col-md-8 col-lg-8 col-lg-offset-1 children<% else %>col-md-10 col-md-offset-1<% end_if %>">
			<section id="main-content" tabindex="-1">
				<h1>$Title</h1>
				$Content
				$Form

				<% if PastEvents %>
					<div class="event-list">
						<% loop PastEvents %>
							<div class="newsblock clearfix <% if $Photo %>withphoto<% end_if %>">
								<div class="newsblock-info">
									<% if $Event.Image %>
										<img src="{$Event.Image.SetWidth(100).URL}" alt="$Title" class="right">
									<% end_if %>
									<h3 class="newsblock-title">$Title</h3>
									<p class="entry-date">$DateRange</p>
									<% with Event %>
										<div class="entry-content">$Content</div>
									<% end_with %>
								</div>
							</div><!-- end .list-item -->
						<% end_loop %>
					</div>
				<% end_if %>

				<!-- Pagination -->
				<% if $PastEvents.MoreThanOnePage %>
				<div id="PageNumbers">
					<ul class="pagination">
						<% if $PastEvents.NotFirstPage %>
							<li class="arrow">
								<a href="$PastEvents.PrevLink" title="View the previous page">&laquo; Previous</a>
							</li>
						<% end_if %>
						<% loop $PastEvents.Pages %>
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
						<% if $PastEvents.NotLastPage %>
							<li class="arrow">
								<a href="$PastEvents.NextLink" title="View the next page">Next &raquo;</a>
							</li>
						<% end_if %>
					</ul>
					<p>Page $PastEvents.CurrentPage of $PastEvents.TotalPages</p>
				</div>
				<% end_if %>

			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->