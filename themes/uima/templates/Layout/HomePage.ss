<% if CarouselItems %>
	<div class="homecarousel">
		<% loop CarouselItems %>
			<div class="hero-img">
				<img srcset="$Image.URL" alt="$Title">
				<div class="inner">
					<h3>$Title</h3>
					<p>$SubTitle</p>
				</div>
			</div>
		<% end_loop %>
	</div>
<% end_if %>

<div class="container">
	$Content
	$Form
</div><!-- end .container -->