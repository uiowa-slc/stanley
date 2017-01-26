<div class="dailyart__slider-holder">
	<div class="dailyart__slider-container">
		<div id="dailyart__day-slider" class="dailyart__day-slider">
			<%-- <% cached %> --%>
				<% loop Days %>
					<% if $LatestPost %>
						<a href="$LatestPost.Link" class="dailyart__day dailyart__day--has-post" data-month="{$Month}" data-date="{$Date}" style="background-image: url('$LatestPost.DailyArtImage.Fill(150,150).URL');" data-pos="{$Pos}">
						<div class="dailyart__screen"></div>
					<% else %>
						<div class="dailyart__day dailyart__day--no-post" data-month="{$Month}" data-date="{$Date}" data-pos="{$Pos}">
					<% end_if %>
						<span class="dailyart__month">{$FormattedMonth}</span>
						<span class="dailyart__date">{$Date}</span>
					<% if $LatestPost %>
						</a>
					<% else %>
						</div>
					<% end_if %>
				<% end_loop %>
			<%-- <% end_cached %> --%>
		</div>
	 </div>
</div>