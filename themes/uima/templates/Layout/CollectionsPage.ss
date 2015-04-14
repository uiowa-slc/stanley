
<h1>Collections</h1>
<% if CollectionsImage %>
	<img src="$CollectionsImage.SetWidth(348).URL" alt="$Title" />
<% end_if %>

<p>$CollectionsImageCaption</p>
<h2>$CollectionsTitle</h2>
<br />
<p>$CollectionsText</p>

<ul class="artwork">
	<% loop Children %>
	<li>
		<a href="$Link">$ArtworkImage.SetWidth(90)</a>
		<h3><a href="$Link">$Title</a></h3>
		<h4>$ArtworkTitle  $ArtworkYear</h4>
	</li>
	<% end_loop %>
</ul>
