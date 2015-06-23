<% if CarouselItems %>
	<div class="slipprycarousel">
		<ul id="demo1">
			<% loop CarouselItems %>
			<li>
				<% if $AssociatedPageID %>
					<a href="$AssociatedPage.Link">
						<img src="$Image.CroppedFocusedImage(1400,600).URL" alt="<h3>$Title</h3><p>$SubTitle</p>">
					</a>
				<% else %>
					<img src="$Image.CroppedFocusedImage(1400,600).URL" alt="<h3>$Title</h3><p>$SubTitle</p>">
				<% end_if %>
			</li>
			<% end_loop %>
		</ul>
		<div class="sy-caption-wrap"><div class="container sy-caption"></div></div>

	</div>
<% end_if %>

<section id="main-content" class="container" tabindex="-1">
	$Content
	$Form
</section><!-- end .container -->