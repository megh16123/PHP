<?php 
include 'db_connect.php';

$msg = $_POST['text'];
$room = $_POST['room'];
$ip = $_POST['ip'];

$sql = "INSERT INTO `ms` (`roomname`, `msg`, `ip`, `stime`) VALUES ('$room', '$msg', '$ip', current_timestamp());";
mysqli_query($conn,$sql);
mysqli_close($conn);
?>