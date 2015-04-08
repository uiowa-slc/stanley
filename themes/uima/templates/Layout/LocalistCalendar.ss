<% if $Photo %>
	<div class="page-photo">
		<img src="$Photo.CroppedImage(1200,400).URL" alt="">
	</div>
<% end_if %>

<div class="container">
	<div class="row">

		<!-- Side Bar -->
		<% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
			<div class="col-lg-4 sidebar">
				<% include SideNav %>
			</div>
		<% end_if %>

		<!-- Main Content -->
		<div class="<% if $Children || $Parent %>col-md-8 col-lg-8 col-lg-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
			<article class="article">
				<!-- $Breadcrumbs -->
				<h1>$Title</h1>
				$Content
				$Form

				<!-- Loop Events -->
					<div class="eventcontainer">
						<% loop $EventList %>
							<div class="eventlist clearfix">
								<% if $Image %>
									<a href="$Link" class="eventlist-img">
										<img src="$Image.URL" alt="$Title" style="width: 240px;">
									</a>
								<% end_if %>
								<!-- Date -->
								<% loop $Dates %>
									<p class="eventlist-date">
										<% with $StartDateTime %>
											<time itemprop="startDate" datetime="$Format(c)">
												$Format(l), $Format(F) $Format(j)
											</time>
											 <span class="eventlist-time">$Format("g:i A")
										<% end_with %>
										<% if $EndTime %>
											<% with $EndTime %>
												- $Format("g:i A")
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
								<% end_loop %>
								<!-- Title -->
								<h3 class="eventlist-title">
									<a href="$Link">$Title</a>
								</h3>
								<!-- Venue -->
								<!-- <p>$Venue.Title</p> -->
								<!-- More Info Link -->
								<a href="$Link" class="more-info">More Info</a>
							</div>
						<% end_loop %>
					</div>
			</article>
		</div><!-- end .col -->
	</div><!-- end .row -->
</div><!-- end .container -->