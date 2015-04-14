<% if ArtworkImage %>
	<img src="$ArtworkImage.SetWidth(500).URL" alt="$ArtworkArtist" />
<% end_if %>

<h2>$ArtworkArtist</h2><br />
<h3>$ArtworkArtistLifespan</h3> <br />
<h4>$ArtworkTitle  $ArtworkYear</h4>
<h5>$ArtworkDimensions </h5>
<p>$ArtworkCollectionInfo</p>
<p>$ArtworkText</p>

<% loop Parent %>
	<p>Other pages in the <a href="$Link">$Title</a> Collection</p>
	<ul>
		<% loop Children %>
		<li>
			<h3><a href="$Link">$Title</a></h3>
		</li>
		<% end_loop %>
	</ul>
<% end_loop %>