<?php
    /* include 'db.php';
    $id_hidden = $_POST['id_hidden'];
    echo $id_hidden;  */

    $b = $_GET['b'];
    //$q = isset($_POST['q']) ? intval($_POST['q']) : '';
    echo "b is ". $b;
    
    /* if(isset($_REQUEST['save'])){
        //echo "yes";
        if(isset($_REQUEST['id'])){
            if($_REQUEST['id'] == '(system generated)'){
                echo "no";
                $sql = "SELECT max(empid) FROM as maxid FROM employee";
                $result = $s->$query($sql);
                if($result->rowCount() == 0){
                    echo "0";
                }
            }else{
                echo "yes";
            }
        }
        
    } */
    /* $sql = 'UPDATE employee SET empname = :empname, emptypecode = :empcode WHERE empid = :emptext AND emppassword = :pwd';
    $s = $pdo->prepare($sql);
    $s->bindValue(':emptext', $q);
    $s->bindValue(':empname', $n);
    $s->bindValue(':empcode', $c);
    $s->bindValue(':pwd', $p);
    $s->execute(); */
    //$rows = $s->fetchAll();

    /* foreach($rows as $row){
        echo json_encode($row);
    } */
?>