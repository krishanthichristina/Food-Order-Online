<?php
session_start();
?>

<html>

  <head>
    <title> Home | Friends Corner </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">

  <link rel="stylesheet" type = "text/css" href ="css/index.css">

  <body>

    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Friends Corner</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="active" ><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>

          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
            <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
              (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
             </a></li>
            <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Sign-up</a></li>
              <li> <a href="managersignup.php"> Manager Sign-up</a></li>
              
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Manager Login</a></li>
             
            </ul>
            </li>
          </ul>

<?php
}
?>
 </div>
</div>
</nav>

<div class="wide">
  <div class="col-xs-5 line"><hr></div>
  <div class="col-xs-2 logo text-center">
    <img src="images/LogoImage.png">
  </div>
  <div class="text-center">
    <div style="font-size: 6rem; color: rgb(37, 121, 32); text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5); font-family: 'Times New Roman', serif; padding-top: 40%; margin-left: 10%;" class="tagline">Good Food Good Mood</div>
  </div>
</div>
<div style="padding-bottom: 10%;" class="orderblock text-center">
  <h2 style="font-family: 'Pacifico', cursive;">Feeling Hungry?</h2>
  <a class="btn btn-success btn-lg" href="customerlogin.php" role="button">Order Now</a>
</div>


<!-- Add a container for the floating advertisement -->
<div id="floatingAdvertisement" class="floating-advertisement">
  <!-- Add the close button (X) in the upper right corner -->
  <button id="closeFloatingAdvertisement" class="close-floating-advertisement">X</button>
  <!-- Add the advertisement banner image -->
  <img src="images\ad.jpeg" alt="Advertisement Banner">
</div>

<!-- Your existing HTML code continued -->

<!-- CSS to style the floating advertisement and close button -->
<style>
  .floating-advertisement {
    position: fixed;
    top: 200px; /* Adjust as needed to position the floating ad */
    right: 10px; /* Adjust as needed to position the floating ad */
    z-index: 1000; /* Ensure it appears above other content */
    padding: 10px;
    background-color: #f0f0f0;
    border: 1px solid #ccc;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  }

  .close-floating-advertisement {
    position: absolute;
    top: 5px;
    right: 5px;
    cursor: pointer;
    background-color: transparent;
    border: none;
    font-size: 20px;
    color: #999;
  }

  .close-floating-advertisement:hover {
    color: #555;
  }
</style>

<!-- JavaScript to handle closing the floating advertisement -->
<script>
  document.addEventListener("DOMContentLoaded", function() {
    // Get the close button and the floating advertisement container
    var closeFloatingButton = document.getElementById("closeFloatingAdvertisement");
    var floatingAdvertisement = document.getElementById("floatingAdvertisement");

    // Add event listener to close the floating advertisement when the close button is clicked
    closeFloatingButton.addEventListener("click", function() {
      floatingAdvertisement.style.display = "none"; // Hide the floating advertisement
    });
  });
</script>


    <!-- Footer Section -->
<footer class="footer" style="background-color: #2f2f2f; color: white;">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h3>Contact Us</h3>
        <p>Email: info@friendscorner.com</p>
        <p>Phone: +9435 22 57 562</p>
        <p>Address: 123 Friendship Street, Happyville</p>
      </div>
      <div class="col-md-6">
        <h3>Follow Us</h3>
        <ul class="social-icons">
          <li><a href="www.facebook.com"><i class="fab fa-facebook-f">Facebook</i></a></li>
          <li><a href="www.twitter.com"><i class="fab fa-twitter">Instagram</i></a></li>
          <li><a href="www.instagram.com"><i class="fab fa-instagram">Twitter</i></a></li>
          <li><a href="www.linkedin.com"><i class="fab fa-linkedin">Linkedin</i></a></li>
        </ul>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 text-center">
        <p>&copy; <?php echo date("Y"); ?> Friends Corner. All Rights Reserved.</p>
      </div>
    </div>
  </div>
</footer>
<!-- End Footer Section -->
  
</body>
</html>
