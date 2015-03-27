<!DOCTYPE html>
<!--[if lt IE 10]><html lang="en" class="lt-ie10 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
	<% base_tag %>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="$Content.LimitCharacters(150)">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>$Title | UIMA</title>
	<link rel="shortcut icon" href="{$BaseHref}favicon.ico" type="image/x-icon">
	<!-- CSS -->
	<script>
		function loadCSS( href, before, media, callback ){
			"use strict";
			var ss = window.document.createElement( "link" );
			var ref = before || window.document.getElementsByTagName( "script" )[ 0 ];
			var sheets = window.document.styleSheets;
			ss.rel = "stylesheet";
			ss.href = href;
			ss.media = "only x";
			if( callback ) {
				ss.onload = callback;
			}
			ref.parentNode.insertBefore( ss, ref );
			ss.onloadcssdefined = function( cb ){
				var defined;
				for( var i = 0; i < sheets.length; i++ ){
					if( sheets[ i ].href && sheets[ i ].href.indexOf( href ) > -1 ){
						defined = true;
					}
				}
				if( defined ){
					cb();
				}
				else {
					setTimeout(function() {
						ss.onloadcssdefined( cb );
					});
				}
			};
			ss.onloadcssdefined(function() {
				ss.media = media || "all";
			});
			return ss;
		}
		loadCSS( "{$ThemeDir}/css/master.css" );
	</script>
	<noscript>
		<link rel="stylesheet" href="{$ThemeDir}/css/master.css">
	</noscript>
</head>
<body class="$ClassName">

	<% include Header %>
	$Layout
	<% include Footer %>

	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="{$ThemeDir}/js/build/production.min.js"></script>

</body>
</html>



