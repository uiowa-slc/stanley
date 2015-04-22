


<% if $CollectionsImage %>
	<div class="page-photo">
		<img src="$CollectionsImage.CroppedImage(1200,400).URL" alt="">
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
				<h2>Collection Highlights</h2>
				<ul class="collection-highlights clearfix">
					<% loop Children %>
						<li class="highlight-item" style="background-image: url($ArtworkImage.CroppedImage(400,300).URL);">
							<a class="highlight-link" href="$Link">

								<div class="highlight-content">
									<h4 class="highlight-artist">$Title
									<span>$ArtworkArtistLifespan</span></h4>
									<h5 class="highlight-title">$ArtworkTitle, <span>$ArtworkYear</span></h5>
								</div>

							</a>
						</li>
					<% end_loop %>
				</ul>
			</section>
		</div>
	</div>
</main><!-- end .container -->