<nav role="navigation" class="nav-wrapper no-print" aria-label="Primary">
		<ul class="main-nav clearfix">
			<% loop Menu(1) %>
				<li class="$FirstLast first-level<% if $LinkOrSection = "section" %> active<% end_if %><% if Children %> parent<% end_if %>"><a href="$Link">$MenuTitle</a>
					<!-- begin dropdown menu -->


					<% if $MenuTitle = "Exhibitions"%>
						<ul class="dropdown">
							<li><a href="$Link">Current Events</a></li>
							<li> <a href="$Link("upcoming")">Upcoming Events</a></li>
							<li> <a href="$Link("past")">Past Events</a></li>
						</ul>
					

					<% else_if Children %>
						<ul class="dropdown">
						<% loop Children %>
							<li class="$FirstLast second-level<% if $LinkOrCurrent = "current" %> active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
						</ul>
					<% end_if %>

					<!-- end dropdown menu -->
				</li>
			<% end_loop %>
		</ul>
</nav>