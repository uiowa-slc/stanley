
<div class="exhibit-largeimg" style="background-image: url($EventPageImage.URL);">
	<!-- Date | Location -->
	<div class="inner">
		<div class="container">
			<% if $StartDate || $EventLocation %><h3 class="exhibitinner-date"><% if $StartDate %>$StartDate.Format('F d')<% end_if %><% if $EndDate %> - $EndDate.Format('F d') <% end_if %><% if $StartDate && $EventLocation %> | <% end_if %><% if $EventLocation %>$EventLocation<% end_if %></h3><% end_if %>
			<div class="exhibition-sociallinks">
				<a class="js-social-share" href="https://www.facebook.com/sharer/sharer.php?u=$AbsoluteLink" target="_blank"><img src="{$ThemeDir}/images/facebook_circle_gray-32.png" alt="Facebook"></a>
				<a class="js-social-share" href="https://twitter.com/intent/tweet/?text=$Title&url=$AbsoluteLink&via=UIMuseumofArt" target="_blank"><img src="{$ThemeDir}/images/twitter_circle_gray-32.png" alt="Twitter"></a>
			</div>
		</div>
	</div>
</div>


<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-md-8 col-lg-8">
			<section id="main-content" tabindex="-1">
				<h1>$Title</h1>
				$EventDescription
				$Form

			</section>
		</div><!-- end .col -->

		<!-- Side Bar -->
		<div class="col-md-4 col-lg-3 col-lg-offset-1 sidebar">
			<!-- Tagged Events -->
			<% if $EventTag %>
				<h2>Related Events</h2>
				<% loop $EventListBySearch %>
					<div class="related-events">
						<h4 class="title"><a href="$Link">$Title</a></h4>
						<p class="">
						<% loop $Dates %>
							<% with $StartDateTime %>
								<time itemprop="startDate" datetime="$Format(c)">
									$Format(l), $Format(F) $Format(j)
								</time>
								 <span class="time">$Format("g:i A")
							<% end_with %>
							<% if $EndTime %>
								<% with $EndTime %>
									- $Format("g:i A")
								<% end_with %>
							<% end_if %></span>
							<% if $EndDate %>
								until
								<% with $EndDate %>
									<time itemprop="endDate" datetime="$Format(c)">
										$Format(l), $Format(F) $Format(j)
									</time>
									<span class="time">$Format("g:i A")</span>
								<% end_with %>
							<% end_if %>
						<% end_loop %>
						$Venue.Title
						</p>
					</div>
				<% end_loop %>
			<% end_if %>
			<a href="{$BaseHref}events" class="related-events-link">See All Museum Events &rarr;</a>
		</div>
	</div><!-- end .row -->
</main><!-- end .container -->

