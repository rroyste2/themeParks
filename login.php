<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>widget - Free CSS Template by spyka Webmaster</title>
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
		<fieldset style="margin-top:10em">
			<form action='#' method='post'>
				<p><label for="username">Username:</label>
                                <input name="username" id="name" value="" type="text" /><br /></p>
                                <p><label for="password">Password:</label>
                                <input name="password" id="password" value="" type="password" /><br /></p>
                                                
				<p><input name="send" class="formbutton" value="Send" type="submit" /></p>
			</form>
		</fieldset>
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
