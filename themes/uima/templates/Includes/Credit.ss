<% if CreditThumb %>
	<hr />
	<div class="exhibition-credit clearfix">
		<% if $AssociatedPageID %>
			<a href="$AssociatedPage.Link">
				<img src="$CreditThumb.SetWidth(150).URL" alt="$CreditTitle">
			</a>
		<% else %>
			<img src="$CreditThumb.SetWidth(150).URL" alt="$CreditTitle">
		<% end_if %>

		<div class="credit-content">
			<p>
			<% if $CreditName %>$CreditName<% end_if %>
			<% if $CreditArtistLifespan %>$CreditArtistLifespan<% end_if %>
			<br />
			<% if $CreditTitle %>$CreditTitle<% end_if %><% if $CreditYear %>, $CreditYear<% end_if %>
			<br />
			<% if $CreditMedium %><span class="artworkmedium">$CreditMedium</span><% end_if %><% if $CreditMedium && $CreditDimensions %>, <% end_if %><% if $CreditDimensions %>$CreditDimensions<% end_if %><br />
			<% if $CreditCollectionInfo %>$CreditCollectionInfo<% end_if %>
			</p>
		</div>
	</div>
<% end_if %>