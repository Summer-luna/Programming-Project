<?php
    ini_set("error_reporting",E_ALL & ~E_NOTICE & ~E_WARNING);
    ini_set("display_errors",1);
    
    @include_once $_SERVER['DOCUMENT_ROOT'] . "/flourish/toinclude.php";
    
    session_start();
    if(strlen($_SESSION['username'])==0)
        header("Location: login.php");   
    
?>

<html>
  <head>
    <link href="cssex.css" rel="stylesheet" type="text/css" />
    <script>
    </script>
    <title>Main Page</title>
  </head>
  <body>
     <div class="header">
        <h1 id="theheader"><center>Old One Bookshop- Ye Shoppe of Forbyden Knowledge</center></h1>
     </div>
     <div class="sidebar">
     <p>The complete processes I implemented:
       <ul>
         <li><a href="searchbooks.php">Searching and Editing Books</a></li>
         <li><a href="mygame.php">A simple game</a></li>
         <li><a href="mychart.php">Charting some data</a></li>
       </ul>
     </p>
     <p>As intermediate steps, I learned:
       <ul>
         <li><a href="hw2.html">How to create a web page</a></li>
         <li><a href="hw3php.php">Textboxes and buttons</a></li>
         <li><a href="phphw4.php">Pulldowns and listboxes</a></li>
         <li><a href="phphw5.php">Radiobuttons and checkboxes</a></li>
       </ul>
     </p>
     <p><a href="logout.php">To logout, click here</a></p>
     </div>
     <div class="mainbody">
        <p>This is the main page of my website.  Use the hyperlinks on the left to see what I learned.</p>
     </div>
  </body>
</html>
