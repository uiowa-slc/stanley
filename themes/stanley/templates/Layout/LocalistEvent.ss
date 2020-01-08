<div class="event-largeimg" <% if $Image %>style="background-image: url($Image.URL);"<% end_if %><% if not $Image %><% if $Venue.ImageURL %>style="background-image: url($Venue.ImageURL);"<% end_if %><% end_if %>>
	<!-- Date | Location -->
	<div class="inner">
		<div class="container">
			<div class="title-date">
				<h3>$Title</h3>
				<h4>
				<% if $Dates.Count > 1 %><strong>Next Date:</strong><% end_if %>
				<% if $Dates %>
					<% loop $Dates.Limit(1) %>
						<% with $StartDateTime %>
								<time itemprop="startDate" datetime="$Format(c)">
									$Format(l), $Format(F) $Format(j)
								</time>
							 $Format("g:i A")<% end_with %><% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i A")<% end_with %>
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
</div>

<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-lg-8">
			<section id="main-content" tabindex="-1">

				<!-- Content -->
				<% if $Content %>
					<div class="event-content">
						<h3>Description</h3>
						$Content
					</div>
				<% end_if %>


				<!-- Dates -->
				<h3>Dates</h3>
				<div class="event-dates">
					<% loop $Dates %>

						<p class="date-time">
							<% with $StartDateTime %>
								<time itemprop="startDate" datetime="$Format(c)">
									$Format(l), $Format(F) $Format(j)
								</time>
								 <br />$Format("g:i A")<% end_with %><% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i A")<% end_with %>
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
				</div>

				<!-- Sponsor & Link to events.uiowa.edu -->
				<% if $Sponsor %>
					<p><strong>Sponsor:</strong><br> $Sponsor </p>
				<% end_if %>
				<% if $MoreInfoLink || $LocalistLink %>
					<h3>More Information</h3>
					<p>
					<!--
						<% if $MoreInfoLink %>
							<a href="$MoreInfoLink" class="button" target="_blank">Event Website</a><br />
						<% end_if %>
					-->
						<% if $LocalistLink %>
							<a href="$LocalistLink" class="button" target="_blank">View this event on events.uiowa.edu</a>
						<% end_if %>
					</p>
				<% end_if %>


			</section>
		</div><!-- end .col -->
		<div class="col-md-3 offset-lg-1">
			<!-- Venue -->
			<% if $Venue %>
				<h3>Venue</h3>
				<p>$Venue.Title<% if $Venue.Address %><br>$Venue.Address<% end_if %></p>
			<% end_if %>

			<!-- Cost -->
			<% if $Cost %>
				<h3>Cost:</h3>
				<p>$Cost</p>
			<% end_if %>

			<!-- Contact Information -->
			<% if $ContactName %>
				<h3>Contact Information:</h3>
				<p>
					<% if $ContactEmail %>
						<a href="mailto:$ContactEmail">$ContactName</a>
					<% else %>
						$ContactName
					<% end_if %>
				</p>
			<% end_if %>

			<!-- Get Notified -->
			<div class="addtocalendar">
				<h3>Add to Calendar</h3>
				<p><a href="{$LocalistLink}.ics"><img src="{$ThemeDir}/images/calendar-16.png" alt="Add to Calendar">Add to iCal or Outlook</a></p>
			</div>
		</div>
	</div><!-- end .row -->
</main><!-- end .container -->