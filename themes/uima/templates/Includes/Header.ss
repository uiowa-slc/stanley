<!-- Header -->
<header class="header" role="banner">
	<div class="container">

		<a href="{$BaseHref}" class="logo">
			<img src="{$ThemeDir}/images/uima_logo.png" alt="$SiteConfig.Title">
		</a>

		<!-- Search -->
		<% if $SearchForm %>
			<div class="search-bar mobile-hide" role="search">
			  $SearchForm
			</div>
		<% end_if %>

		<button class="shifter-handle">Menu</button>
		<% include MainNav %>
	</div>
</header>