<!-- Header -->
<header class="header" role="banner">
	<div class="container">

		<a href="{$BaseHref}" class="logo">
			<img src="{$ThemeDir}/images/uima_logo.png" alt="University of Iowa Museum of Art">
		</a>

		<!-- Search -->
		<% if $SearchForm %>
			<div class="search-bar mobile-hide" role="search">
			  $SearchForm
			</div>
		<% end_if %>

		<span class="shifter-handle">Menu</span>
		<% include MainNav %>
	</div>
</header>