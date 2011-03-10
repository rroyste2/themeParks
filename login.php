<?php
session_start();
?>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Log In</title>
  <link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<div id="contents">
<?php

  include "db_connect.php";
  $username = $_POST['username'];
  $password = $_POST['password'];
echo "$password, $username";


   $query = "select * from users WHERE username = '$username' AND password = SHA('$password')";
   $result = mysqli_query($db, $query);
   if ($row = mysqli_fetch_array($result))
   {
   		echo "<p>Thanks for logging in, $username</p>\n";
   		echo "<p><a href=\"mainPage.php\">Continue</a></p>";
   }
   else
    {
   		echo "<p>Incorrect username or password try again</p>\n";
		echo $query;
   		echo  "<h1>Log In</h1>\n  <form method=\"post\" action=\"login.php\">";
    	echo "<label for=\"username\">Username:</label><input type=\"text\" id=\"username\" name=\"username\" /><br />";
        echo "<label for=\"password\">Password:</label><input type=\"password\" id=\"password\" name=\"password\" /><br />";
        echo "<input type=\"submit\" value=\"Login\" name=\"submit\" /></form> <p><a href=\"createAccount.php\">Create Account</a></p>";
    }
   
  $_SESSION ['username'] = $name;
$_SESSION ['password'] = $password;

?>
  
  </div>
</body>
</html>
