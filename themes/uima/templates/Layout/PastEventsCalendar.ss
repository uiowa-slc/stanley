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
		<div class="<% if $Children || $Parent %>col-md-8 col-lg-8 offset-lg-1 children<% else %>col-md-10 offset-md-1<% end_if %>">
			<section id="main-content" tabindex="-1">
				<h1>$Title</h1>
				$Content
				$Form


				<% if AllEventsWithoutDuplicates %>

					<%-- <div class="event-list"> --%>
						<% loop AllEventsWithoutDuplicates %>
						<!-- Main Content -->
						<div class="<% if $Children || $Parent %>col-md-8 col-lg-8 offset-lg-1 children<% else %>col-md-10 offset-md-1<% end_if %>">
							<section id="main-content" tabindex="-1">
	<%-- 						<h1>$Title</h1>
								$Content
								$Form
	 --%>
								<!-- Loop Events -->
								<div class="eventcontainer">

										<div class="eventlist clearfix">
											<% if $Image %>
												<a href="$Link" class="eventlist-img">
													<img src="$Image.URL" alt="$Title">
												</a>
											<% end_if %>
											<!-- Date -->

												<p class="eventlist-date">
													<% with $StartDate %>
														<time itemprop="startDate" datetime="$Format(c)">
															$Format(l) $Format(F) $Format(j)
														</time>
														 <span class="eventlist-time">$Format("g:i A")<% end_with %><% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i A")
														<% end_with %>
													<% end_if %>
													</span>
													<% if $EndDate %>
														until
														<% with $EndDate %>
															<time itemprop="endDate" datetime="$Format(c)">
																$Format(l), $Format(F) $Format(j)
															</time>
															<span class="eventlist-time">$Format("g:i A")</span>
														<% end_with %>
													<% end_if %>
												</p>

											<!-- Title -->
											<h3 class="eventlist-title">
												<a href="$Link">$Title</a>
											</h3>


											<!-- Venue -->
											<!-- <p>$Venue.Title</p> -->
											<!-- More Info Link -->
											<a href="$Link" class="more-info">More Info</a>
										</div>

								</div>
							</section>
						</div><!-- end .col -->
						<% end_loop %>

				<% end_if %>


<%-- 				<% if PastEvents %>
=======
>>>>>>> origin/2.0-events-reconfigure
					<div class="event-list">
						<% loop AllEventsWithoutDuplicates %>
							<div class="newsblock clearfix <% if $Photo %>withphoto<% end_if %>">
								<div class="newsblock-info">
									<% if $Event.Image %>
										<img src="{$Event.Image.ScaleWidth(100).URL}" alt="$Title" class="right">
									<% end_if %>
									<h3 class="newsblock-title">$Title</h3>
									<p class="entry-location">$Event.Location</p>
									<p class="entry-date">$DateRange</p>
									<% with Event %>
										<div class="entry-content">$Content</div>
									<% end_with %>
								</div>
							</div><!-- end .list-item -->
						<% end_loop %>
					</div>
				<% end_if %> --%>


<%-- 				<% if PastEvents %>
					<div class="event-list">
						<% loop PastEvents %>
							<div class="newsblock clearfix <% if $Photo %>withphoto<% end_if %>">
								<div class="newsblock-info">
									<% if $Event.Image %>
										<img src="{$Event.Image.ScaleWidth(100).URL}" alt="$Title" class="right">
									<% end_if %>
									<h3 class="newsblock-title">$Title</h3>
									<p class="entry-location">$Event.Location</p>
									<p class="entry-date">$DateRange</p>
									<% with Event %>
										<div class="entry-content">$Content</div>
									<% end_with %>
								</div>
							</div><!-- end .list-item -->
						<% end_loop %>
					</div>
				<% end_if %> --%>

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
