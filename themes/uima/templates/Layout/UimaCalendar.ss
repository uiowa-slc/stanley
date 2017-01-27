<% include HeaderPhoto %>

<main class="container main" role="main">
	<div class="row">
		<!-- Side Bar -->

			<div class="col-md-4 col-lg-3 sidebar">
				<% include UimaCalendarSideNav %>
			</div>

		<!-- Main Content -->
		<div class="col-md-8 col-lg-8 col-lg-offset-1 children">
			<section id="main-content" tabindex="-1">
				<% if $FilterHeader %>
					<h1>$FilterHeader</h1>
				<% else %>
					<h1>$Title</h1>
				<% end_if %>
				$Content
				$Form

				<% if PaginatedList %>
					<% loop PaginatedList %>
							<% include UimaEventCard %>	
					<% end_loop %>
				<% end_if %>
				<!-- Pagination -->
				<% include Pagination %>
			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->