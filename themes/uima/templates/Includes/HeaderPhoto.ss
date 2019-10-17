<% if $Photo %>
	<div class="container">
		<div class="page-photo">
			<img src="$Photo.CroppedFocusedImage(1200,400).URL" alt="$Title">
			<% if $AssociatedPageID %>
				<a href="$AssociatedPage.Link" class="creditlink" title="More Information">
					<img src="{$ThemeDir}/images/info.png" alt="More Information">
				</a>
			<% end_if %>
		</div>
	</div>
<% end_if %>
