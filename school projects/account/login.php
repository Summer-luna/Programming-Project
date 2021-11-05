<?php
    ini_set("error_reporting",E_ALL & ~E_NOTICE & ~E_WARNING);
    ini_set("display_errors",1);
    @include_once $_SERVER['DOCUMENT_ROOT'] . "/flourish/toinclude.php";
    
    session_start();
    if(strlen($_SESSION['username']) > 0)
        header("Location: index.php");
    
    if($_REQUEST['submitter'] == 'logincheck'){
        $mydb = new fDatabase("mysql", "id17481197_myamazonia", "id17481197_xc2p6amazonia", "54s|\$E_A=Yryk9>", "localhost");
        $result=$mydb->query("SELECT username, userpass ".
                                "FROM accounts ".
                                "WHERE username=%s",$_REQUEST['username']);
        if($result->countReturnedRows() == 0)
            $systemerror = 'Login information cannot be authenticated!';
        else{
            $myrow = $result -> fetchRow();
            $encryptedpassword = $myrow['userpass'];
            if(password_verify($_REQUEST['userpass'], $encryptedpassword)){
                $_SESSION['username'] = $myrow['username'];
                
                header("Location: index.php");
                
            }
            else{
                $systemerror = 'Login information cannot be authenticated!';
            }
        }
    }
?>

<html>
  <head>
    <link href="cssex.css" rel="stylesheet" type="text/css" />
    <script>
       function checkallok()
       {
        var isok=true;
        if (login.username.value=='-Username here-')
        {
         isok=false;
         document.getElementById("usernameerror").innerHTML="Please enter a username.";
        }
        else 
         document.getElementById("usernameerror").innerHTML="";
        if (login.userpass.value.length==0)
        {
         isok=false;
         document.getElementById("userpasserror").innerHTML="Please enter a password.";
        }
        else
         document.getElementById("userpasserror").innerHTML="";
        if (isok)
         document.getElementsByName("submitter").item(0).disabled=false;
        else
         document.getElementsByName("submitter").item(0).disabled=true;
       }
       function isuserok()
       {
        if (login.username.value.length==0)
          login.username.value='-Username here-';
        checkallok(); 
       }
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
        <form name="login" method="post" action="login.php">
           <p style="color: red;"><?php echo $systemerror; ?></p>  
           <table>
             <tr>
               <td style="text-align: right;">
                  <label for="username">Username:</label>
               </td>
               <td>
                  <input type="text" 
                         name="username" 
                         onkeydown="isuserok();" 
                         style="width: 100px;" 
                         value="-Username here-"/>
               </td>
               <td id="usernameerror" style="color: red;">
                   Please enter a username.
               </td>
             </tr>
             <tr>
               <td style="text-align: right;">
                  <label for="password">Password:</label>
               </td>
               <td>
                  <input type="password" name="userpass" onkeydown="checkallok();" style="width: 100px;" />
               </td>
               <td id="userpasserror" style="color: red;">
                   Please enter a password.
               </td>
             </tr>
             <tr>
               <td style="text-align: right;">
               </td>
               <td>
                  <a href="newaccount.php">Create an account</a>
               </td>
             </tr>
             <tr>
               <td>
               </td>
               <td>
                  <button type="submit" name="submitter" value="logincheck" disabled>Login</button>
               </td>
             </tr>
           </table>
        </form>
     </div>
  </body>
</html>
