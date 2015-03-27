<article class="container">
	<div class="row">

		<!-- Main Content -->
		<div class="col-sm-12">
			<div class="article">
				<!-- $Breadcrumbs -->
				<h1>$Title</h1>
				<hr>
				<!-- if event Image -->
				<% if $Image %>
					<img src="$Image.URL" alt="$Title" style="max-width:400px;" class="right">
				<% end_if %>
				<!-- if no event image so Venu image -->
				<% if not $Image %>
					<% if $Venue.ImageURL %>
						<img src="$Venue.ImageURL" alt="$Venue.Title" style="max-width:400px;" class="right">
					<% end_if %>
				<% end_if %>


				<!-- Content -->
				<% if $Content %>
					$Content
				<% end_if %>

				<!-- Venue -->
				<% if $Venue %>
					<h5>Venue</h5>
					<p>
						$Venue.Title
						<% if $Venue.Address %><br>$Venue.Address<% end_if %>
					</p>
				<% end_if %>


				<!-- Dates -->
				<h5>Dates</h5>
				<% loop $Dates %>
					<p class="date-time">
						<% with $StartDateTime %>
							<time itemprop="startDate" datetime="$Format(c)">
								$Format(l), $Format(F) $Format(j)
							</time>
							 <br />$Format("g:i A")
						<% end_with %>
						<% if $EndTime %>
							<% with $EndTime %>
								- $Format("g:i A")
							<% end_with %>
						<% end_if %>
						<% if $EndDate %>
							until
							<% with $EndDate %>
								<time itemprop="endDate" datetime="$Format(c)">
									$Format(l), $Format(F) $Format(j)
								</time>
								<br />$Format("g:i A")
							<% end_with %>
						<% end_if %>
					</p>
				<% end_loop %>

				<!-- Cost -->
				<% if $Cost %>
					<h5>Cost:</h5>
					<p>$Cost</p>
				<% end_if %>


				<% if $ContactName %>
					<h5>Contact Information:</h5>
					<% if $ContactEmail %>
						<a href="mailto:$ContactEmail">$ContactName</a>
					<% else %>
						$ContactName
					<% end_if %>
					</p>
				<% end_if %>

				<!-- Sponsor & Link to events.uiowa.edu -->
				<% if $Sponsor %>
					<p><strong>Sponsor:</strong><br> $Sponsor </p><% end_if %>
				<% if $MoreInfoLink || $LocalistLink %>
					<p>
						<% if $MoreInfoLink %>
							<a href="$MoreInfoLink" class="button" target="_blank">Event Website</a>
						<% end_if %>
						<% if $LocalistLink %>
							<a href="$LocalistLink" class="button" target="_blank">View on events.uiowa.edu</a>
						<% end_if %>
					</p>
				<% end_if %>

			</div>
		</div><!-- end .col -->
	</div><!-- end .row -->
</article><!-- end .container -->