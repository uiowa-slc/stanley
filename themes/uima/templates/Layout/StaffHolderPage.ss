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
      <div class="col-md-4 col-lg-3 col-sm-6 sidebar sidebar--col-lg-3 col-sm-6 col-sm-6">
         <% include SideNav %>
      </div>
      <% end_if %>
      <div class="<% if $Children || $Parent %>col-md-8 col-lg-8 offset-lg-1 children<% else %>col-md-10 offset-md-1<% end_if %>">
         <!-- Main Content -->
         <div class="container-fluid">
            $Content



             	<!-- start admin -->
			            <div class="row">
							<div class="col-md-4 offset-md-4 staff-title">
								<h2 class="staff-category-title">Administration</h2>
							</div>
			            </div>
			            <div class="row">



				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/lauren4.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Lauren Lessing</h3>

				                     	<p class="staff-position">Director</p>

				                     <p class="staff-contact">

				                        	319-335-1725<br>


				                        	lauren-lessing@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/lindsey-webb.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Lindsey Webb</h3>

				                     	<p class="staff-position">Administrative Services Coordinator</p>

				                     <p class="staff-contact">

				                        	319-335-1725<br>


				                        	lindsey-webb@uiowa.edu

				                     </p>
				                  </div>
				               </div>
				              <div class="col-lg-3 col-sm-6 staff-tile">

				                     <img src="themes/uima/images/staff-placeholder.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Alex Brannaman</h3>

				                     	<p class="staff-position">Accountant</p>

				                     <p class="staff-contact">

				                        	319-335-1124<br>


				                        	alex-brannaman@uiowa.edu

				                     </p>
				                  </div>
				               </div>

            			</div>
                  <!-- start admin -->
			            <div class="row">
							<div class="col-md-4 offset-md-4 staff-title">
								<h2 class="staff-category-title">Communications, Marketing, &amp; Membership</h2>
							</div>
			            </div>
			            <div class="row">

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/elizabeth-wallace.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Elizabeth Menninger Wallace</h3>

				                     	<p class="staff-position">Manager of Communications, Marketing &amp; Membership</p>

				                     <p class="staff-contact">

				                        	319-353-2847<br>


				                        	elizabeth-m-wallace@uiowa.edu

				                     </p>
				                  </div>
				               </div>

            			</div>
                  <!-- start admin -->
			            <div class="row">
							<div class="col-md-4 offset-md-4 staff-title">
								<h2 class="staff-category-title">Curitorial</h2>
							</div>
			            </div>
			            <div class="row">

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/rachel-cobler.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Rachel Cobler</h3>

				                     	<p class="staff-position">Curatorial Research Assistant Arts of Africa, Oceania, and the Americas</p>

				                     <p class="staff-contact">

				                        	319-467-1215<br>


				                        	rachel-cobler@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/kim-datchuk-2.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Kimberly Datchuk</h3>

				                     	<p class="staff-position">Assistant Curator of Special Projects</p>

				                     <p class="staff-contact">

				                        	319-384-3067<br>


				                        	kimberly-datchuk@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/corey-gundlach.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Cory Gundlach</h3>

				                     	<p class="staff-position">Curator of the Arts of Africa, Oceania, and the Americas</p>

				                     <p class="staff-contact">

				                        	319-335-0482<br>


				                        	cory-gundlach@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/vero-smith.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Vero Rose Smith</h3>

				                     	<p class="staff-position">Associate Curator, Legacies for Iowa Collections-Sharing Project</p>

				                     <p class="staff-contact">

				                        	319-467-1168<br>


				                        	veronica-smith@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/joyce-tsai3.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Joyce Tsai</h3>

				                     	<p class="staff-position">Curator of Art</p>

				                     <p class="staff-contact">


				                        	joyce-tsai@uiowa.edu

				                     </p>
				                  </div>
				               </div>

            			</div>
                  <!-- start admin -->
			            <div class="row">
							<div class="col-md-4 offset-md-4 staff-title">
								<h2 class="staff-category-title">Development</h2>
							</div>
			            </div>
			            <div class="row">

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/susan-horan.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Susan Horan</h3>

				                     	<p class="staff-position">Associate Director of Development for the University of Iowa Stanley Museum of Art</p>

				                     <p class="staff-contact">

				                        	319-467-3407<br>


				                        	susan.horan@foriowa.org

				                     </p>
				                  </div>
				               </div>

            			</div>
                  <!-- start admin -->
			            <div class="row">
							<div class="col-md-4 offset-md-4 staff-title">
								<h2 class="staff-category-title">Education</h2>
							</div>
			            </div>
			            <div class="row">

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/dale-fisher.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Dale Fisher</h3>

				                     	<p class="staff-position">Curator of Education</p>

				                     <p class="staff-contact">

				                        	319-335-1730<br>


				                        	dale-fisher@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/amanda.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Amanda Lensing</h3>

				                     	<p class="staff-position">Senior Living Communities Program Coordinator</p>

				                     <p class="staff-contact">

				                        	319-467-0074<br>


				                        	amanda-lensing@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/brady-plunger.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Brady Plunger</h3>

				                     	<p class="staff-position">Assistant Curator of Education</p>

				                     <p class="staff-contact">

				                        	319-335-1739<br>


				                        	brady-plunger@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/joshua-siefken.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Josh Siefken</h3>

				                     	<p class="staff-position">Associate Curator of Education</p>

				                     <p class="staff-contact">

				                        	319-384-1977<br>


				                        	joshua-siefken@uiowa.edu

				                     </p>
				                  </div>
				               </div>

            			</div>
                  <!-- start admin -->
			            <div class="row">
							<div class="col-md-4 offset-md-4 staff-title">
								<h2 class="staff-category-title">Registrarial</h2>
							</div>
			            </div>
			            <div class="row">

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/steve-erickson.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Steve Erickson</h3>

				                     	<p class="staff-position">Manager of Design, Preparation &amp; Installation</p>

				                     <p class="staff-contact">

				                        	319-335-1750<br>


				                        	steven-erickson@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/alexandra-janezic.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Alexandra Janezic</h3>

				                     	<p class="staff-position">Preparator</p>

				                     <p class="staff-contact">


				                        	alexandra-janezic@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/sarah-luko.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Sarah Luko</h3>

				                     	<p class="staff-position">Assistant Registrar Rights and Reproductions</p>

				                     <p class="staff-contact">

				                        	319-467-1207<br>


				                        	sarah-luko@uiowa.edu

				                     </p>
				                  </div>
				               </div>

				              <div class="col-lg-3 col-sm-6 staff-tile">

				                  <img src="/assets/Uploads/kathrerine-wilson.jpg" alt="" role="presentation">

				                  <div class="staff-content">
				                     <h3>Katherine Wilson</h3>

				                     	<p class="staff-position">Manager of Exhibitions and Collections</p>

				                     <p class="staff-contact">

				                        	319-335-2545<br>


				                        	katherine-wilson-1@uiowa.edu

				                     </p>
				                  </div>
				               </div>

            			</div>

