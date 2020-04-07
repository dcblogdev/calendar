<?php
include("config.php");
if(isset($_POST["title"]))
{
 $query = " INSERT INTO events (title, start_event, end_event)
 VALUES (:title, :start, :end)";
 $statement = $connect->prepare($query);
 $statement->execute(
  array(
   ':title'  => $_POST['title'],
   ':start' => $_POST['start'],
   ':end' => $_POST['end']
  )
 );
}