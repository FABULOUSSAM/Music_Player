<?php
session_start();

// initializing variables
$username = "";
$email    = "";
$errors = array(); 

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'music_player');

  $Username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $contact = mysqli_real_escape_string($db, $_POST['phonenumber']);
  $Password = mysqli_real_escape_string($db, $_POST['pass']);




  $user_check_query = "SELECT * FROM user WHERE Username='$Username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['Username'] === $Username) {
      array_push($errors, "Username already exists");
    }

    if ($user['email'] === $email) {
      array_push($errors, "email already exists");
    }
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	

  	$query = "INSERT INTO user(Username, email, contact ,Pass ) 
  			  VALUES('$Username', '$email', '$contact','$Password')";
  	mysqli_query($db, $query);
  	$_SESSION['Username'] = $Username;
  	$_SESSION['success'] = "You are now logged in";
  	header('location: login.php');
  }


 