<%--              <% if $StaffTeams %>
             	<% loop $StaffTeams.Sort(Name, ASC) %><!-- start admin -->
			            <div class="row">
							<div class="col-md-4 offset-md-4 staff-title">
								<h2 class="staff-category-title">$Title</h2>
							</div>
			            </div>
			            <div class="row">
			              <% loop $StaffPages.Sort(LastName, ASC) %>
				              <div class="col-lg-3 col-sm-6 staff-tile">
				               <% if $Photo %>
				                  <img src="$Photo.URL" alt="" role="presentation" />
				               <% else %>
				                     <img src="{$ThemeDir}/images/staff-placeholder.jpg"  alt="" role="presentation" />
				                <% end_if %>
				                  <div class="staff-content">
				                     <h3>$FirstName $LastName</h3>
				                     <% if $Position %>
				                     	<p class="staff-position">$Position</p>
				                     <% end_if %>
				                     <p class="staff-contact">
				                     	<% if $Phone %>
				                        	$Phone<br />
				                        <% end_if %>
				                        <% if $EmailAddress %>
				                        	$EmailAddress
				                        <% end_if %>
				                     </p>
				                  </div>
				               </div>
               				<% end_loop %>
            			</div>
                  <% end_loop %>
               <% end_if %> --%>
         </div>
         <!-- end .row -->
      </div>
   </div>
</main>
<!-- end .container -->
