<?php

    $servername = getenv('IP');
    $username = getenv('C9_USER');
    $password = "";
    $database = "pizzeria_database";
    $dbport = 3306;

    // Create connection
    $mysqli = new mysqli($servername, $username, $password, $database, $dbport);

    // Check connection
    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    } 
   
    //echo "Connected successfully (".$db->host_info.")";


?>
