<?php
// mengaktifkan session php
session_start();
 
// menghubungkan dengan koneksi
include 'config.php';
 
// menangkap data yang dikirim dari form
$T_USERNAME = $_POST['T_USERNAME'];
$T_PASSWORD = md5($_POST['T_PASSWORD']);
 
// menyeleksi data admin dengan username dan password yang sesuai
$data = mysqli_query($mysqli,"select * from member where T_USERNAME='$T_USERNAME' and T_PASSWORD='$T_PASSWORD'");
 
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($data);
 
if($cek > 0){
	$_SESSION['T_USERNAME'] = $T_USERNAME;
	$_SESSION['status'] = "login";
	header("location:Member/index.php");
}else{
	header("location:index.php?pesan=gagal");
}
?>