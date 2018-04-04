<!DOCTYPE html>
<!--[if lt IE 10]><html lang="en" class="lt-ie10 no-js"> <![endif]-->
<!--[if IE 8]><html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
	<% base_tag %>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="<% if MetaDescription %>$MetaDescription<% else %>$Content.LimitCharacters(150)<% end_if %>">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>$Title | $SiteConfig.Title</title>
	$OpenGraph
	<script src="{$ThemeDir}/js/modernizr.js"></script>
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,400italic|Lato:400,700' rel='stylesheet' type='text/css'>
	<!-- Favicon -->
	<link rel="shortcut icon" href="{$BaseHref}favicon.ico" type="image/x-icon">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/main-2018-4-4.css" />
	<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/uiowa-bar.css" />
	<!-- Picturefill -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" async></script>

	<!--[if IE 8]>
		<meta http-equiv="x-ua-compatible" content="IE=8">
	  	<script>var IE8 = true;</script>
	  	<script src="{$ThemeDir}/js/ie/site.ie8.js"></script>
		<link rel="stylesheet" href="{$ThemeDir}/css/site.ie8.css">
	<![endif]-->
	<!--[if IE 9]>
		<script>var IE9 = true;</script>
		<script src="{$ThemeDir}/js/ie/site.ie9.js"></script>
	<![endif]-->
	<!--[if lt IE 9]>
		 <script src="{$ThemeDir}/js/ie/html5shiv.js"></script>
		 <script src="{$ThemeDir}/js/ie/respond.min.js"></script>
	<![endif]-->
</head>
<body class="$ClassName $Action">
	<div class="shifter-page">
		<a id="skiptocontent" class="visuallyhidden focusable" href="#main-content">Skip to main content</a>
		<% include UiowaBar %>
		<% include Header %>
		$Layout
		<% include Footer %>
	</div>

	<!-- Mobile Navigation Slideout -->
	<% include ShifterNavigation %>

	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="//e.issuu.com/embed.js" async="true"></script>
	<script src="{$ThemeDir}/js/build/production.min.js"></script>
	<%-- DO NOT REMOVE THE "INSERT JS HERE" COMMENT BELOW, --%>
	<!-- INSERT JS HERE -->
	<!-- Google Analytics -->
	$Analytics

</body>
</html>