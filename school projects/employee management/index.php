<?php
    include 'db.php';
    if(isset($_POST['id_hidden'])){
        $id = $_POST['id_hidden'];
        if($id == "(system generated)"){
            $sql = "SELECT max(empid) FROM as maxid FROM employee";
            $s = $pdo->query($sql);
            if($s->rowCount() == 0)
        }
        else{
            echo 'yes';
        }
    }
    

?>
<!Doctype html> 
<html>
    <head>
        <link href="https://www.w3.org/StyleSheets/Core/Chocolate" rel="stylesheet">
    </head>
    <body id="body">
        <form method="POST" action="index.php">
            <h1>Search</h1>
            <p id="error"></p>
            <table>
                <tr>
                    <td style="text-align:right;">
                        <lable for="EmpId">By Employee ID:</lable>
                    </td>
                    <td>
                        <input type="text" id="EmpId" name="EmpId" style="width:30px" />
                        <button id="add">Add New Employee</button>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;">
                        <label for="EmpName">By Employee Name:</label>
                    </td>
                    <td id="selectors">
                        <input type="text" id="EmpName" name="EmpName" style="width:200px"/>
                    </td>
                </tr>
            </table>

            <h1>Data Entry</h1>
            <table>
                <tr>
                    <td style="text-align:right;" disabled>Employee ID:</td>
                    <td id="id" name="id"></td>
                    <input type="hidden" name="id_hidden" id="id_hidden">
                </tr>
                <tr>
                    <td style="text-align:right;">
                        <label for="newEmpName">Employee Name:</label>
                    </td>
                    <td>
                        <input type="text" id="newEmpName" name="newEmpName" style="width:200px" disabled/>
                        <span id="error3"></span>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;">
                        <Label for="pwd">Password:</Label>
                    </td>
                    <td>
                        <input type="password" id="pwd" name="pwd" style="width:200px" disabled/>
                        <span id="error2"></span>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;">Employee Type:</td>
                    <td>
                        <input type="radio" name="empType" id="administrator" disabled/>
                        <label for="administrator">Administrator</label><br>
                        
                        <input type="radio" name="empType" id="worker" disabled/>
                        <label for="worker">Worker</label>
                        <span id="error4"></span>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">
                        <button id="cancel" disabled>Cancel</button>
                    </td>
                    <td style="text-align:right">
                        <button id="save" name = "save" type = "submit" disabled>Save</button>
                    </td>                
                </tr>    
            </table>
        </form>
        <button id="cancel" disabled>Cancel</button>
        <button id="save" name = "save" disabled>Save</button>
        
        <script src="main.js"></script>
    </body>
</html>