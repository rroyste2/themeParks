<?php 
 session_start();
?>
<?php
$username = $_POST['username'];
$password = $_POST['password'];
$_session ['username'] = '$username';
$_session ['password'] = '$password';
 ?>

<?php
include "db_connect.php";

$query= "INSERT INTO users (username, password) VALUES('$username', SHA('$password'))";
echo $query;
$result = mysqli_query($db, $query)
or die("Error Querying Database2");
mysqli_close($db);
?>

<div class="login"><form method="post" action="index.html">
<input name="submit" type="submit" class="password" value="Click to continue" /></div>