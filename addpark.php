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
<?php
   include('header.html');
?>
 
<
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
