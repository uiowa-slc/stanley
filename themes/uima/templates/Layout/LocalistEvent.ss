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
							 $Format("g:i A")
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
					<h5>Description</h5>
					$Content
				<% end_if %>

				<!-- Venue -->
				<% if $Venue %>

					<h5>Venue</h5>
					<p>
						$Venue.Title
						<% if $Venue.Address %><br>$Venue.Address<% end_if %>
					</p>
				<% end_if %>


				<!-- Dates -->
				<h5>Dates</h5>
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

				<!-- Cost -->
				<% if $Cost %>
					<h5>Cost:</h5>
					<p>$Cost</p>
				<% end_if %>


				<% if $ContactName %>
					<h5>Contact Information:</h5>
					<% if $ContactEmail %>
						<a href="mailto:$ContactEmail">$ContactName</a>
					<% else %>
						$ContactName
					<% end_if %>
					</p>
				<% end_if %>

				<!-- Sponsor & Link to events.uiowa.edu -->
				<% if $Sponsor %>
					<p><strong>Sponsor:</strong><br> $Sponsor </p><% end_if %>
				<% if $MoreInfoLink || $LocalistLink %>
					<p>
						<% if $MoreInfoLink %>
							<a href="$MoreInfoLink" class="button" target="_blank">Event Website</a>
						<% end_if %>
						<% if $LocalistLink %>
							<br /><a href="$LocalistLink" class="button" target="_blank">View on events.uiowa.edu</a>
						<% end_if %>
					</p>
				<% end_if %>

			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->