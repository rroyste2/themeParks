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
