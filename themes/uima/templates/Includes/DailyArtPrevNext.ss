<% with $DailyArtBlogDay %>
	<!-- Previous Article Link -->
	<% if PreviousPage || NextPage %>
		<div class="prevnext">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<% if PreviousPage %>
							<a href="$PreviousPage.Link" class="prevnext__link prev">
								<span class="prevnext__arrows">&larr;</span>
								<% if $PreviousPage.DailyArtImage %>
									<img src="$PreviousPage.DailyArtImage.CroppedFocusedImage(100,100).URL" alt="Previous Post">
								<% end_if %>
								<p class="prevnext__name">
									<span class="title">Previous</span>
								</p>
							</a>
						<% end_if %>
						<% if NextPage %>
							<a href="$NextPage.Link" class="prevnext__link next ">
								<p class="prevnext__name">
									<span class="title">Next</span>
								</p>
								<% if $NextPage.DailyArtImage %>
									<img src="$NextPage.DailyArtImage.CroppedFocusedImage(100,100).URL" alt="Next Post">
								<% end_if %>
								<span class="prevnext__arrows">&rarr;</span>
							</a>
						<% end_if %>
					</div>
				</div>
			</div>
		</div>
	<% end_if %>
<% end_with %>