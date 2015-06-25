
<% if $ArtworkImage %>
	<section class="artwork-image">
		<div class="container">
			<a href="$ArtworkImage.URL" class="lightbox tooltip" title="$Title, $ArtworkTitle, $ArtworkYear" data-title="Click on the image to see a larger version" data-tooltip-options='{"direction":"top","follow":"true"}'>
				<img src="$ArtworkImage.SetHeight(600).URL" alt="$ArtworkTitle" />
			</a>
			<% if $ArtCredit %>
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<span class="artcredit">$ArtCredit</span>
					</div>
				</div>
			<% end_if %>
		</div>
	</section>
<% end_if %>
<main class="container main clearfix" role="main" id="main-content">
	<div class="row">
		<% if $Children %><%--Determine if Side Nav should be rendered, you can change this logic --%>
			<div class="col-md-4 col-lg-3 sidebar">
				<div class="naver">

					<div class="side-navigation">

						<% if Menu(2) %>
						<h4 id="handle">Navigation</h4>
						<nav class="sec-nav" aria-label="Secondary" data-navigation-handle="#handle">
							<ul class="first-level">
								<% with Level(3) %>
									<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a></li>
								<% end_with %>
								<% loop Menu(4) %>
									<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a>

									<%-- third level nav option 1 --%>
										<% if $LinkOrSection = "section" && Children %>
											<ul class="second-level">
												<% loop Children %>
													<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>>
														<a href="$Link">$MenuTitle</a>
														<% if $LinkOrSection = "section" && Children %>
															<ul class="third-level">
																<% loop Children %>
																	<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>>
																		<a href="$Link">$MenuTitle</a>
																	</li>
																<% end_loop %>
															</ul>
														<% end_if %>
													</li>
												<% end_loop %>
											</ul>
										<% end_if %>

									<%-- end third level nav option 1 --%>

									</li>
								<% end_loop %>

							</ul>
						</nav>
						<% end_if %>
					</div><!-- end .subnavigation -->
				</div><!-- end Naver -->

			</div>
		<% end_if %>

		<div class="<% if $Children %>col-md-8 col-lg-8 col-lg-offset-1 children<% else %>col-lg-8 col-lg-offset-2<% end_if %>">
			<h1 class="title">$Title</h1>
			<div class="cutline">
				<% if $ArtworkArtistLifespan %><span class="artistlifespan">$ArtworkArtistLifespan</span><br /><% end_if %>
				$ArtworkTitle<% if $ArtworkYear %>, $ArtworkYear<% end_if %><br />
				<% if $ArtworkMedium %><span class="artworkmedium">$ArtworkMedium</span><% end_if %><% if $ArtworkDimensions && $ArtworkMedium %>, <% end_if %>
				<% if $ArtworkDimensions %>$ArtworkDimensions<% end_if %><br />
				<% if $ArtworkCollectionInfo %>$ArtworkCollectionInfo<% end_if %>
			</div>
			$ArtworkText
		</div>
	</div>
</main><!-- end .container -->
