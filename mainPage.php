<?php
session_start();
?>
<?php
   include('header.html');
?>

user page with search, favorites,<br/>
Search for a park that fits your style. <br/>
<tr><td>What type of ride interests you most?</td><td>
					
					<select name="type">
					<option>Rollercoaster</option>
					<option>Water Rides</option>
					<option>Family rides</option>
					<option>other</option>
					
					</select></td></tr>
					<form method="post" action="choice.php">

					<input type="submit" value="search" name="submit" />
					</form>
					
<?php
  $_SESSION ['type'] = $type;
?>					

<p>&nbsp;</p><p><a href="logout.php">logout</a></p>






