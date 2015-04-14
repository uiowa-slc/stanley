<ul class="collections">
	<% loop ChildrenOf(Collections) %>

		<li class="">
			<div class="collection-box" style="background: url($CollectionsImage.URL) no-repeat -40px -50px;">
				<div class="collection-title">
					<h2><a href="$Link">$CollectionsTitle</a></h2></div>
				</div>
		</li>

	<% end_loop %>
</ul>