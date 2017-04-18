<?php
    $HOST_NAME = "localhost";
    $HOST_USERNAME = "root";
    $HOST_PASSWORD = "";
    $DB = "moderna";
    
    $DBCONNECTION = mysqli_connect($HOST_NAME, $HOST_USERNAME, $HOST_PASSWORD, $DB);
    if(!$DBCONNECTION){
        echo 'Database Connection error';
    }