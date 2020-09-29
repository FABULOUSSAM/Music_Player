<?php
@session_start();
include 'connect.php';

  
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $phonenumber = mysqli_real_escape_string($db, $_POST['phonenumber']);
  $password = mysqli_real_escape_string($db, $_POST['pass']);
 


  	$query = "INSERT INTO user (Username, email, contact,Password) 
  			  VALUES('$username', '$email', '$phonenumber','$password')";
  	mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
  	$_SESSION['success'] = "You are now logged in";
  	header('location: login.php');
 