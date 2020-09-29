<?php 
    session_start();
    $user="Guest";
    if(isset($_SESSION['user']))
        $user=$_SESSION['user'];

    $severname="localhost";
    $username="root";
    $password="";
    $dbname="Music_Player";

    $conn=mysqli_connect($severname,$username,$password);
        
    if(!$conn)
        die("Connection failed".mysqli_connect_error());
    mysqli_select_db($conn, $dbname);

    function create_card($thumbnail,$name,$artist){
        echo '<div class="card" style="margin-left: 0;">';
        echo '<img src="'.$thumbnail.'" class="card-img-top" alt="#">';
        echo '<div class="card-body" style="text-align: center;">';
        echo '<p class="card-text">'.$name.'</p>';

        if(strlen($artist)>18)
            $artist=substr($artist,0,18)."..";

        echo '<p class="card-text1">{ '.$artist.' }</p>';
        echo '</div>';
        echo '</div>';
    }

    function create_card1($thumbnail,$artist){
        echo '<div class="card" style="margin-left: 0;">';
        echo '<img src="'.$thumbnail.'" class="card-img-top" alt="#">';
        echo '<div class="card-body" style="text-align: center;">';
        echo '<p class="card-text">'.$artist.'</p>';
        echo '</div>';
        echo '</div>';
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
        <span class="nav-item searchbar" id="nav-item-4">
            <input type="text" placeholder="Search By Song Name" class="search">
            <i style="float:right;" class="fa fa-search"></i>
        </span>
    </div>
    <!-- Navigation and SideNavigation Ends -->

    <!-- Popular and Trending List -->
    <h2>Popular and Trending</h2>
    <a href="all.php?q=popular" class="see-all">See All</a>
    
    <div id="elem0" style="display: flex;">
        <?php
            $sql="
                SELECT * FROM `music` ORDER BY `likes` DESC; 
            ";
            $result=$conn->query($sql);

            while($row=$result->fetch_row())
               create_card("music/thumbnail/".$row[1],$row[2],$row[3]);
        ?>
    </div>

    <!-- Discover Categories -->
    <h2>Discover Categories</h2>
    <table>
        <tr>
            <td id="dc1"><img class="icon" src="img/top_albums.png" alt="#"> Top Albums</td>
            <td id="dc2"><img class="icon" src="img/top_songs.png" alt="#"> Top Songs</td>
        </tr>
        <tr>
            <td id="dc3"><img class="icon" src="img/top_playlists.png" alt="#"> Top Playlists</td>
            <td id="dc4"><img class="icon" src="img/top_albums.png" alt="#"> Latest Playlists</td>
        </tr>
    </table>

    <!-- Top Artists -->
    <h2>Top Artists</h2>
    <a href="all.php?q=artist" class="see-all">See All</a>
    
    <div id="elem1" style="display: flex;">
        <?php
            $sql="
                SELECT * FROM `artist`; 
            ";
            $result=$conn->query($sql);

            while($row=$result->fetch_row())
                create_card1("music/artist/".$row[1],$row[2]);
        ?>
    </div>

    <!-- Recent Releases -->
    <h2>Recent Releases</h2>
    <a href="all.php?q=recent" class="see-all">See All</a>
    
    <div id="elem2" style="display: flex;">
        <?php
            $sql="
                SELECT * FROM `music` ORDER BY `release_date` DESC; 
            ";
            $result=$conn->query($sql);

            while($row=$result->fetch_row())
                create_card("music/thumbnail/".$row[1],$row[2],$row[3]);
        ?>
    </div>

    <script src="js/index.js"></script>
</body>
</html>
