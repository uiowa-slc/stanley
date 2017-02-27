<% include HeaderPhoto %>
<div id="dailyart__slider-holder" class="dailyart__slider-holder"></div>
<%-- <% include DailyArtBlogDaySlider %> --%>
<main class="container main" role="main">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<section id="main-content" tabindex="-1" data-month="$PublishDate.Format(n)" data-date="$PublishDate.Format(j)">
				<div class="dailyart">
					<h1>Art Of The Day</h1>
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
					<% if $DailyArtAdditionalText %>
						<ul class="accordion">
							<li class="accordion-item">
								<h5 class="accordion-thumb">Additional Information</h5>
								<div class="accordion-panel">
									$DailyArtAdditionalText
								</div>
							</li>
						</ul>
					<% end_if %>
					$Form
					<% include TagsCategories %>
					<% include Credit %>

					<% loop $OtherPosts %>
						<% include DailyArtBlogPostSummary %>
					<% end_loop %>
				</div>
			</section>
		</div>
	</div>
</main>
<% include DailyArtPrevNext %>
