<% include HeaderPhoto %>

<main class="container main" role="main">
	<div class="row">
		<!-- Section Heading -->
		<% if Menu(2) %>
			<% with Level(1) %>
				<div class="col-sm-12">
				<h3 class="section-title"><% if $LinkOrCurrent = "current" %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %></h3>
				</div>
			<% end_with %>
		<% end_if %>

		<!-- Side Bar -->

			<div class="col-md-4 col-lg-3 sidebar">
				<% include ExhibitionHolderSideNav %>
			</div>


		<!-- Main Content -->
		<div class="<% if $PaginatedList || $Parent %>col-md-8 col-lg-8 offset-lg-1<% else %>col-md-10 offset-md-1<% end_if %>">
			<section id="main-content" tabindex="-1">
				<!-- <h1>$Title</h1> -->
				$Content
				$Form

				<% loop PaginatedList %>
					<div class="exhibitlist">
						<!-- Image -->
						<% if $ExhibitionImage %>
							<div class="exhibit-img">
								<a href="$link">
									<img src="$ExhibitionImage.CroppedFocusedImage(700,350).URL" alt="$Title">
								</a>
							</div>
						<% end_if %>
						<div class="exhibit-content clearfix <% if $StartDate || $ExhibitionLocation %>withdate<% end_if %>">
							<!-- Title -->
							<h2 class="exhibit-title"><a href="$link">$Title</a></h2>
							<!-- Link -->
							<a href="$Link" class="exhibit-link">Learn More &raquo;</a>
							<!-- Date | Location -->
							<% if $StartDate || $ExhibitionLocation %>
								<h4 class="exhibit-date">
								<% if $StartDate %><% if $EndDate.Format('Y') == $StartDate.Format('Y') %>$StartDate.Format('F j')<% else %>$StartDate.Format('F j, Y')<% end_if %><% end_if %><% if $EndDate %>&ndash;$EndDate.Format('F j, Y') <% end_if %>
								<% if $StartDate && $ExhibitionLocation %> | <% end_if %>
								<% if $ExhibitionLocation %>$ExhibitionLocation<% end_if %>
								</h4>
							<% end_if %>


						</div>
					</div>
				<% end_loop %>


				<% include Pagination %>
			</div>

		</section>

		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->

