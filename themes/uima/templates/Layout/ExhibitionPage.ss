
<div class="exhibit-largeimg" style="background-image: url($EventPageImage.URL);">
	<!-- Date | Location -->
	<div class="inner">
		<div class="container">
			<% if $StartDate || $EventLocation %><h3 class="exhibitinner-date"><% if $StartDate %>$StartDate.Format('F d')<% end_if %><% if $EndDate %> - $EndDate.Format('F d') <% end_if %><% if $StartDate && $EventLocation %> | <% end_if %><% if $EventLocation %>$EventLocation<% end_if %></h3><% end_if %>
			<div class="exhibition-sociallinks">
				<a class="js-social-share" href="https://www.facebook.com/sharer/sharer.php?u=$AbsoluteLink" target="_blank"><img src="{$ThemeDir}/images/facebook_circle_gray-32.png" alt="Facebook"></a>
				<a class="js-social-share" href="https://twitter.com/intent/tweet/?text=$Title&url=$AbsoluteLink&via=UIMuseumofArt" target="_blank"><img src="{$ThemeDir}/images/twitter_circle_gray-32.png" alt="Twitter"></a>
			</div>
		</div>
	</div>
</div>


<main class="container main" role="main">
	<div class="row">

		<!-- Main Content -->
		<div class="col-md-8 col-lg-8">
			<section>
				<!-- $Breadcrumbs -->
				<!-- <h1>$Title</h1> -->
				$EventDescription
				$Form

			</section>
		</div><!-- end .col -->

		<!-- Side Bar -->
		<div class="col-md-4 col-lg-3 col-lg-offset-1 sidebar">

		</div>
	</div><!-- end .row -->
</main><!-- end .container -->

