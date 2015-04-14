<% if $Photo %>
	<div class="page-photo">
		<img src="$Photo.CroppedImage(1200,400).URL" alt="">
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
		<% if $ExhibitionList || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
			<div class="col-md-4 col-lg-3 sidebar">
				<% include SideNav %>
			</div>
		<% end_if %>

		<!-- Main Content -->
		<div class="<% if $ExhibitionList || $Parent %>col-md-8 col-lg-8 col-lg-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
			<div class="article">
				<!-- <h1>$Title</h1> -->
				$Content
				$Form
				<% loop ExhibitionList %>
					<div class="exhibitlist">
						<!-- Image -->
						<div class="exhibit-img" style="background-image: url($EventPageImage.URL);">
							<a href="$link"></a>
						</div>
						<div class="exhibit-content clearfix <% if $StartDate || $EventLocation %>withdate<% end_if %>">
							<!-- Title -->
							<h2 class="exhibit-title"><a href="$link">$Title</a></h2>
							<!-- Link -->
							<a href="$Link" class="exhibit-link">Learn More &raquo;</a>
							<!-- Date | Location -->
							<% if $StartDate || $EventLocation %><h4 class="exhibit-date"><% if $StartDate %>$StartDate.Format('F d')<% end_if %><% if $EndDate %> - $EndDate.Format('F d') <% end_if %><% if $StartDate && $EventLocation %> | <% end_if %><% if $EventLocation %>$EventLocation<% end_if %></h4><% end_if %>
						</div>
					</div>
				<% end_loop %>
			</div>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->

