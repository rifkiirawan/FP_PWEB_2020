<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>
        @import "http://fonts.googleapis.com/css?family=Droid+Serif";
        /* Above line is used for online google font */
        h2 {
        text-align:center
        }
        hr {
        margin-bottom:-10px
        }
        span {
        color:red;
        margin-left:65px
        }
        div.main {
        width:960px;
        height:655px;
        margin:50px auto;
        font-family:'Droid Serif',serif
        }
        div.first {
        width:380px;
        height:570px;
        float:left;
        padding:15px 50px;
        background:#f8f8ff;
        box-shadow:0 0 10px gray;
        margin-top:20px
        }
        input {
        width:100%;
        padding:8px;
        margin-top:10px;
        font-size:16px;
        margin-bottom:25px;
        box-shadow:0 0 5px;
        border:none
        }
        #btn {
        width:100%;
        padding:8px;
        margin-top:10px;
        background-color:#cd5d7d;
        cursor:pointer;
        color:#fff;
        font-size:18px;
        font-weight:700;
        font-family:'Droid Serif',serif;
        margin-bottom:15px
        }
        #btn:hover {
        background-color:lightseagreen;
        border:2px solid seagreen
        }

        @import url('https://fonts.googleapis.com/css?family=Source+Code+Pro');
        .header {
          overflow: hidden;
          background-color:#cd5d7d;
          padding: 20px 10px;
          margin-bottom: 100px;
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
          background-color:#A7C5EB;
          color: black;
        }

        .header a.logo {
          font-size: 25px;
          font-weight: bold;
        }

        .header-right {
          float: right;
        }

        .error {color: #FF0000;}
    </style>
    <title>Add Users</title>
</head>

<body>
    <div class="header">
      <a href="#default" class="logo">Tambah Data Tamu</a>
        <div class="header-right">
          <a href="index.php">Home</a>
          <a class="active" href="add.php">Tambah Data Tamu Baru</a>
        </div>
    </div>

    <form action="add.php" method="post" name="form1" required>
        <table width="25%" border="0" align="center" style="margin-top: 30px; font-size:18px;font-weight:700;">
            <tr> 
                <td>Nama Pengunjung :</td>
                <td><input required type="text" name="nama_pengunjung"></td>
            </tr>
            <tr> 
                <td>Alamat :</td>
                <td><input required type="text" name="alamat"></td>
            </tr>
            <tr> 
                <td>Nomor HP :</td>
                <td><input required type="text" name="no_HP"></td>
            </tr>
            <tr> 
                <td></td>
                <td><input id="btn" type="submit" name="Submit" value="Add"></td>
            </tr>
        </table>
    </form>

    <?php

    // Check If form submitted, insert form data into users table.
    if(isset($_POST['Submit'])) {
        $nama_pengunjung = $_POST['nama_pengunjung'];
        $alamat = $_POST['alamat'];
        $no_HP = $_POST['no_HP'];

        // include database connection file
        include_once("config.php");

        // Insert user data into table
        $result = mysqli_query($mysqli, "INSERT INTO guest(nama_pengunjung,alamat,no_HP) VALUES('$nama_pengunjung','$alamat','$no_HP')");

        if($nama_pengunjung !=''&& $alamat !=''&& $no_HP !='')
        {
            //  To redirect form on a particular page
            header("Location:http://localhost/FP_PWEB_2020/index.php");
        }
        // Show message when user added
        // echo "User added successfully.";
    }
    ?>
</body>
</html>