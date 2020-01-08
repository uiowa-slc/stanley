<div class="shifter-navigation">
		<div class="mobile-navigation">
			<ul class="">
				<% loop Menu(1) %>
					<li <% if $LinkOrSection = "section" %>class="active"<% end_if %>><a href="$Link" class="link">$MenuTitle</a>
					</li>
				<% end_loop %>
			</ul>
		</div>
		<!-- Search -->
		<% if $SearchForm %>
			<div class="search-bar" role="search">
			  $SearchForm
			</div>
		<% end_if %>
		<div class="shifter-address">
			<div class="contain">
				<div itemscope itemtype="http://schema.org/Organization">
					<h3 itemprop="name">$SiteConfig.Title</h3>
					<p><strong><a href="{$BaseHref}visit/locations/">View Museum Locations</a></strong></p>
			</div>
		</div>
		<hr />
		<div class="contact">
			<div>
				<a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a>
			</div>
			<div>
				<span><a href="tel:$SiteConfig.Phone">$SiteConfig.Phone</a></span>
			</div>
		</div>
	</div>