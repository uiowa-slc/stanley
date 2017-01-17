<div class="dailyart-entry">
	<p class="dailyart-date">
		<time datetime="$Date.format(c)" itemprop="datePublished">$Date.Format(F jS)</time>
	</p>
	<% if $DailyArtImage %>
		<div class="dailyart-image">
			<img src="$DailyArtImage.SetRatioSize(500,500).URL" alt="$Title" />
		</div>
	<% end_if %>
	<% include SocialShare %>
	<h2>$Title</h2>
	$Content
	<% include TagsCategories %>
	<% include Credit %>
</div>