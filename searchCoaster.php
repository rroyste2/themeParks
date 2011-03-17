<?php
 session_start();
?>
test

<?php
  $_SESSION ['type'] = $type;
  
?>	
<?php
 echo $_SESSION ['type'];
 $type = $_SESSION['type'];
  include "db_connect.php";
  if (isset($_POST['search']))
  {
  	if ($type == 'Rollercoaster')
  	{
		$query = "SELECT * FROM rollercoaster";
		//mysql_real_escape_string($movies);
	
		echo $query;

  		$result = mysqli_query($db, $query)
   			or die("Error Querying Database");
   		echo "<table id=\"hor-minimalist-b\">\n<tr><th>Movie</th><th>Theater</th><tr>\n\n";
   		
  	}else
	echo "else";
  	
  }

?>