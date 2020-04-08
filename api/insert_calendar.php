<?php
include("../includes/config.php");

if (isset($_POST["title"])) {
 
    $query = "INSERT INTO events (title, start_event, end_event) VALUES (:title, :start, :end)";
    $statement = $connect->prepare($query);
    $statement->execute([
        ':title'    => $_POST['title'],
        ':start' => date('Y-m-d 08:00', strtotime($_POST['start'].' -1 day')),
        ':end'   => date('Y-m-d 09:00', strtotime($_POST['end'].' -1 day'))
    ]);
}