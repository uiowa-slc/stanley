

<% include HeaderPhoto %>

<main class="container main" role="main">
	<div class="row">
		<!-- Section Heading -->
		<% if Menu(2) %>
			<% with Level(1) %>
				<div class="col-sm-12">
				<h3 class="section-title"><% if $LinkOrCurrent = "current" %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %></h3>
				</div>
			<% end_with %>
		<% end_if %>

		<!-- Side Bar -->
		<% if $Children || $Parent %>
			<div class="col-md-4 col-lg-3 sidebar sidebar--sticky">
				<% include SideNav %>
			</div>
		<% end_if %>
<div class="<% if $Children || $Parent %>col-md-8 col-lg-8 col-lg-offset-1 children<% else %>col-md-10 col-md-offset-1<% end_if %>">
		<!-- Main Content -->
			<div class="container-fluid">


				<div class="row">

				    <div class="col-md-4 col-md-offset-4 staff-title"><h1><strong>Staff</strong><br /> <small>University of Iowa Stanley Museum</small></h1></div>

				</div>


				<div class="row">

					<div class="col-lg-3"></div>

				    <div class="col-lg-3 info-title"><h4><small>150 N. Riverside Drive<br />100 Old Museum of Art (OMA)<br />Iowa City, Iowa 52242</small></h4></div>

				    <div class="col-lg-3 info-title"><h4><small>Telephone: 319-335-1727<br />Fax: 319-335-3677<br />E-mail: <a href="mailto:uima@uiowa.edu">uima@uiowa.edu</a></small></h4></div>

				    <div class="col-lg-3"></div>

				  </div>

				<div class="row">

					<div class="col info-title"> <h4><small>For media or rights and reproductions inquiries, please visit our <a href="/about/staff/press-room/">Press Room.</a></small></h4></div>

				</div>

				<div class="row is-flex">

				<div class="col-md-4 col-md-offset-4 staff-title"><h2 class="staff-category-title">Administration</h2></div>

				</div>

				<div class="row is-flex">

				  <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>

				  		<div class="staff-content">
				  			<h6>Lauren Lessing</h6>
				  			<p>Director<br />
								319-335-1725<br />
								lauren-lessing@uiowa.edu</p>

 							</div>
				  </div>

				  <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>

						<div class="staff-content">
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br />
								319-335-1725<br />
								lindsey-webb@uiowa.edu</p>

 							</div>
				  </div>

				  <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>

				  		<div class="staff-content">
				  			<h6>Alex Brannaman</h6>
				  			<p>Accountant<br />
								319-335-1124<br />
								alex-brannaman@uiowa.edu</p>

 							</div>
				  </div>

				</div>



				<div class="row is-flex">

				    <div class="col-md-4 col-md-offset-4 staff-title"><h2 class="staff-category-title">Curitorial</h2></div>

				</div>

				    <div class="row is-flex">

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Cory Gundlach</h6>
				  			<p>Curator of the Arts of Africa, Oceania, and the Americas<br />
								319-335-0482<br />
								cory-gundlach@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Joyce Tsai</h6>
				  			<p>Curator of Art<br />
								319-335-1725<br />
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Kimberly Datchuk</h6>
				  			<p>Assistant Curator of Special Projects<br />
								319-384-3067<br />
								kimberly-datchuk@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Vero Rose Smith</h6>
				  			<p>Associate Curator, Legacies for Iowa Collections-Sharing Project<br />
								319-467-1168<br />
								veronica-smith@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Rachel Cobler</h6>
				  			<p>Curatorial Research Assistant Arts of Africa, Oceania, and the Americas<br />
								319-467-1215<br />
								rachel-cobler@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Candida Pagan</h6>
				  			<p>Program Associate of the Intermedia Research Initiative<br />
								candida-pagan@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Lindley Warren Mickunas</h6>
				  			<p>Curatorial Assistant and Program Assistant of the Intermedia Research Initiative<br />

								lindley-warrenmickunas@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Christopher Roy</h6>
				  			<p>Research Curator of African Art<br />
								christopher-roy@uiowa.edu</p>
 							</div>
				    </div>

				  </div>


				<div class="row is-flex">

				    <div class="col-md-4 col-md-offset-4 staff-title"><h2 class="staff-category-title">Education</h2></div>

				</div>

				    <div class="row is-flex">

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Dale Fisher</h6>
				  			<p>Curator of Education<br />
								319-335-1730<br />
								dale-fisher@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Josh Siefken</h6>
				  			<p>Associate Curator of Education<br />
								319-384-1977<br />
								joshua-siefken@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Brady Plunger</h6>
				  			<p>Assistant Curator of Education<br />
								319-335-1739<br />
								brady-plunger@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Amanda Lensing</h6>
				  			<p>Senior Living Communities Program Coordinator<br />
								319-467-0074<br />
								amanda-lensing@uiowa.edu</p>

 							</div>
				    </div>

				  </div>

				<div class="row is-flex">

				    <div class="col-lg-4 col-lg-offset-4 staff-title"><h2 class="staff-category-title">Development</h2></div>

				</div>

				    <div class="row is-flex">

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Susan Horan</h6>
				  			<p>Associate Director of Development for the University of Iowa Stanley Museum of Art<br />
				  				University of Iowa Center for Advancement <br />
								319-467-3407<br />
								susan.horan@foriowa.org</p>

 							</div>
				    </div>

				</div>


				<div class="row is-flex">

				    <div class="col-lg-4 col-lg-offset-4 staff-title"><h2 class="staff-category-title">Communications, Marketing &amp; Membership</h2></div>

				</div>

				    <div class="row is-flex">

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Elizabeth Menninger Wallace</h6>
				  			<p>Manager of Communications, Marketing &amp; Membership<br />
								319-353-2847<br />
								elizabeth-m-wallace@uiowa.edu</p>

 							</div>
				    </div>

				  </div>

				<div class="row is-flex">

				    <div class="col-lg-4 col-lg-offset-4 staff-title"><h2 class="staff-category-title">Registrarial</h2></div>

				</div>

				    <div class="row is-flex">

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Katherine Wilson</h6>
				  			<p>Manager of Exhibitions and Collections<br />
								319-335-2545<br />
								katherine-wilson-1@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Steve Erickson</h6>
				  			<p>Manager of Design, Preparation &amp; Installation<br />
								319-335-1750<br />
								steven-erickson@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Sarah Luko</h6>
				  			<p>Assistant Registrar<br />
				  				<br />
				  				Rights and Reproductions<br />
								319-467-1207<br />
								sarah-luko@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content">
				  			<h6>Alexandra Janezic</h6>
				  			<p>Preparator<br />
								alexandra-janezic@uiowa.edu</p>

 							</div>
				    </div>

				  </div>
	</div><!-- end .row -->
</div>
</div>
</main><!-- end .container -->

