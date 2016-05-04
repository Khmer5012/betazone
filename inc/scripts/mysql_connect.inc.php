<?php
$mysqli = mysqli_connect("localhost","root","", "betazone");
/* check connection */
if (mysqli_connect_errno()) {
    echo("Connect failed: %s\n");
    exit();
}
$mysqli->close();
?>