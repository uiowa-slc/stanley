<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-lg-10 col-lg-offset-1">
			<article id="main-content" class="clearfix newsentry" tabindex="-1">
				<h1 class="entry-title">$Title</h1>
				<p class="entry-date">
					Posted on <time datetime="$Date.format(c)" itemprop="datePublished">$Date.format(F d Y)</time>
				</p>
				<hr />
				<% if $Photo %>
					<img src="$Photo.SetWidth(400).URL" alt="" class="right entryphoto">
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
			</article>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->