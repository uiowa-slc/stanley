<!-- Footer -->
<footer class="footer" role="contentinfo">
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-6">
					<h3>University of Iowa Museum of Art</h3>
					<p><a href="{$BaseHref}/visit/locations/">View Museum Locations</a></p>
					<p>(319) 335-1727<br>
					uima@uiowa.edu</p>
					<p><small>&copy; 2015 University of Iowa Museum of Art</small></p>
				</div>
				<div class="col-sm-12 col-md-6">
					<div class="col-sm-4">
						<ul class="footer-links">
							<li><a href="#">Home</a></li>
							<li><a href="#">Visit</a></li>
							<li><a href="#">Exhibitions</a></li>
							<li><a href="#">Collections</a></li>
						</ul>
					</div>
					<div class="col-sm-4">
						<ul class="footer-links">
							<li><a href="#">Education</a></li>
							<li><a href="#">Event</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Support</a></li>
						</ul>
					</div>
					<div class="col-sm-4">
						<ul class="footer-links last">
							<li><a href="{$BaseHref}contact/">Contact</a></li>
							<li><a href="{$BaseHref}membership/">Membership</a></li>
							<li><a href="#">Store</a></li>
							<li><a href="{$BaseHref}news/">Press / News</a></li>
						</ul>
					</div>
				</div>
			</div><!-- end .row -->
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

			<img src="{$ThemeDir}/images/footer_logos.gif" alt="" class="footer-logos">

		</div>
	</div>
</footer>