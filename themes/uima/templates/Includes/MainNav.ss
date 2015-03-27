<nav role="navigation" class="nav-wrapper no-print">
	<div class="container">
		<ul class="main-nav clearfix">
			<% loop Menu(1) %>
				<li class="$FirstLast firstlevel <% if $LinkOrSection = "section" %>active<% end_if %>"><a href="$Link">$MenuTitle</a>
					<!-- Dropdown Menu -->
					<% if Children %>
						<ul class="dropdown">
						<% loop Children %>
							<li class="$FirstLast <% if $LinkOrCurrent = "current" %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
						</ul>
					<% end_if %>
					<!-- end dropdown menu -->
				</li>
			<% end_loop %>
		</ul>
	</div>
</nav>