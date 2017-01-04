<main class="container main" role="main">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<section id="main-content" tabindex="-1">
				<div class="dailyart">
					<h1>Art Of The Day</h1>
					<p class="dailyart-date">
						<time datetime="$Date.format(c)" itemprop="datePublished">$Date.Format(F jS)</time>
					</p>
					<div class="dailyart__meta clearfix">
						<ul class="dailyart__social">
							<li><a href="javascript:window.open('http://www.facebook.com/sharer/sharer.php?u=$AbsoluteLink', '_blank', 'width=400,height=500');void(0);"  title="Share on Facebook"><img src="{$ThemeDir}/images/facebook-circle.png" alt="Share on Facebook"></a>
							</li>
							<li><a href="https://twitter.com/intent/tweet?text=$AbsoluteLink" title="Share on Twitter" target="_blank"><img src="{$ThemeDir}/images/twitter-circle.png" alt="Share on Twitter"></a></li>
							<li><a href="javascript:window.open('https://plus.google.com/share?url=$AbsoluteLink', '_blank', 'width=400,height=500');void(0);" title="Share on Google" target="_blank"><img src="{$ThemeDir}/images/google-circle.png" alt="Share on Google"></a></li>
							<li><a href="javascript:window.open('https://www.linkedin.com/cws/share?url=$AbsoluteLink', '_blank', 'width=400,height=500');void(0);" title="Share on LinkedIn" target="_blank"><img src="{$ThemeDir}/images/linkedin-circle.png"></a></li>
						</ul>
					</div>

					<% if $DailyArtImage %>
						<div class="artwork-image">
							<img src="$DailyArtImage.SetRatioSize(500,500).URL" alt="$Title" />
						</div>
					<% end_if %>
					<h2>$Title</h2>
					$Content
					$Form
					<% include Credit %>
				</div>

			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->

<!-- Previous Article Link -->
<div class="dailyart-prevnext">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<% if PreviousPage %>
					<a href="$PreviousPage.Link" class="prev link">
						<span class="arrows">&larr;</span>
						<% if $PreviousPage.DailyArtImage %><img src="$PreviousPage.DailyArtImage.CroppedFocusedImage(100,100).URL" alt="Previous Post"><% end_if %>
						<p class="dailyart-prevnext-name">
							<span class="title">Previous</span>
						</p>
					</a>
				<% end_if %>
				<% if NextPage %>
					<a href="$NextPage.Link" class="next link">
						<p class="dailyart-prevnext-name">
							<span class="title">Next</span>
						</p>
						<% if $NextPage.DailyArtImage %><img src="$NextPage.DailyArtImage.CroppedFocusedImage(100,100).URL" alt="Next Post"><% end_if %>
						<span class="arrows">&rarr;</span>
					</a>
				<% end_if %>
			</div>
		</div>
	</div>
</div>

