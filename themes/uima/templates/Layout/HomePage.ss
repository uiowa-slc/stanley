<% if CarouselItems %>
	<div class="slipprycarousel">
		<ul id="demo1">
			<% loop CarouselItems %>
			<li>
				<img src="$Image.URL" alt="<h3>$Title</h3><p>$SubTitle</p>">
				<p class="captionsrc">Lorem ipsum dolor sit amet</p>
			</li>
			<% end_loop %>
		</ul>
		<div class="sy-caption-wrap"><div class="container sy-caption"></div></div>

	</div>
<% end_if %>

<div class="container">
	$Content
	$Form
</div><!-- end .container -->