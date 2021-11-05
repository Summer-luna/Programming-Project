<?php
    $servername = "localhost";
    $username = "id17481197_xc2p6amazonia";
    $password = "54s|\$E_A=Yryk9>";
    $dbname = "id17481197_myamazonia";
    
    // connect to database
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>