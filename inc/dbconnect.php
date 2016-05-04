<?php
	//server info
	$DB_host = "localhost";
	$DB_user = "root";
	$DB_pass = "root";
	$DB_name = "capstone";
	 
	//connect to the database 
	$MySQLi_CON = new MySQLi($DB_host,$DB_user,$DB_pass,$DB_name);
    
	/* check connection */
    if($MySQLi_CON->connect_errno)
    {
        die("ERROR : -> ".$MySQLi_CON->connect_error);
    }

?>