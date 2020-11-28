<?php 
    session_start();
    $user="Guest";
    if(isset($_SESSION['user']))
        $user=$_SESSION['user'];

    $severname="localhost";
    $username="root";
    $password="";
    $dbname="music_player";

    $conn=mysqli_connect($severname,$username,$password);
        
    if(!$conn)
        die("Connection failed".mysqli_connect_error());
    mysqli_select_db($conn, $dbname);

    require_once('curl.php'); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/content.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <link rel="stylesheet" href="css/aboutus.css">
</head>
<body>
   
    <div class="overlay"></div>
    <!-- Navigation and SideNavigation Begins -->
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="#" class="open">My Music</a>
        <a href="all.php?q=recent" class="open">New Releases</a>
        <a href="#" class="open">Top Artists</a>
        <a href="categories.php" class="open">Categories</a>
        <div class="sub-menu">
            <a href="#0" class="open">Category0</a>
            <a href="#0" class="open">Category1</a>
            <a href="#0" class="open">Category2</a>
            <a href="#0" class="open">Category3</a>
        </div>
    </div>

    <div class="navbar">
        <span class="nav-item" id="nav-item-1">
            <a href="#" onclick="openNav()" class="side-nav-icon"><i class="fas fa-bars"></i></a>
        </span>
        <span class="nav-item" id="nav-item-2">
            <ul type="none">
            <li><a href="index.php" class="open nav-link">Home</a></li>
                <li><a a href="aboutus.php" class="open nav-link">About</a></li>
                <li><a a href="contactus.php" class="open nav-link">Contact</a></li>
            </ul>
        </span>
        <span class="nav-item" style="float:right;" id="nav-item-3">
            <i class="fas fa-user-circle" aria-hidden="true"></i>
            <label><?php echo($user);?></label>
        </span>
        <span class="nav-item searchbar" id="nav-item-4">
            <form action="index.php" method="post">
                <input type="text" placeholder="Search By Song Name" class="search" name="elem" autocomplete="off">
            </form>
            <i style="float:right;" class="fa fa-search"></i>
        </span>
    </div>
    
<div class="aboutusmain">
<h2 class="headingstyle"style="text-align:center">Our Team</h2>
<div class="row_aboutus">
  <div class="column_aboutus">
    <div class="card_aboutus">
      <img class="img_aboutus" src="CHIRAG.jpg" >
      
      <div class="container">
        <h2 style="margin-left:70px;">Chirag Nawale</h2>
        <p class="title_aboutus">Backend</p>
       
        <p>chiragnawale1234@gmail.com </p>
        <p><button class="button_aboutus">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column_aboutus">
    <div class="card_aboutus">
      <img class="img_aboutus" src="SAM.jpg"  >
      <div class="container">
        <h2 style="margin-left:70px;">Shubham Mohape</h2>
        <p class="title_aboutus">UI/UX</p>
       
        <p>shubham.mohapess@gmail.com</p>
        <p><button class="button_aboutus">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column_aboutus">
    <div class="card_aboutus">
      <img class="img_aboutus" src="SHREYAS.jpg" >
      <div class="container">
        <h2 style="margin-left:70px;">Shreyas Patil</h2>
        <p class="title_aboutus">Databse Management</p>
        
        <p>svpatil20000@gmail.com</p>
        <p><button class="button_aboutus">Contact</button></p>
      </div>
    </div>
  </div>
</div>
</div>

<script src="js/index.js"></script>
    
</body>
</html>