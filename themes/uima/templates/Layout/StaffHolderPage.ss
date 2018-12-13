

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
			<div class="col-md-4 col-lg-3 sidebar">
				<% include SideNav %>
			</div>
		<% end_if %>
<div class="<% if $Children || $Parent %>col-md-8 col-lg-8 col-lg-offset-1 children<% else %>col-md-10 col-md-offset-1<% end_if %>">
		<!-- Main Content -->
			<div class="container-fluid">	


				<div class="row">
				    
				    <div class="col-md-4 col-md-offset-4 staff-title"><h1><strong>Staff</strong><br> <small>University of Iowa Stanley Museum</small></h1></div>

				</div>


				<div class="row">

					<div class="col-lg-3"></div>
				    
				    <div class="col-lg-3 info-title"><h4><small>150 N. Riverside Drive<br>100 Old Museum of Art (OMA)<br>Iowa City, Iowa 52242</small></h4></div>
				    
				    <div class="col-lg-3 info-title"><h4><small>Telephone: 319-335-1727<br>Fax: 319-335-3677<br>E-mail: <a href="mailto:uima@uiowa.edu">uima@uiowa.edu</a></small></h4></div>

				    <div class="col-lg-3"></div>
				  
				  </div>

				<div class="row">
					
					<div class="col info-title"> <h4><small>For media or rights and reproductions inquiries, please visit our <a href="/about/staff/press-room/">Press Room.</a></small></h4></div>

				</div>

				<div class="row">
				    
				<div class="col-md-4 col-md-offset-4 staff-title"><h2 class="staff-category-title">Administration</h2></div>

				</div>

				<div class="row">
				  
				  <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				  		
				  		<div class="staff-content"> 
				  			<h6>Lauren Lessing</h6>
				  			<p>Director<br>
								319-335-1725<br>
								lauren-lessing@uiowa.edu</p>

 							</div>
				  </div>
				    
				  <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
						
						<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				  </div>
				  
				  <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>

				  		<div class="staff-content"> 
				  			<h6>Alex Brannaman</h6>
				  			<p>Accountant<br>
								319-335-1124<br>
								alex-brannaman@uiowa.edu</p>

 							</div>
				  </div>
				  
				</div>



				<div class="row">
				    
				    <div class="col-md-4 col-md-offset-4 staff-title"><h2 class="staff-category-title">Curitorial</h2></div>

				</div>

				    <div class="row">
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>

				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				     
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				  </div>


				<div class="row">
				    
				    <div class="col-md-4 col-md-offset-4 staff-title"><h2 class="staff-category-title">Education</h2></div>

				</div>

				    <div class="row">
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				  </div>

				<div class="row">
				    
				    <div class="col-lg-4 col-lg-offset-4 staff-title"><h2 class="staff-category-title">Development</h2></div>

				</div>

				    <div class="row">
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>

				</div>
				    

				<div class="row">
				    
				    <div class="col-lg-4 col-lg-offset-4 staff-title"><h2 class="staff-category-title">Communications, Marketing & Membership</h2></div>

				</div>

				    <div class="row">
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				  </div>

				<div class="row">
				    
				    <div class="col-lg-4 col-lg-offset-4 staff-title"><h2 class="staff-category-title">Registrarial</h2></div>

				</div>

				    <div class="row">
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				    
				    <div class="col-lg-6 staff-tile"><img src="{$ThemeDir}/images/elizabeth2.jpg"/>
				    		<div class="staff-content"> 
				  			<h6>Lindsey Webb</h6>
				  			<p>Administrative Services Coordinator<br>
								319-335-1725<br>
								lindsey-webb@uiowa.edu</p>

 							</div>
				    </div>
				  
				  </div>
	</div><!-- end .row -->
</div>
</div>
</main><!-- end .container -->

