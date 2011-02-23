<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Theme Park Travel Guide</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php
	include('db_connect.php');
?>
<div class="content">
<div class="header">
  <div class="logo">Theme Park Travel Guide<br /><br />
  <a href='newpark.php'>Add Park</a> | <a href='search.php'>Search Parks</a> | <a href='editparks.php'>Edit Parks</a>
  </div>
	<div class="login"><form method="post" action="login.php">
    <div class="username"><label for="username">Username:</label><br /><input type="text" id="username" name="username" /><br />
    <a href="#">Create an Account</a></div> 
    <div class="password"><label for="pw">Password:</label><br /><input type="password" id="pw" name="pw" /><br />
    <input name="submit" type="submit" class="password" value="Login" /></div>
    </form>
  </div>
	<img src="images/headerbar.jpg" width="890" height="16" />
</div>
<div class="mainImage">
  <div id="coasterPic"></div>
  <div id="wave"><img src="images/curve.png" width="890" height="150" /></div>
</div>
<div class="mainContent">
  <?php
  
  						$city = $_POST['city'];
						$state = $_POST['state'];
						$parkname = $_POST['parkname'];
						$lname = $_POST['lname'];
						$zip = $_POST['zip'];
						$adult = $_POST['adult'];
						$child = $_POST['child'];
						$phone = $_POST['phone'];	
						
						$query = "INSERT INTO general_info
							VALUES ('$city', '$state', '$zip', '$adult', '$child', '$phone', '$parkname')";
						echo $query;
						$results = mysqli_query($db, $query) or die("Error!!!");
						
						$message = "$parkname has been added to the database";
						echo $message;
						mysqli_close($db);
						
						
					?>

</div>
</div>
</body>
</html>
