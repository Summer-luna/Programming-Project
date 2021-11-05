<?php
    ini_set("error_reporting",E_ALL & ~E_NOTICE & ~E_WARNING);
    ini_set("display_errors",1);
    
    session_start();
    $_SESSION['username'] = "";
    header("Location: login.php");    
?>

