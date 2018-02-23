


<% if $CollectionsImage %>
	<div class="page-photo">
		<picture>
			<!--[if IE 9]><video style="display: none;"><![endif]-->
			<source srcset="$CollectionsImage.CroppedFocusedImage(1200,400).URL" media="(min-width: 980px)">
			<source srcset="$CollectionsImage.CroppedFocusedImage(980,330).URL" media="(min-width: 768px)">
			<source srcset="$CollectionsImage.CroppedFocusedImage(768,300).URL" media="(min-width: 480px)">
			<!--[if IE 9]></video><![endif]-->
			<img srcset="$CollectionsImage.CroppedFocusedImage(480,300).URL" alt="$Title">
		</picture>
		<% if $ArtCreditLinkID %><a href="$ArtCreditLink.Link" class="creditlink" title="More Information"><img src="{$ThemeDir}/images/info.png" alt="More Information"></a><% end_if %>
	</div>
<% end_if %>

<main class="container main" role="main">
	<div class="row">
		<!-- Section Heading -->
		<% if Menu(2) %>
			<% with Level(1) %>
				<div class="col-sm-12">
				<h3 class="section-title"><% if $LinkOrCurrent = "current" %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %></h3>
				</div>
			<% end_with %>
		<% end_if %>

		<!-- Side Bar -->
		<div class="col-md-4 col-lg-3 sidebar">
			<h1 class="collection-name">$Title</h1>
				<div class="naver">

					<div class="side-navigation">

						<% if Menu(2) %>
						<h4 id="handle2">Navigation</h4>
						<nav class="sec-nav" data-navigation-handle="#handle2">
							<ul class="first-level">

								<% if not $HideSideNav %>

								<% with Level(1) %>
									<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a></li>
								<% end_with %>
								<% loop Menu(2) %>
									<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a>

									<%-- third level nav option 1 --%>
										<% if $LinkOrSection = "section" && Children %>
											<ul class="second-level">
												<% loop Children %>
													<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>>
														<a href="$Link">$MenuTitle</a>
								

													</li>
												<% end_loop %>
											</ul>
										<% end_if %>

									<%-- end third level nav option 1 --%>

									</li>
								<% end_loop %>
								<% end_if %>
							</ul>
						</nav>
						<% end_if %>
					</div><!-- end .subnavigation -->
				</div><!-- end Naver -->


				<% if SideBarView %>
					<div id="Sidebar" class="browsebydate tablet-hide">
						$SideBarView
					</div>
				<% end_if %>






		</div>

		<!-- Main Content -->
		<div class="col-md-8 col-lg-8 col-lg-offset-1 children">
			<section id="main-content" tabindex="-1">
				$Content
				$Form
			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
	<div class="row">
		<div class="col-sm-12">
			<section class="highlights">
				<% if Children %><h2>Collection Highlights</h2><% end_if %>
				<ul class="collection-highlights clearfix">
					<% loop Children %>
						<li class="highlight-item clearfix">
							<a class="highlight-link" href="$Link">
								<span class="highlight-img" style="background-image: url($ArtworkImage.CroppedFocusedImage(400,300).URL);"></span>
								<div class="highlight-content">
									<h4 class="highlight-artist">$Title</h4>
									<h4 class="highlight-lifespan">$ArtworkArtistLifespan</h4>
									<h5 class="highlight-title">$ArtworkTitle<% if $ArtworkYear %>, <span>$ArtworkYear</span><% end_if %></h5>
								</div>
							</a>
						</li>
					<% end_loop %>
				</ul>
			</section>
			<% include Credit %>
		</div>
	</div>
</main><!-- end .container -->