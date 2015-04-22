<% if ArtworkImage %>
	<section class="artwork-image">
		<a href="$ArtworkImage.URL" class="lightbox tooltip" title="$Title, $ArtworkTitle, $ArtworkYear" data-title="Click on the image to see a larger version" data-tooltip-options='{"direction":"top","follow":"true"}'>
			<img src="$ArtworkImage.SetHeight(600).URL" alt="$ArtworkTitle" />
		</a>
	</section>
<% end_if %>
<main class="container main clearfix" role="main" id="main-content">
	<section class="artwork-details">
		<h1 class="title">$Title</h1>
		<h4>$ArtworkArtistLifespan</h4>
		<h4>$ArtworkTitle, $ArtworkYear</h4>
		<h4>$ArtworkDimensions</h4>
		<p>$ArtworkCollectionInfo</p>
	</section>
	<section class="artwork-content">
		$ArtworkText
	</section>
</main><!-- end .container -->
