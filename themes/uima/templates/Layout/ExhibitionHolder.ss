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
			<div class="article">
				<!-- <h1>$Title</h1> -->
				$Content
				$Form
				<% loop Children %>
					<article class="exhibitlist">
						<!-- Image -->
						<div class="exhibit-img" style="background-image: url($EventPageImage.URL);">
							<a href="$link"></a>
						</div>
						<div class="exhibit-content clearfix">
							<!-- Title -->
							<h2 class="exhibit-title"><a href="$link">$Title</a></h2>
							<!-- Link -->
							<a href="$Link" class="exhibit-link">Learn More &raquo;</a>
							<!-- Date | Location -->
							<% if $StartDate || $EventLocation %><h4 class="exhibit-date"><% if $StartDate %>$StartDate.Format('F d')<% end_if %><% if $EndDate %> - $EndDate.Format('F d') <% end_if %><% if $EventLocation %> | $EventLocation<% end_if %></h4><% end_if %>
						</div>
					</article>
				<% end_loop %>
			</div>
		</div><!-- end .col -->
	</div><!-- end .row -->
</div><!-- end .container -->

