<div class="shifter-navigation">
		<div class="mobile-navigation">
			<ul class="">
				<% loop Menu(1) %>
					<li <% if $LinkOrSection = "section" %>class="active"<% end_if %>><a href="$Link" class="link">$MenuTitle</a>
					</li>
				<% end_loop %>
			</ul>
		</div>
		<div class="consistent">
			<a href="{$BaseHref}contact" class="link highlight">Contact</a>
			<a href="{$BaseHref}membership" class="link highlight">Membership</a>
		</div>
		<hr />
		<div class="shifter-address">
			<div class="contain">
				<h3>$SiteConfig.Title</h3>
				<p>1375 Highway One West<br />1840 Studio Arts Building<br />Iowa City, Iowa 52242</p>
			</div>
		</div>
		<hr />
		<div class="contact">
			<div>
				<a href="mailgo:sustainability@uiowa.edu">uima@uiowa.edu</a>
			</div>
			<div>
				<span>(319) 335-1727</span>
			</div>
		</div>
	</div>