<?php
    ini_set("error_reporting",E_ALL & ~E_NOTICE & ~E_WARNING);
    ini_set("display_errors",1);
    @include_once $_SERVER['DOCUMENT_ROOT'] . "/flourish/toinclude.php";
    
    if($_REQUEST['submitter'] == 'createaccount'){
        $mydb = new fDatabase("mysql", "id17481197_myamazonia", "id17481197_xc2p6amazonia", "54s|\$E_A=Yryk9>", "localhost");
        $result = $mydb->query("SELECT username ".
                                "FROM accounts ".
                                "WHERE username=%s", $_REQUEST['username']);
        if($result->countReturnedRows()>0)
            $systemerror='Cannot create account '.$_REQUEST['username'] . ',because it already exists.';
        else{
            $userpass=password_hash($_REQUEST['userpass'], PASSWORD_BCRYPT);
            $mydb->execute('Insert into accounts (username,userpass)'.'values(%s,%s)', $_REQUEST['username'], $userpass);
            $systemerror='Created account'.$_REQUEST['username'].'.';
            header("Location: index.php");
        }
    }

?>

<html>
  <head>
    <link href="cssex.css" rel="stylesheet" type="text/css" />
    <script>
       var isnew=1;
       function checkallok()
       {
        var isok=true;
        if (newaccount.username.value=='-Username here-')
        {
         isok=false;
         document.getElementById("usernameerror").innerHTML="Please enter a username.";
        }
        else 
         document.getElementById("usernameerror").innerHTML="";
        if (newaccount.userpass.value.length==0)
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
        if (newaccount.username.value.length==0)
          newaccount.username.value='-Username here-';
        checkallok(); 
       }
       function goback()
       {
        if (confirm("Go back to main menu?"))
          window.location="index.php";
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
        <form name="newaccount" method="post" action="newaccount.php">
           <p><?php echo $systemerror; ?></p>
           <table>
             <tr>
               <td style="text-align: right;">
                  <label for="username">Username:</label>
               </td>
               <td>
                  <input type="text" 
                         name="username" 
                         onblur="isuserok();" 
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
                  <input type="password" name="userpass" onblur="checkallok();" style="width: 100px;" />
               </td>
               <td id="userpasserror" style="color: red;">
                   Please enter a password.
               </td>
             </tr>
             <tr>
               <td>
               </td>
               <td>
                  <button type="submit" name="submitter" value="createaccount" disabled>Create Account</button>
               </td>
               <td>
                  <button type="button" name="go back" onclick="goback();">Cancel</button>
               </td>
             </tr>
           </table>
        </form>
     </div>
  </body>
</html>
