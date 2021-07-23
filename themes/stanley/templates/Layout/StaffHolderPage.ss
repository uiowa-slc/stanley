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
      <div class="<% if $Children || $Parent %>col-md-8 col-lg-8 offset-lg-1 children<% else %>col-md-10 offset-md-1<% end_if %>">
         <!-- Main Content -->
         <div class="container-fluid">
            $Content


            <% if $StaffTeams %>
                <% loop $StaffTeams.Sort(Name, ASC) %><!-- start admin -->
                        <div class="row justify-content-center">
                            <div class="col-md-10 staff-title">
                                <h2 class="staff-category-title">$Title</h2>
                            </div>
                        </div>
                        <div class="row  justify-content-center align-content-middle">
                          <% loop $StaffPages %>
                              <div class="col-md-4 col-sm-6 staff-tile">
                                <% if not $Up.Up.Up.HideImages %>
                                  <% if $Photo %>
                                      <img src="$Photo.ScaleWidth(600).URL" alt="" role="presentation" />
                                  <% else %>
                                        <img src="{$ThemeDir}/images/staff-placeholder.jpg"  alt="" role="presentation" />
                                  <% end_if %>
                                <% end_if %>
                                  <div class="staff-content">
                                     <h3>$FirstName <% if $MiddleName %>$MiddleName <% end_if %>$LastName</h3>
                                     <% if $Position %>
                                        <p class="staff-position">$Position</p>
                                     <% end_if %>
                                     <p class="staff-contact">
                                        <% if $Phone %>
                                            $Phone<br />
                                        <% end_if %>
                                        <% if $EmailAddress %>
                                            <a href="mailto:$EmailAddress" style="color: #7d7d7d;">$EmailAddress</a>
                                        <% end_if %>
                                     </p>
                                     <% if $ContactFor %>
                                        <div class="staff-content staff-content--small">
                                            <p>Contact $FirstName for:</p>
                                            $ContactFor
                                        </div>
                                     <% end_if %>
                                  </div>
                               </div>
                            <% end_loop %>
                        </div>
                  <% end_loop %>
               <% end_if %>
         </div>
         <!-- end .row -->
      </div>
   </div>
</main>
<!-- end .container -->
