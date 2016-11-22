<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-lg-10 col-lg-offset-1">
			<article id="main-content" class="clearfix newsentry" tabindex="-1">
				<h1 class="entry-title">$Title</h1>
				<p class="entry-date">
					Posted on <time datetime="$Date.format(c)" itemprop="datePublished">$Date.Format(F d), $Date.Format(Y)</time>
				</p>
				<hr />
				<% if $FeaturedImage %>
					<img src="$FeaturedImage.SetWidth(400).URL" alt="" class="right entryphoto" role="presentation">
				<% end_if %>

				$Content
				$Form

				<!-- Show Tags -->
				<% if TagsCollection %>
					<div class="tags">
						<% _t('BlogSummary_ss.TAGS','Tags') %>:
						<% loop TagsCollection %>
							<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
						<% end_loop %>
					</div>
				<% end_if %>

				<% include Credit %>
			</article>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->