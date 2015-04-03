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
					<div class="newsholder-entries">
						<% loop $EventList %>
							<div class="newsblock clearfix <% if $Photo %>withphoto<% end_if %>">
								<div class="newsblock-info">
									<% if $Image %>
										<a href="$Link">
											<img src="$Image.URL" alt="$Title" style="width: 120px;" class="right">
										</a>
									<% end_if %>
									<h4 class="newsblock-title"><a href="$Link">$Title</a></h4>
									<% loop $Dates %>
										<p class="date-time">
											<% with $StartDateTime %>
												<time itemprop="startDate" datetime="$Format(c)">
													$Format(l), $Format(F) $Format(j)
												</time>
												 <br />$Format("g:i A")
											<% end_with %>
											<% if $EndTime %>
												<% with $EndTime %>
													- $Format("g:i A")
												<% end_with %>
											<% end_if %>
											<% if $EndDate %>
												until
												<% with $EndDate %>
													<time itemprop="endDate" datetime="$Format(c)">
														$Format(l), $Format(F) $Format(j)
													</time>
													<br />$Format("g:i A")
												<% end_with %>
											<% end_if %>
										</p>
									<% end_loop %>
									<p>$Venue.Title</p>
								</div>
							</div>
						<% end_loop %>
					</div>
			</article>
		</div><!-- end .col -->
	</div><!-- end .row -->
</div><!-- end .container -->