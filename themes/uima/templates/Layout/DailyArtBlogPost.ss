<% include HeaderPhoto %>
<% include DailyArtBlogDaySlider %>
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
<% with $DailyArtBlogDay %>
	<!-- Previous Article Link -->
	<% if PreviousPage || NextPage %>
		<div class="prevnext">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<% if PreviousPage %>
							<a href="$PreviousPage.Link" class="prevnext__link prev">
								<span class="prevnext__arrows">&larr;</span>
								<% if $PreviousPage.DailyArtImage %>
									<img src="$PreviousPage.DailyArtImage.CroppedFocusedImage(100,100).URL" alt="Previous Post">
								<% end_if %>
								<p class="prevnext__name">
									<span class="title">Previous</span>
								</p>
							</a>
						<% end_if %>
						<% if NextPage %>
							<a href="$NextPage.Link" class="prevnext__link next ">
								<p class="prevnext__name">
									<span class="title">Next</span>
								</p>
								<% if $NextPage.DailyArtImage %>
									<img src="$NextPage.DailyArtImage.CroppedFocusedImage(100,100).URL" alt="Next Post">
								<% end_if %>
								<span class="prevnext__arrows">&rarr;</span>
							</a>
						<% end_if %>
					</div>
				</div>
			</div>
		</div>
	<% end_if %>
<% end_with %>
