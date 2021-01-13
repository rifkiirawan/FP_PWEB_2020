<?php
// Create database connection using config file
include_once("../config.php");
// echo $_SESSION
session_start();

// Fetch all users data from database
$result = mysqli_query($mysqli, "SELECT * FROM peminjaman, member, buku where peminjaman.B_ID = buku.B_id and peminjaman.T_username = member.T_username and peminjaman.p_status = '0'");

<<<<<<< HEAD
=======
$result1 = mysqli_query($mysqli, "select 
	member.T_NAMA as 'nama peminjam', 
	buku.B_JUDUL as 'buku yang dipinjam' 
from peminjaman, member, buku 
where 
	peminjaman.B_ID = buku.B_id 
	and peminjaman.T_username = member.T_username
	and peminjaman.p_status = '0'");
>>>>>>> d45bfbc57f490bc54085988a137154d7808f2122
?>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="plotly.min.js"></script>
    <style>
        table, td, th {  
          border-bottom: 1px solid #ddd;
          text-align: left;
        }

        table {
        border-collapse: collapse;
        width: 80%;
        margin-top: 100px;
        }

        th, td {
        padding: 15px;
        /* border-bottom: 1px solid #ddd; */
        }

        th{
            background-color: #cd5d7d;
        }

        td{
          background-color: #a7c5eb;
        }

        tr:hover {background-color:#a7c5eb;}

        @import url('https://fonts.googleapis.com/css?family=Source+Code+Pro');
        .header {
          overflow: hidden;
          background-color:#cd5d7d;
          padding: 20px 10px;
          
        }
        .header a {
          float: left;
          color: black;
          text-align: center;
          padding: 12px;
          text-decoration: none;
          font-size: 18px; 
          line-height: 25px;
          border-radius: 4px;
          font-family: Arial, Helvetica, sans-serif
        }
        .header a:hover {
          background-color: #ddd;
          color: black;
        }

        .header a.active {
          background-color:#a7c5eb;
          color: black;
        }

        .header a.logo {
          font-size: 25px;
          font-weight: bold;
        }

        .header-right {
          float: right;
        }

        .update {
            float: left;
            text-align: center;
            padding: 8px;
            text-decoration: none;
            font-size: 18px; 
            line-height: 25px;
            border-radius: 4px;
            font-family: Arial, Helvetica, sans-serif;
            background-color:green;
            color: white;
            margin-right: 8px;
        }

        .delete {
            float: left;
            text-align: center;
            padding: 8px;
            text-decoration: none;
            font-size: 18px; 
            line-height: 25px;
            border-radius: 4px;
            font-family: Arial, Helvetica, sans-serif;
            background-color:red;
            color: white;
            margin-right: 8px;
        }
    </style>   
    <title>Homepage Perpustakaan</title>
</head>

<body style="background-color:#f6ecf0;">
    <div class="header">
      <a class="logo">Daftar Buku Yang Dipinjam</a>
        <div class="header-right">
          <a class="active" href="index.php">Home</a>
          <a href="Logout.php">Logout</a>
        </div>
    </div>
    <table align="center">
    <tr>
<<<<<<< HEAD
        <th>Judul Buku</th> <th>Nama Pengarang</th> <th>Nama Peminjam</th> <th>Tanggal Dipinjam</th> <th>Tanggal Kembali</th> <th>Aksi</th>
=======
        <th>Judul Buku</th> <th>Nama Pengarang</th> <th>Nama Peminjam</th> <th>Tanggal Dipinjam</th> <th>Tanggal Kembali</th>
>>>>>>> d45bfbc57f490bc54085988a137154d7808f2122
    </tr>
    <?php  
    while($user_data = mysqli_fetch_array($result)) {         
        echo "<tr>";
        echo "<td>".$user_data['T_NAMA']."</td>";
        echo "<td>".$user_data['B_JUDUL']."</td>";
        echo "<td>".$user_data['T_NAMA']."</td>";
        echo "<td>".$user_data['P_MULAI']."</td>";
        echo "<td>".$user_data['P_SELESAI']."</td>";
<<<<<<< HEAD
        echo "<td><a class='delete' href='kembali.php?id=$user_data[P_ID]'>Kembalikan Buku</a>";  
=======
>>>>>>> d45bfbc57f490bc54085988a137154d7808f2122
    }
    ?>
    </table>
</body>
</html>
