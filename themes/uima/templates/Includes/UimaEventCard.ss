<div class="eventcontainer">  
	
		<div class="eventlist clearfix"> 
			<% if $Image %>
				<a href="$Link" class="eventlist-img"> 
					<img src="$Image.URL" alt="$Title"> 
				</a>
			<% end_if %>
			<!-- Date -->
			  
			  <% loop $DateTimes %>
				<p class="eventlist-date">
					<% with $StartDate %>
						<time itemprop="startDate" datetime="$Format(c)"> 
							$Format(l) $Format(F) $Format(j)
						</time>
						 <span class="eventlist-time">$Format("g:i A")<% end_with %><% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i A") 
						<% end_with %>  
					<% end_if %>
					</span>
					<% if $EndDate %>
						until
						<% with $EndDate %>  
							<time itemprop="endDate" datetime="$Format(c)">
								$Format(l), $Format(F) $Format(j)
							</time> 
							<span class="eventlist-time">$Format("g:i A")</span>
						<% end_with %>
					<% end_if %>
				</p>
			<% end_loop %>
			<!-- Title -->
			<h3 class="eventlist-title">
				<a href="$Link">$Title</a>
			</h3>


			<!-- Venue -->
			<!-- <p>$Venue.Title</p> -->
			<!-- More Info Link -->
			<a href="$Link" class="more-info">More Info</a>
		</div>
	
</div>