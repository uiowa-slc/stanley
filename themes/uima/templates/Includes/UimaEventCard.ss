<div class="eventcontainer">
	<div class="eventlist clearfix">
		<% if $Image %>
			<a href="$Link" class="eventlist-img">
				<img src="$Image.URL" alt="$Title">
			</a>
		<% end_if %>

		<% loop $DateTimes %>
			<p class="eventlist-date">
				<% with $StartDate %>
					<time itemprop="startDate" datetime="$Format(c)">
						$Format(l) $Format(F) $Format(j)
					</time>
				<% end_with %>
				<% if StartTime %><span class="eventlist-time">$TimeRange</span><% end_if %>
			</p>
		<% end_loop %>
		<h3 class="eventlist-title">
			<a href="$Link">$Title</a>
		</h3>
		<a href="$Link" class="more-info">More Info</a>
	</div>
</div>