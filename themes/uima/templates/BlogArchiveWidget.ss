<% if $Archive %>
	<ul class="archiveYears">
		<% loop $Archive %>
			<li>
				<a href="$Link" title="$Title">
					<span class="text">$Title</span>
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>
