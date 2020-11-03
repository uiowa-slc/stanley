<!-- Footer -->
<footer class="footer" role="contentinfo">
	<div class="footer-top">
		<div class="container">
			<div class="footer-contact">
				<div itemscope itemtype="http://schema.org/Organization">
					<h3 itemprop="name"><a href="{$BaseHref}">$SiteConfig.Title</a></h3>
					<p><strong><a href="{$BaseHref}visit/locations/">View Museum Locations</a></strong></p>
					<p itemprop="telephone">$SiteConfig.Phone<br />
					<a itemprop="email" href="mailto:$SiteConfig.Email">$SiteConfig.Email</a>
					</p>
					<p class="footer__copy"><small>&copy; {$Now.Year} University of Iowa Stanley Museum of Art.<br />All Rights Reserved. <br /><a href="http://www.uiowa.edu/homepage/online-privacy-information" class="footer__bar-link" target="_blank" rel="noopener">Privacy Information</a>
                        <br /><a href="https://opsmanual.uiowa.edu/community-policies/nondiscrimination-statement" class="footer__bar-link" target="_blank" rel="noopener">Nondiscrimination Statement</a><br /><a href="https://uiowa.edu/accessibility" target="_blank" class="footer__bar-link" >Accessibility</a></small></p>
					$SiteConfig.Address
				</div>
			</div>

			<div class="clearfix footer-links">
				<div class="main-links">
					<ul class="">
						<li><a href="{$BaseHref}">Home</a></li>
						<% loop Menu(1).Limit(4) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
					<ul class="">
						<% loop Menu(1).Limit(0,4) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
				</div>
				<ul class="secondary">
					<li><a href="{$BaseHref}about/contact/">Contact</a></li>
					<li><a href="{$BaseHref}support/membership/">Membership</a></li>
					<li><a href="{$BaseHref}about/news/">News / Press</a></li>
				</ul>
			</div>
			<div style="clear: both;"></div>
		</div><!-- end .container -->
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div id="newsletter" class="clearfix">
				<form name="ccoptin" action="https://ui.constantcontact.com/d.jsp" target="_blank" method="post" >
					<label for="cc_email">Sign up for our Newsletter:</label>
					<input type="text" name="ea" size="20" class="text" value="E-mail Address" id="cc_email" />
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
				<% if $SiteConfig.InstagramLink %>
					<li>
						<a href="$SiteConfig.InstagramLink" title="Instagram" target="_blank">
							<img src="{$ThemeDir}/images/instagram_circle_gray-32.png" alt="Instagram">
						</a>
					</li>
				<% end_if %>
			</ul>


			<div style="clear: both;"></div>
		</div>
	</div>
</footer>
