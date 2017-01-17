<% include HeaderPhoto %>

<main class="container main" role="main">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<section id="main-content" tabindex="-1">
				<div class="dailyart">
					<h1>Art Of The Day</h1>
					<p class="dailyart-date">
						<% if $ArchiveYear %>
							<%t Blog.Archive 'Archive' %>:
							<% if $ArchiveDay %>
								$ArchiveDate.format(F jS)
							<% else_if $ArchiveMonth %>
								$ArchiveDate.format(F jS)
							<% else %>
								$ArchiveDate.format('Y')
							<% end_if %>
						<% else_if $CurrentTag %>
							<%t Blog.Tag 'Tag' %>: $CurrentTag.Title
						<% else_if $CurrentCategory %>
							<%t Blog.Category 'Category' %>: $CurrentCategory.Title
						<% end_if %>
					</p>
					<br>

					$Content
					$Form

					<!-- Loop Daily Art Entries -->
					<% loop $CurrentDayPosts %>
						<% include DailyArtBlogPostSummary %>
					<% end_loop %>
					<% include Pagination %>

				</div>
			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->

<% with $CurrentDayPosts.First %>
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