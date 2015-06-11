
<% if ArtworkImage %>
	<section class="artwork-image">
		<a href="$ArtworkImage.URL" class="lightbox tooltip" title="$Title, $ArtworkTitle, $ArtworkYear" data-title="Click on the image to see a larger version" data-tooltip-options='{"direction":"top","follow":"true"}'>
			<img src="$ArtworkImage.SetHeight(600).URL" alt="$ArtworkTitle" />
		</a>
	</section>
<% end_if %>
<main class="container main clearfix" role="main" id="main-content">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2">
			<h1 class="title">$Title</h1>
			<% if $ArtworkArtistLifespan %><h4>$ArtworkArtistLifespan</h4><% end_if %>
			<div class="artworktitle">$ArtworkTitle<% if $ArtworkYear %>, $ArtworkYear<% end_if %></div>
			<h4><% if $ArtworkMedium %>$ArtworkMedium,<% end_if %> <% if $ArtworkDimensions %>$ArtworkDimensions<% end_if %></h4>
			<% if $ArtworkCollectionInfo %><p>$ArtworkCollectionInfo</p><% end_if %>
			$ArtworkText
		</div>
	</div>
</main><!-- end .container -->
