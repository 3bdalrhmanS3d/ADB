<?php 
    $host = 'localhost';
    $username = 'root';
    $pass = 'rootroot';
    $dbname = 'Schools' ;

    $conn = new mysqli($host, $username, $pass, $dbname);

    if($conn->connect_error)
    {
        die("Connection failed : " . $conn->connect_error);
    }
    else
    {
        echo "Connection successful";
    }
?>