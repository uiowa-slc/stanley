<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-md-8 col-lg-8">
			<section id="main-content" tabindex="-1">
				<h1>$Title</h1>
				$Content
				$Form

				<% if Events %>
					<div class="event-list">
						<% loop Events %>
							<div class="clearfix list-item">
								<% if $Image %>
									<img src="{$Event.Image.CroppedImage(200,200).URL}" alt="$Title">
								<% end_if %>
								<div class="">
									<h4 class="title"><a href="$Link">$Title</a></h4>
									<p class="">$DateRange</p>
									<% with Event %>
										<p class="">$Content</p>
									<% end_with %>
								</div>
							</div><!-- end .list-item -->
						<% end_loop %>
					</div>
				<% end_if %>
			</section>
		</div><!-- end .col -->

		<!-- Side Bar -->
		<div class="col-md-4 col-lg-3 col-lg-offset-1 sidebar">
				$SideBarView
		</div>
	</div><!-- end .row -->
</main><!-- end .container -->