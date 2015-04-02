<% if CarouselItems %>
	<div class="homecarousel">
		<% loop CarouselItems %>
			<div class="hero-img">
				<img srcset="$Image.URL" alt="$Title">
				<div class="inner">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<a href="$link">
									<h3>$Title</h3>
									<p>$SubTitle</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		<% end_loop %>
	</div>
<% end_if %>

<div class="container">
	$Content
	$Form
</div><!-- end .container -->