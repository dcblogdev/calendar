<?php
include("config.php");
$data = array();

$query = "DELETE FROM events WHERE id=:id";

$statement = $connect->prepare($query);
 $statement->execute(
  array(
   ':id' => $_POST['id']
  )
 );
