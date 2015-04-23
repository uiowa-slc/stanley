<!DOCTYPE html>
<!--[if lt IE 10]><html lang="en" class="lt-ie10 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
	<% base_tag %>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="$Content.LimitCharacters(150)">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>$Title | $SiteConfig.Title</title>
	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,400italic|Lato:400,700' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="{$BaseHref}favicon.ico" type="image/x-icon">

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/master.css" />
</head>
<body class="$ClassName shifter">
	<div class="shifter-page">
		<a id="skiptocontent" class="visuallyhidden focusable" href="#main-content">Skip to main content</a>
		<% include Header %>
		$Layout
		<% include Footer %>
	</div>

	<!-- Mobile Navigation Slideout -->
	<% include ShifterNavigation %>

	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="{$ThemeDir}/js/build/production.min.js"></script>

</body>
</html>