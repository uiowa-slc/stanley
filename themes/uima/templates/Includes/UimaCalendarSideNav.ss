<div class="naver">
		<div class="side-navigation">
			<h4 id="handle">Navigation</h4>
			<nav class="sec-nav" aria-label="Secondary" data-navigation-handle="#handle">
				<ul class="first-level">
					<li <% if $Action = "index" %>class="active"<% end_if %>><a href="$Link">Upcoming</a></li>
					<li <% if $Action = "past" %>class="active"<% end_if %>>
						<a href="$Link("past")">Past</a>
					</li>
				</ul>
			</nav>

		</div>
	</div>