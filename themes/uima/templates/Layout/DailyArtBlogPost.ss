<% include HeaderPhoto %>
<div id="dailyart__slider-holder" class="dailyart__slider-holder"><img class="dailyart__loader-img" src="{$ThemeDir}/images/daily-art-loader.gif" alt="" role="presentation" /></div>
<%-- <% include DailyArtBlogDaySlider %> --%>
<main class="container main" role="main" id="main" data-blog-url="{$Parent.Link}">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<section id="main-content" tabindex="-1" data-month="$PublishDate.Format(M)" data-date="$PublishDate.Format(d)">
				<div class="dailyart">
					<h1>Art Of The Day</h1>
					<p class="dailyart-date">
						<time datetime="$Date.Rfc3339" itemprop="datePublished">$Date.Format(MMMM d)</time>
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
