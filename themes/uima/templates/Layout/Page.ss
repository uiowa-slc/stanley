<% if $Photo %>
	<div class="page-photo">
		<img src="$Photo.CroppedImage(1200,400).URL" alt="">
	</div>
<% end_if %>
<article class="container main-container">
	<div class="row">

		<!-- Side Bar -->
		<div class="col-md-4 col-lg-3 sidebar">
			<% include SideNav %>
		</div>

		<!-- Main Content -->
		<div class="col-md-8 col-lg-8 col-lg-offset-1">
			<div class="article">
				<!-- $Breadcrumbs -->
				<h1>$Title</h1>
				$Content
				$Form
			</div>

		</div><!-- end .col -->
	</div><!-- end .row -->
</article><!-- end .container -->

