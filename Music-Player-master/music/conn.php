<?php

    $servernme="localhost";
    $username="root";
    $password=" ";

    $conn=mysqli_connect($servernme,$username,$password);
    if(!$conn)
        die("Connection Failed: ".mysqli_connect_error());
?>