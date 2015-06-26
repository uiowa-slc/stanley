<div class="naver">

	<div class="side-navigation">

		<% if Menu(2) %>
		<h4 id="handle2">Navigation</h4>
		<nav class="sec-nav" data-navigation-handle="#handle2">
			<ul class="first-level">
				<% with Level(1) %>
					<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a></li>
				<% end_with %>
				<% loop Menu(2) %>
					<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a>

					<%-- third level nav option 1 --%>
						<% if $LinkOrSection = "section" && Children %>
							<ul class="second-level">
								<% loop Children %>
									<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>>
										<a href="$Link">$MenuTitle</a>
										<% if $LinkOrSection = "section" && Children %>
											<ul class="third-level">
												<% loop Children %>
													<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>>
														<a href="$Link">$MenuTitle</a>
													</li>
												<% end_loop %>
											</ul>
										<% end_if %>

									</li>
								<% end_loop %>
							</ul>
						<% end_if %>

					<%-- end third level nav option 1 --%>

					</li>
				<% end_loop %>

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





