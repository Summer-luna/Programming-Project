<?php
$q = isset($_GET['q']) ? intval($_GET['q']) : '';

include 'db.php';

$sql = 'SELECT empid, empname, emptypecode FROM employee WHERE empid = :emptext';
$s = $pdo->prepare($sql);
$s->bindValue(':emptext', $q);
$s->execute();
$rows = $s->fetchAll();

foreach($rows as $row){
    echo json_encode($row);
}
?>