<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Theme Park Travel Guide</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
 <?php
   include('header.html');
?>
<div class="mainContent">
<h1>Search</h1>
Enter a park name, zip code, city, or state (ex VA).
  <form method="post" action="search.php">
    <label for="username">Search:</label>
    <input type="text" id="search" name="search" />
    <input type="submit" value="go" name="submit" />
  </form>
  
  <?php
  include "db_connect.php";
  if (isset($_POST['search']))
  {
  	$searchterm = mysqli_real_escape_string($db, trim($_POST['search']));
	

  	
  		$query = "SELECT * FROM general_info where (Park_Name LIKE '%$searchterm%' OR Zipcode LIKE '%$searchterm' OR City LIKE '%$searchterm%' OR State LIKE '%$searchterm%')";
  
  		$result = mysqli_query($db, $query)
   			or die("Error Querying Database");
   		echo "<table id=\"parkinfo\">\n<tr><th>Name</th><th>City</th><th>State</th><th>Zipcode</th><th>Adult Price</th><th>Child Price</th><th>Phone Number</th></tr>\n\n";
   		while($row = mysqli_fetch_array($result)) {
  			$name = $row['Park_Name'];
  			$city = $row['City'];
  			$state = $row['State'];
			$zip = $row['Zipcode'];
			$adult = $row['adult_price'];
			$child = $row['children_price'];
			$phone = $row['Phone_Number'];
			
			

		  	echo "<tr><td>$name</td><td >$city</td><td >$state</td><td >$zip</td><td >$adult</td><td >$child</td><td >$phone</td></tr>\n";
	    }
	    echo "</table>\n"; 
  	}
  	
  ?>
</div>
</div>
</body>
</html>
