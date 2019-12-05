<div class="dailyart-entry">
	<p class="dailyart-date">
		<time datetime="$Date.format(c)" itemprop="datePublished">$Date.Format(F jS)</time>
	</p>
	<% if $DailyArtImage %>
		<div class="dailyart-image">
			<img src="$DailyArtImage.Fill(500,500).URL" alt="$Title" />
		</div>
	<% end_if %>
	<% include SocialShare %>
	<h2>$Title</h2>
	$Content
	<% if $DailyArtAdditionalText %>
		<ul class="accordion">
			<li class="accordion-item">
				<h4 class="accordion-thumb">Additional Information</h4>
				<div class="accordion-panel">
					$DailyArtAdditionalText
				</div>
			</li>
		</ul>
	<% end_if %>
	<% include TagsCategories %>
	<% include Credit %>
</div>
