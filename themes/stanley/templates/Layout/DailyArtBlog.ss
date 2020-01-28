<% include HeaderPhoto %>
<div id="dailyart__slider-holder" class="dailyart__slider-holder"><img class="dailyart__loader-img" src="{$ThemeDir}/images/daily-art-loader.gif" alt="" role="presentation" /></div>
<main class="container main" role="main" id="main" data-blog-url="{$Link}">

	<div class="row">
		<div class="col-md-8 offset-md-2">
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
						<% if $First %><div id="most-recent-post" data-month="$PublishDate.Format(n)" data-date="$PublishDate.Format(j)"><% end_if %>
						<% include DailyArtBlogPostSummary %>
						<% if $First %></div><% end_if %>
					<% end_loop %>
					<% include Pagination %>

				</div>
			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->
<% include DailyArtPrevNext %>
