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
    <link rel="stylesheet" href="css/contactus.css">
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
    

    <div class="contactusmain">

    <div class="container_contactus">

  <div class="row_contactus">
    <div class="column_contactus">
      <img class="image_contactus"src="logoforimage.png" style="width:100%">
    </div>
    <div class="column_contactus">
      <form action="/action_page.php">
        <label  class="contactusinput_label" for="fname">First Name</label>
        <input class="contactusinput" type="text" id="fname" name="firstname" placeholder="Your name..">
        <label class="contactusinput_label" for="lname">Last Name</label>
        <input  class="contactusinput" type="text" id="lname" name="lastname" placeholder="Your last name..">
        <label class="contactusinput_label" for="country">Country</label>
        <select  class="contactusinput" id="country" name="country">
          <option value="australia">India</option>
          <option value="canada">USA</option>
          <option value="usa">Other</option>
        </select>
        <label  class="contactusinput_label" for="subject">Subject</label>
        <textarea class="contactusinput"  id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
        <input  class="contactusinputsubmit" type="submit" value="Submit">
      </form>
    </div>
  </div>
</div>


    </div>

<script src="js/index.js"></script>
    
</body>
</html>