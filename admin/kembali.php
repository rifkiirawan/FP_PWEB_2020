<?php
// include database connection file
include_once("../config.php");

session_start();

// Get id from URL to delete that user
$id = $_GET['id'];
// $username = $_SESSION['T_USERNAME'];

// Update tabel buku
//update tabel peminjaman
$result2 = mysqli_query($mysqli, "UPDATE peminjaman p, buku b set p.P_STATUS = '1', b.B_STATUS = 0 where b.B_ID = p.B_ID AND p.P_ID = $id AND p.P_STATUS = '0'");
// var_dump($result2); die;
// echo "UPDATE peminjaman p, buku b set p.P_STATUS = '1', b.B_STATUS = 0 where b.B_ID = p.B_ID AND p.P_ID = '$id' AND p.P_STATUS = '0'"; die;
// After delete redirect to Home, so that latest user list will be displayed.
header("Location:buku_dipinjam.php");
?>