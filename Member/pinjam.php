<?php
// include database connection file
include_once("../config.php");

session_start();

// Get id from URL to delete that user
$id = $_GET['id'];
$username = $_SESSION['T_USERNAME'];

// Delete user row from table based on given id
$result = mysqli_query($mysqli, "UPDATE buku SET B_Status = 1 where B_id =$id;");
$result2 = mysqli_query($mysqli, "INSERT INTO `peminjaman` (
  `B_ID`, 
  `T_USERNAME`, 
  `P_MULAI`, 
  `P_SELESAI`, 
  `P_status`
  ) 
VALUES (
  '$id', 
  '$username', 
  current_timestamp(), 
  date_add(curdate(),interval 7 day), 
  0
  );");

// After delete redirect to Home, so that latest user list will be displayed.
header("Location:index.php");
?>