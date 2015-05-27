<div class="naver">

	<div class="side-navigation">
		<!--<% if Menu(2) %>
			<% with Level(1) %>
				<h3 class="section-title"><% if $LinkOrCurrent = "current" %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %></h3>
			<% end_with %>
		<% end_if %>-->

		<% if Menu(2) %>
		<nav class="sec-nav" aria-label="Secondary">
			<ul class="first-level">

					<li <% if $Action = "index" %>class="active"<% end_if %>><a href="$Link">Current Exhibitions</a></li>
					<li <% if $Action = "upcoming" %>class="active"<% end_if %>><a href="$Link("upcoming")">Upcoming Exhibitions</a></li>
					<li <% if $Action = "past" %>class="active"<% end_if %>><a href="$Link("past")">Past Exhibitions</a></li>



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

