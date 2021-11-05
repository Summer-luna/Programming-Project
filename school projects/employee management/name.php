<?php
$q = isset($_GET['q']) ? strval($_GET['q']) : '';

include 'db.php';

$sql = 'SELECT empid, empname, emptypecode FROM employee WHERE empname LIKE :pattern';
$s = $pdo->prepare($sql);
$pattern = '%'.$q.'%';
//$s->bindValue(':emptext', $pattern);
$s->execute([':pattern' => $pattern]); 

$rows = $s->fetchAll();
echo json_encode($rows);
/* foreach($rows as $row){
    echo json_encode($row);
}  */
?>