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

<body>
	<?php
		include 'container.php';
	?> 
    <div id="sub-header">
		<h2>A handful of HTML code examples</h2>
    </div>
        
    <div id="body">            
		<div id="content">
            <div class="box">
                <h2>Examples</h2>

				<h1>Heading H1</h1>
				<h2>Heading H2</h2>
				<h3>Heading H3</h3>
				<h4>Heading H4</h4>

				<h5>Heading H5</h5>
				<p>&nbsp;</p>

				
				<h3>Lists</h3>
				<ul>
					<li>List item</li>
					<li>List item</li>
					<li>List item</li>
				</ul>
						
				<ol>
					<li>List item</li>
					<li>List item</li>
					<li>List item</li>
				</ol>

				<p>&nbsp;</p>
				
					
				<h3>Code and blockquote</h3>
				<code>&lt;? echo('Hello world'); ?&gt;</code>

				<blockquote><p>Mauris sit amet tortor in urna tincidunt aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p></blockquote>
				<p>&nbsp;</p>
				
				
				
				<h3>Table</h3>
				<table>
					<tbody><tr>
						<th>ID</th>
						<th>Name</th>
						<th>Age</th>
					</tr>
					<tr>
						<td>1</td>
						<td>John Smith</td>
						<td>28</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Fred James</td>
						<td>49</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Rachel Johnson</td>
						<td>19</td>
					</tr>
				</tbody></table>
				<p>&nbsp;</p>
				
				<h3>Form</h3>
				<fieldset>
					<legend>Form legend</legend>
					<form action="#" method="get">
						<p><label for="name">Name:</label>
						<input name="name" id="name" value="" type="text" /><br /></p>		
						<p><label for="email">Email:</label>
						<input name="email" id="email" value="" type="text" /><br /></p>
						<p><label for="message">Message:</label>	
						<textarea cols="60" rows="11" name="message" id="message"></textarea><br /></p>
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
                        <li><a href="index.html">Home</a></li>
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
