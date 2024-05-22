 

<!DOCTYPE html>
<html lang="en">
  
  <?php
  include('header2.php');
  ?>

  <body>
    
    
    <!-- Navbar
    ================================================== -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
 
               <a href="#" data-toggle="modal" data-target="#about-modal" class="brand"> <font size="2"style="color: white;">ABOUT <strong>EJS</strong></font></a> 
 
        </div>
      </div>
    </div>
    
    
<header class="jumbotron subhead" id="overview">
  <div class="container">
    <h1>Electronic Judging System</h1>
    <p class="lead">Ready to serve you...</p>
  </div>
</header>




    <div class="container">
    
      
      
    <!-- About EJS Modal -->
    <div class="modal fade" id="about-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">About Electronic Judging System</h4>
                    </div>
                    <div class="modal-body">
                    
                    <table align="center">
                    
                    <tr>
                    <td colspan="2" align="center"> <img src="ejs_logo.png" width="50" height="50" class="thumbnail" /></td>                    
                    </tr>
                    
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                    <td align="right">Developer:</td>
                    <td><strong> Emilio B. Magtolis Jr.</strong> - Software and Web Developer</td>
                    </tr>
      
                    
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                    <td align="right">Email:</td>
                    <td><strong> emiloimagtolis@gmail.com</strong></td>
                    </tr>
                    
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                    <td align="right">Mobile Number:</td>
                    <td><strong> +639303546547</strong></td>
                    </tr>
                    
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                    <td align="right">Website:</td>
                    <td><a href="www.bee4ten.ml" target="_blank"><strong> www.bee4ten.ml</strong></a></td>
                    </tr>
        
                    </table>
                    
           
                    <br />
                    <p>Check my website or get in touch with me for more informations and system supports. All rights reserved 2016 &COPY;</p>

                        <hr />
                        <p class="text-center text-muted"><button class="btn btn-default" data-dismiss="modal" aria-hidden="true"><strong>Close</strong></button></p>

                    </div>
                </div>
            </div>
        </div>
        <!-- END About EJS Modal -->
        
        
              
   <form method="POST" action="login.php" >
 <br />  
 <table cellpadding="10" cellspacing="0" border="0" align="center">
 <thead>
 <th align="left" style="background-color: #4976f5; text-indent: 7px; color: white; "><h4><img src="ejs_logo.png" width="25" height="25" /> &nbsp;USER LOGIN</h4></th>
 </thead>
 
 <tr style="background-color: #d7def2;">
 
 <td>
 
 
  <h5><i class="icon-user"></i>  USERNAME:</h5>
  <input style="font-size: large; height: 35px !important; text-indent: 7px !important;" class="form-control btn-block" type="text" name="username" placeholder="Username" required="true" autofocus="true" />
 
 <h5><i class="icon-lock"></i>  PASSWORD:</h5>
  <input style="font-size: large; height: 35px !important; text-indent: 7px !important;" class="form-control btn-block" type="password"  name="password" placeholder="Password" required="true" autofocus="true" />
<br /><br />
 
  <button style="width: 160px !important;" type="submit" class="btn btn-primary pull-right"><i class="icon-ok"></i> <strong>LOGIN</strong></button>
  <strong>Register <a href="create_account.php">here &raquo;</a></strong> &nbsp;&nbsp;&nbsp; 
  
 </td>
 </tr>
 
 
 </table>
 
 

   </form>
 
 
    
            </div>
 
   


    <!-- Footer
    ================================================== -->
    <footer class="footer">
      <div class="container">
      
        <font size="2" class="pull-left"><strong>Electronic Judging System &middot; 2016 &COPY; </strong></font> <br />
        
      </div>
    </footer>


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
 
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap-transition.js"></script>
    <script src="assets/js/bootstrap-alert.js"></script>
    <script src="assets/js/bootstrap-modal.js"></script>
    <script src="assets/js/bootstrap-dropdown.js"></script>
    <script src="assets/js/bootstrap-scrollspy.js"></script>
    <script src="assets/js/bootstrap-tab.js"></script>
    <script src="assets/js/bootstrap-tooltip.js"></script>
    <script src="assets/js/bootstrap-popover.js"></script>
    <script src="assets/js/bootstrap-button.js"></script>
    <script src="assets/js/bootstrap-collapse.js"></script>
    <script src="assets/js/bootstrap-carousel.js"></script>
    <script src="assets/js/bootstrap-typeahead.js"></script>
    <script src="assets/js/bootstrap-affix.js"></script>
    <script src="assets/js/holder/holder.js"></script>
    <script src="assets/js/google-code-prettify/prettify.js"></script>
    <script src="assets/js/application.js"></script>
    
  </body>
</html>
