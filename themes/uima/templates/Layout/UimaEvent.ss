<%-- <div class="event-largeimg" <% if $Image %>style="background-image: url($Image.URL);"<% end_if %><% if not $Image %><% if $Venue.ImageURL %>style="background-image: url($Venue.ImageURL);"<% end_if %><% end_if %>>
	<!-- Date | Location -->
	<div class="inner">
		<div class="container">
			<div class="title-date">
				<h4>
				<% if $DateTimes.Count > 1 %><strong>Next Date:</strong><% end_if %>
				<% if $DateTimes %>
					<% loop $DateTimes.Limit(1) %>
						<% with $StartDate %>
								<time itemprop="startDate" datetime="$Format(c)">
									$Format(l), $Format(F) $Format(j)
								</time>
						<% end_with %>
						$StartTime.Format("g:i A")
						<% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i A")<% end_with %>
						<% end_if %>
						<% if $EndDate %>
							until
							<% with $EndDate %>
									<time itemprop="endDate" datetime="$Format(c)">
										$Format(l), $Format(F) $Format(j)
									</time>
								 $Format("g:i A")
							<% end_with %>
						<% end_if %>
					<% end_loop %>
				<% else %>
						No upcoming dates.
				<% end_if %>
				</h4>
			</div>
			<div class="event-sociallinks">
				<a class="js-social-share" href="https://www.facebook.com/sharer/sharer.php?u=$AbsoluteLink" target="_blank"><img src="{$ThemeDir}/images/facebook_circle_gray-32.png" alt="Facebook"></a>
				<a class="js-social-share" href="https://twitter.com/intent/tweet/?text=$Title&url=$AbsoluteLink&via=UIMuseumofArt" target="_blank"><img src="{$ThemeDir}/images/twitter_circle_gray-32.png" alt="Twitter"></a>
			</div>
		</div>
	</div>
</div> --%>

<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-lg-8">
			<section id="main-content" tabindex="-1">

				<h1>$Title</h1>

				<!-- Content -->
				<% if $Image %><img src="$Image.SetWidth(200).URL" alt="$Title" class="right"><% end_if %>
				<% if $Content %>
					<div class="event-content">
						$Content
					</div>
				<% end_if %>

				<% if $Location %>
					<h3 style="clear:both;">Location:</h3>
					$Location
				<% end_if %>

				<!-- Dates -->
				<h3>Dates</h3>
				<div class="event-dates">
					<% loop $DateTimes %>
						<p class="">
							<% with $StartDate %>
								<time itemprop="startDate" datetime="$Format(c)">
									$Format(l) $Format(F) $Format(j)
								</time>
							<% end_with %>
							<% if StartTime %><span class="eventlist-time">$TimeRange</span><% end_if %>
						</p>
					<% end_loop %>
				</div>
			</section>
		</div><!-- end .col -->

		<div class="col-md-3 col-lg-offset-1">

			<!-- Get Notified -->
			<div class="addtocalendar">
				<h3>Add to Calendar</h3>

				<% if $DateTimes.Count > 1 %>
					<% loop $DateTimes %>
						<p><a href="$ICSLink"><img src="{$ThemeDir}/images/calendar-16.png" alt="Add to Calendar">Add $StartDate.NiceUS to iCal or Outlook</a></p>
					<% end_loop %>

				<% else %>
					<% with $DateTimes.First %>
					<p><a href="$ICSLink"><img src="{$ThemeDir}/images/calendar-16.png" alt="Add to Calendar">Add to iCal or Outlook</a></p>
					<% end_with %>
				<% end_if %>
			</div>
		</div>
	</div><!-- end .row -->
</main><!-- end .container -->