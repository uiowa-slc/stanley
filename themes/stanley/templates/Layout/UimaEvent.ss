<% if $Image %>
<div class="event-largeimg">
	<%-- <picture>
		<!--[if IE 9]><video style="display: none;"><![endif]-->
		<source srcset="$Image.FocusFill(1200,600).URL" media="(min-width: 980px)">
		<source srcset="$Image.FocusFill(1000,500).URL" media="(min-width: 768px)">
		<source srcset="$Image.FocusFill(700,350).URL" media="(min-width: 480px)">
		<!--[if IE 9]></video><![endif]-->
		<img srcset="$Image.FocusFill(400,300).URL" alt="$Title" class="exhibitpage-img">
	</picture> --%>
	<img src="$Image.URL" alt="Title" class="eventpage-img">
</div>
<% end_if %>


<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-lg-10 offset-lg-1">
			<section id="main-content" tabindex="-1">

				<h1 class="eventpage-title">$Title <% if $SubTitle %><span>$SubTitle</span><% end_if %></h1>

				<!-- Dates -->
				<ul class="unstyled">
				<% loop $DateTimes %>
					<li>

					<% with $StartDate %>
						<time itemprop="startDate" datetime="$Rfc3339">
							$Format(MMMM) $Format(d), $Format(y)
						</time>
					<% end_with %>
					<% if $EndDate && $EndDate != $StartDate %>
						&ndash;
						<% with $EndDate %>
							<time itemprop="endDate" datetime="$Rfc3339">
								$Format(MMMM) $Format(d), $Format(y)
							</time>
						<% end_with %>
					<% end_if %>
					<if StartTime %><span class="eventlist-time">$StartTime.Format("h:mm a")<% if $EndTime %><% with $EndTime %>&ndash;$Format("h:mm a")<% end_with %></span><% end_if %>
					<% if AllDay %>This event lasts all day<% end_if %>
				<% end_loop %>
				</ul>

				<% if $Location %>
					<p class="event-location">$Location
						<% if $Address %><br />$Address<% end_if %>
					</p>
				<% end_if %>


				<!-- Content -->
				<% if $Content %>
					<div class="event-content">
						$Content
					</div>
				<% end_if %>


				<!-- Cost -->
				<% if $Cost %>
					<p><strong>Cost:</strong> $Cost</p>
				<% end_if %>

				<!-- Contact -->
				<% if $Contact %>
					<p><strong>Contact:</strong> $Contact</p>
				<% end_if %>

				<div class="addtocalendar">
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

				<% include Credit %>

				<p class="accessibility">Individuals with disabilities are encouraged to attend all University of Iowa-sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in a program, please contact the University of Iowa Stanley Museum of Art in advance at 335-1727.</p>
			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->
