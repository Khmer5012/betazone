<?php include ("./inc/dbconnect.php"); ?>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Betazone</title>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen"> 
		<link rel="stylesheet" href="style.css" type="text/css" />
		<link rel="stylesheet" type="text/css" href="./css/style.css"/>
	</head>
	<body>
		<div class="headerMenu">
			<div id="wrapper">
				<div class="logo">
					<img src="./img/ZONE1.jpg" />
				</div>
				<div class="search_box">
					<form action="search.php" method="GET" id="search">
						<input type="text" name="q" size="60" placeholder="search ..." />
					</form>
				</div>
				<div id="menu">
					<a href="#" />Home</a>
					<a href="#" />About</a>
					<a href="#" />Sign Up</a>
					<a href="#" />Log In</a>
				</div>
			</div>
		</div>