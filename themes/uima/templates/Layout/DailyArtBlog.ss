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

					<div class="owl-carousel owl-theme">
  						<div> DEC 10 </div>
  						<div> DEC 11 </div>
  						<div> DEC 12 </div>
  						<div> DEC 13 </div>
  						<div> DEC 14 </div>
  						<div> DEC 15 </div>
  						<div> DEC 16 </div>
						<div> DEC 17 </div>
  						<div> DEC 18 </div>
  						<div> DEC 19 </div>
  						<div> DEC 20 </div>
  						<div> DEC 21 </div>
  						<div> DEC 22 </div>
  						<div> DEC 23 </div>
  					</div>

					$Content
					$Form

					<!-- Loop Daily Art Entries -->
					<% loop PaginatedList %>
						<div class="dailyart-entry">
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
							<% include TagsCategories %>
							<% include Credit %>
						</div>
					<% end_loop %>
					<% include Pagination %>
				</div>
			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->