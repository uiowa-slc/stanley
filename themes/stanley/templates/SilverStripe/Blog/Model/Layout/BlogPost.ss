<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-md-8 col-lg-8">
			<article id="main-content" class="clearfix newsentry" tabindex="-1">
				<h1 class="entry-title">$Title</h1>
				<p class="entry-date">
					Posted on <time datetime="$Date.format(c)" itemprop="datePublished">$Date.Format(F d), $Date.Format(Y)</time>
				</p>
				<hr />
				<% if $FeaturedImage %>
					<img src="$FeaturedImage.ScaleWidth(400).URL" alt="" class="right entryphoto" role="presentation">
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
			<!-- Side Bar -->
			<div class="col-md-4 col-lg-3 offset-lg-1 sidebar">
				<% if SideBarView %>
					<div id="Sidebar" class="browsebydate">
						$SideBarView
					</div>
				<% end_if %>
			</div>
	</div><!-- end .row -->
</main><!-- end .container -->
