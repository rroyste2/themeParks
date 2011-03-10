<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Enter Park</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php
	include('db_connect.php');
?>
<?php
   include('header.html');
?>
 
<div class="mainContent">
  <p>Enter Park Information:</p>
  <form method="post" action="addpark.php">
	<table> 
		<tr><td>Location (city)</td><td><input type="text" name="city" id="city"/> 
			<select name="state">
				<option>AL</option>
				<option>AK</option>
				<option>AS</option>
				<option>AZ</option>
				<option>CA</option>
				<option>NM</option>
				<option>TX</option>
				<option>VA</option>
				</select></td></tr>
					<tr><td>Park Name</td><td><input type="text" name="parkname" id="parkname"/></td><tr> 
					<tr><td>Zip Code</td><td><input type="number" name="zip" size="10"/></td></tr> 
					<tr><td>Adult Price</td><td><input type="number" name="adult" size="10"/></td></tr>
					<tr><td>Child Price</td><td><input type="number" name="child" size="10"/></td></tr>
                    <tr><td>Phone Number</td><td><input type="text" name="phone" size="18"/></td></tr>
					<tr><td><input type="submit" value="submit" name="submit"/></td></tr>
					</table>
            </form>
</div>
</div>
</body>
</html>
