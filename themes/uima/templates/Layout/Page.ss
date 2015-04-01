<% if $Photo %>
	<div class="page-photo">
		<img src="$Photo.CroppedImage(1200,400).URL" alt="">
	</div>
<% end_if %>

<div class="container">
	<div class="row">

		<!-- Side Bar -->
		<% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
			<div class="col-md-4 col-lg-3 sidebar">
				<% include SideNav %>
			</div>
		<% end_if %>

		<!-- Main Content -->
		<div class="<% if $Children || $Parent %>col-md-8 col-lg-8 col-lg-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
			<article class="article">
				<!-- $Breadcrumbs -->
				<h1>$Title</h1>
				$Content
				$Form

				<!-- Loop Sub Pages -->
				<% include ChildPages %>
			</article>
		</div><!-- end .col -->
	</div><!-- end .row -->
</div><!-- end .container -->

