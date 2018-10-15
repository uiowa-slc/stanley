<% include HeaderPhoto %>

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
		<% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic --%>
			<div class="col-md-4 col-lg-3 sidebar">
				<% include SideNav %>
			</div>
		<% end_if %>

		<!-- Main Content -->
		<div class="<% if $Children || $Parent %>col-md-8 col-lg-8 col-lg-offset-1 children<% else %>col-md-10 col-md-offset-1<% end_if %>">
			<section id="main-content" tabindex="-1">
				<h1>$Title</h1>
				$Content
				$Form

				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">Under 100 dollars</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level1Title</h3>
						$Level1
					</div>
				</div>
				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">100 dollars</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level2Title</h3>
						$Level2
					</div>
				</div>
				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">250 dollars</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level3Title</h3>
						$Level3
					</div>
				</div>

				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">500 dollars</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level4Title</h3>
						$Level4
					</div>
				</div>
				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">1,000 dollars</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level5Title</h3>
						$Level5
					</div>
				</div>
				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">2,500 dollars</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level6Title</h3>
						$Level6
					</div>
				</div>
				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">5,000 dollars</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level7Title</h3>
						$Level7
					</div>
				</div>
				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">> 10,000 dollars</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level8Title</h3>
						$Level8
					</div>
				</div>
				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">Gift of Art</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level9Title</h3>
						$Level9
					</div>
				</div>
				<div class="row benefitstable__row">
					<div class="col-lg-3 benefitstable__headercol">
						<h2 class="benefitstable__amt">Deferred Gifts</h2>
						<a class="benefitstable__join" href="support/membership" target="_blank">Join Now</a>
					</div>
					<div class="col-lg-9">
						<h3 class="benefitstable__leveltitle">$Level10Title</h3>
						$Level10
					</div>
				</div>
				<% include Credit %>
			</section>
		</div><!-- end .col -->
	</div><!-- end .row -->
</main><!-- end .container -->

