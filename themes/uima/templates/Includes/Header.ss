<!-- Header -->
<header class="header" role="banner">
	<div class="container">
		<a href="{$BaseHref}" class="logo">
			<img src="{$ThemeDir}/images/uima_logo.gif" alt="University of Iowa Museum of Art">
		</a>
		<form id="SearchForm" action="" method="get" enctype="application/x-www-form-urlencoded" class="mobile-hide">
			<div class="searchcontainer">
				<!-- <label for="searchinput" class="searchlabel">Search</label> -->
				<input type="search" id="searchinput" placeholder="Search" name="Search" class="searchinput" autocomplete="off">
				<input type="submit" class="searchbtn" value="search">
			</div>
		</form>
		<span class="shifter-handle">Menu</span>
	</div>
</header>
<% include MainNav %>