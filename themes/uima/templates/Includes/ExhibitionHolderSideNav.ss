<div class="naver">
	<div class="side-navigation">
		<h4 id="handle">Navigation</h4>
		<nav class="sec-nav" aria-label="Secondary" data-navigation-handle="#handle">
			<ul class="first-level">
				<li <% if $Action = "index" %>class="active"<% end_if %>><a href="$Link">Current</a></li>
				<li <% if $Action = "upcoming" %>class="active"<% end_if %>><a href="$Link("upcoming")">Upcoming</a></li>
				<li <% if $Action = "past" || $Action = "year" %>class="active"<% end_if %>>
					<a href="$Link("past")">Past</a>
					<ul class="second-level">
						<% loop $ArchiveYears %>
							<li><a href="$Link">$Year</a></li>
						<% end_loop %>
					</ul>
				</li>
			</ul>
		</nav>

	</div>
</div>
<br />


<% if SideBarView %>
	<div id="Sidebar" class="browsebydate tablet-hide">
		$SideBarView
	</div>
<% end_if %>

