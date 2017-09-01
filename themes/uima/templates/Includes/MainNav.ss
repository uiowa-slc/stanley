<nav role="navigation" class="nav-wrapper no-print" aria-label="Main menu">
	<ul class="main-nav clearfix">
		<% loop Menu(1) %>
			<li class="$FirstLast<% if $LinkOrSection = "section" %> active<% end_if %><% if Children %> parent<% end_if %>"><a href="$Link">$MenuTitle</a>

				<% if $MenuTitle = "Exhibitions"%>
					<ul>
						<li><a href="$Link">Current</a></li>
						<li><a href="$Link("upcoming")">Upcoming</a></li>
						<li><a href="$Link("past")">Past</a></li>
						<% if $OtherChildren %>
							<% loop $OtherChildren %>
							<li><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
						<% end_if %>
					</ul>
				<% else_if $MenuTitle = "Events"%>
					<ul>
						<li><a href="$Link">Upcoming</a></li>
						<li><a href="$Link("past")">Past</a></li>
					</ul>
				<% else_if Children %>
					<ul>
						<% loop Children %>
							<li class="$FirstLast <% if $LinkOrCurrent = "current" %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
				<% end_if %>

			</li>
		<% end_loop %>
	</ul>
</nav>