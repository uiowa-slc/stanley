<!-- Footer -->
<footer class="footer" role="contentinfo">
	<div class="footer-top">
		<div class="container">
			<div class="footer-contact">
				<h3>University of Iowa Museum of Art</h3>
				<p><strong><a href="{$BaseHref}/visit/locations/">View Museum Locations</a></strong></p>
				<p>(319) 335-1727<br>
				<a href="mailto:uima@uiowa.edu">uima@uiowa.edu</a></p>
				<p><small>&copy; 2015 University of Iowa Museum of Art</small></p>
			</div>
			<div class="clearfix footer-links">
				<div class="main-links">
					<ul class="">
						<li><a href="{$BaseHref}">Home</a></li>
						<% loop Menu(1).Limit(3) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
					<ul class="">
						<% loop Menu(1).Limit(0,3) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
				</div>
				<ul class="secondary">
					<li><a href="{$BaseHref}contact/">Contact</a></li>
					<li><a href="{$BaseHref}membership/">Membership</a></li>
					<li><a href="#">Store</a></li>
					<li><a href="{$BaseHref}news/">Press / News</a></li>
				</ul>
			</div>
		</div><!-- end .container -->
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div id="newsletter" class="clearfix">
				<form name="ccoptin" action="http://ui.constantcontact.com/d.jsp" target="_blank" method="post" >
					<label>Sign up for our Newsletter:</label>
					<input type="text" name="ea" size="20" class="text" value="E-mail Address"  />
					<input type="submit" name="go" value="Sign Up" class="submit" />
					<input type="hidden" name="m" value="1101515594689" />
					<input type="hidden" name="p" value="oi" />
				</form>
			</div>
			<ul class="clearfix social-icons">
				<% if $SiteConfig.FacebookLink %>
					<li>
						<a href="$SiteConfig.FacebookLink" title="Facebook" target="_blank">
							<img src="{$ThemeDir}/images/facebook_circle_gray-32.png" alt="Facebook">
						</a>
					</li>
				<% end_if %>
				<% if $SiteConfig.TwitterLink %>
					<li>
						<a href="$SiteConfig.TwitterLink" title="Twitter" target="_blank">
							<img src="{$ThemeDir}/images/twitter_circle_gray-32.png" alt="Twitter">
						</a>
					</li>
				<% end_if %>
				<% if $SiteConfig.YoutubeLink %>
					<li>
						<a href="$SiteConfig.YoutubeLink" title="Youtube" target="_blank">
							<img src="{$ThemeDir}/images/youtube_circle_gray-32.png" alt="YouTube">
						</a>
					</li>
				<% end_if %>
			</ul>

			<div class="clearfix footer-logos">
				<a href="http://www.uiowa.edu">
					<img src="{$ThemeDir}/images/uiowalogo.gif" alt="University of Iowa">
				</a>
				<a href="http://www.uima.uiowa.edu">
					<img src="{$ThemeDir}/images/iowamuseum_logo.gif" alt="University of Iowa Museum of Art">
				</a>
			</div>

		</div>
	</div>
</footer>