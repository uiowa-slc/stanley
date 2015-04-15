<main class="container main" role="main">
	<div class="row">
		<div class="col-sm-12">
			<section>
				<!-- $Breadcrumbs -->
				<h1>$Title</h1>
				$Content
				$Form
				<ul class="collectionsholder justify">
					<% loop Children %>

						<li class="justify-item">
							<a href="$Link">
							<div class="collection-box" style="background-image: url($CollectionsCover.CroppedImage(400,300).URL);">
								<h2 class="title">$Title</h2>
							</div>
							</a>
						</li>

					<% end_loop %>
					<li class="justify-item filler"></li>
				</ul>
			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->