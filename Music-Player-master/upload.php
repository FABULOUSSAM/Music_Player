<?php 
    include 'connect.php';
    if(isset($_POST['submit']))
{      
$path = "uploads/"; //file to place within the server
$valid_formats1 = array("mp3", "ogg", "flac"); //list of file extention to be accepted
if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST")
    {

        $file1 = $_FILES['file1']['name']; //input file name in this code is file1
        $size = $_FILES['file1']['size'];


                $fileInfo=pathinfo($file1);
                $ext=$fileInfo['extension'];

                    if(in_array($ext,$valid_formats1))
                    {
                        $actual_image_name = uniqid().".".$ext;
                        $tmp = $_FILES['file1']['tmp_name'];
                        if(move_uploaded_file($tmp, $path.$actual_image_name))
                            {
                            //success upload
                            }
                        else
                            echo "failed";              
                    }else{
                        echo "File Support Not Support";
                    }

    }
}






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
    <title>Music Player</title>
</head>

<body>
   
    <div class="overlay"></div>
    <!-- Navigation and SideNavigation Begins -->
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="#">My Music</a>
        <a href="all.php?q=recent">New Releases</a>
        <a href="#">Top Artists</a>
        <a href="categories.php">Categories</a>
        <div class="sub-menu">
            <a href="#0">Category0</a>
            <a href="#0">Category1</a>
            <a href="#0">Category2</a>
            <a href="#0">Category3</a>
        </div>
    </div>

    <div class="navbar">
        <span class="nav-item" id="nav-item-1">
            <a href="#" onclick="openNav()" class="side-nav-icon"><i class="fas fa-bars"></i></a>
        </span>
        <span class="nav-item" id="nav-item-2">
            <ul type="none">
                <li><a href="index.php" class="nav-link">Home</a></li>
                <li>About</li>
                <li>Contact</li>
            </ul>
        </span>
        <span class="nav-item" style="float:right;" id="nav-item-3">
            <i class="fas fa-user-circle" aria-hidden="true"></i>
            <label><?php echo($user);?></label>
        </span>
      
    </div>
            <h2 >UPLOAD</h2>

            <form action="/action_page.php">



            
  <input type="file" id="myFile" name="filename">
  <input type="submit">
</form>


            






    <script src="js/index.js"></script>
    </body>
</html>