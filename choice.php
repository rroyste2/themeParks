<?php
 session_start();
  include('db_connect.php');
?>
<?php


$type = $_POST['type'];



if ($type == 'rollercoaster')
{
echo "$type";
}
?>