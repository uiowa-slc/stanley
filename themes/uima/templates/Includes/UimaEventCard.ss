<div class="eventcontainer">
	<div class="eventlist clearfix">
		<% if $Image %>
			<a href="$Link" class="eventlist-img">
				<img src="$Image.SetWidth(240).URL" alt="$Title">
			</a>
		<% end_if %>

		<% loop $DateTimes %>
			<p class="eventlist-date">
			<% with $StartDate %>
				<time itemprop="startDate" datetime="$Format(c)">
					$Format(F) $Format(j)
				</time>
			<% end_with %>
			<% if $EndDate && $EndDate != $StartDate %>
				&ndash;
				<% with $EndDate %>
					<time itemprop="endDate" datetime="$Format(c)">
						$Format(F) $Format(j)
					</time>
				<% end_with %>
			<% end_if %>
			<if StartTime %>
				<span class="eventlist-time">
					<% if $EndTime %>$StartTime.Format("g:i")<% else %>$StartTime.Format("g:i a")<% end_if %><% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i a")<% end_with %>
				</span>
			<% end_if %>
			</p>
		<% end_loop %>
		<h3 class="eventlist-title">
			<a href="$Link">$Title
			<% if $SubTitle %><span>$SubTitle</span><% end_if %></a>
		</h3>
		<a href="$Link" class="more-info">More Info</a>
	</div>
</div>