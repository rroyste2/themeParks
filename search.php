<?php	session_start()	?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ThemeWorld | Search</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
			
            
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/custom.js"></script>

<!--
widget, a free CSS web template by spyka Webmaster (www.spyka.net)

Download: http://www.spyka.net/web-templates/widget/

License: Creative Commons Attribution
//-->
</head>

<body class="noheader">
	<?php
		include 'container.php';
	?> 
    <div id="body">            
		<div id="content">
            <div class="box">
		<?php
			$_SESSION ['type'] = $type;

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
            </div>
        </div>
        
        <div class="sidebar">
            <ul>	
               <li>
                    <h4><span>Our <strong>Pages</strong></span></h4>
                    <ul class="blocklist">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="examples.html">Examples</a></li>
                        <li><a href="#">Products</a></li>
                        <li><a href="#">Solutions</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </li>
                
                <li>
                    <h4><span>About <strong>Us</strong></span></h4>
                    <ul>
                        <li>
                        	<p style="margin: 0;">Aenean nec massa a tortor auctor sodales sed a dolor. Duis vitae lorem sem. Proin at velit vel arcu pretium luctus.</p>
                        </li>
                    </ul>
                </li>
                
                <li>
                    <h4 class="h4"><span>Cool <strong>Sites</strong></span></h4>
                    <ul>
                        <li><a href="http://www.themeforest.net/?ref=spykawg" title="premium templates"><strong>ThemeForest</strong></a> - premium HTML templates, WordPress themes and PHP scripts</li>
                        <li><a href="http://www.dreamhost.com/r.cgi?259541" title="web hosting"><strong>Web hosting</strong></a> - 50 dollars off when you use promocode <strong>awesome50</strong></li>
                        <li><a href="http://www.4templates.com/?aff=spykawg" title="4templates"><strong>4templates</strong></a> - brilliant premium templates</li>
                    </ul>
                </li>
                
            </ul> 
        </div>
    	<div class="clear"></div>
    </div>
</div>
<?php
	include 'footer.php';
?>
</body>
</html>
