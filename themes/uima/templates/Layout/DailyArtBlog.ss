<% include HeaderPhoto %>
<% include DailyArtBlogDaySlider %>
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
<% include DailyArtPrevNext %>