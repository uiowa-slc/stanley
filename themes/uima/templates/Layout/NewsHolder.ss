<% include HeaderPhoto %>


<% if SelectedTag %>
	<!-- ========= BEGIN SELECTED TAG CONTENT ========= -->
	<main class="container main" role="main">
		<div class="row">

			<!-- Main Content -->
			<div class="col-md-8 col-lg-8">
				<section id="main-content" tabindex="-1">
					<h2 class="cat-heading-title"><% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h2>
					<!-- Loop News -->
					<div class="newsholder-entries">
						<% loop PaginatedNewsEntries(20) %>
							<div class="newsblock clearfix <% if $Photo %>withphoto<% end_if %>">
								<div class="newsblock-info">
									<h4 class="newsblock-title"><a href="$Link">$Title</a></h4>
									<p>$Content.LimitCharacters(100)</p>
								</div>
							</div>
						<% end_loop %>
					</div>
					<% include NewsPagination %>
				</section>
			</div><!-- end .col -->

			<!-- Side Bar -->
			<div class="col-md-4 col-lg-3 col-lg-offset-1 sidebar">
				<% if SideBarView %>
					<div id="Sidebar" class="browsebydate tablet-show">
						$SideBarView
					</div>
				<% end_if %>
			</div>

		</div><!-- end .row -->
	</main><!-- END .container -->
<% else %>

	<!-- ========= BEGIN FEATURED CONTENT ========= -->
	<main class="container main" role="main">
		<div class="row">

			<!-- Main Content -->
			<div class="col-md-8 col-lg-8">
				<section id="main-content" tabindex="-1">
					<h1>$Title</h1>
					$Content
					$Form
					<!-- Loop News -->
					<div class="newsholder-entries">
						<% loop PaginatedList %>
							<div class="newsblock clearfix <% if $Photo %>withphoto<% end_if %>">
								<div class="newsblock-info">
									<% if $Photo %>
										<a href="$Link">
											<img src="$Photo.Fill(120,120).URL" alt="$Title" class="right">
										</a>
									<% end_if %>
									<h3 class="newsblock-title"><a href="$Link">$Title</a></h3>
									<p class="entry-date">
										Posted on <time datetime="$Date.format(c)" itemprop="datePublished">$Date.format(F d Y)</time>
									</p>
									<p class="entry-content">$Content.LimitCharacters(150)</p>
								</div>
							</div>
						<% end_loop %>
					</div>
					<% include Pagination %>
				</section>
			</div><!-- end .col -->

			<!-- Side Bar -->
			<div class="col-md-4 col-lg-3 col-lg-offset-1 sidebar">
					$SideBarView
			</div>
		</div><!-- end .row -->
	</main><!-- end .container -->
<% end_if %>