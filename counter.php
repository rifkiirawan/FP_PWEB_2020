<?php
$filecounter="counter.txt";
$fl=fopen($filecounter,"r+");
$hit=fread($fl,filesize($filecounter));
echo("<table width=250 align=center border=1 cellspacing=0 cellpadding=0
bordercolor=#0000FF><tr>");
echo("<td width=250 valign=middle align=center>");
echo("<font face=verdana size=2 color=#FF0000><b>");
echo("Anda pengunjung yang ke:");
echo($hit);
echo("</b></font>");
echo("</td>");
echo("</tr></table>");
fclose($fl);
$fl=fopen($filecounter,"w+");
$hit=$hit+1;
fwrite($fl,$hit,strlen($hit));
fclose($fl);
?>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
            background-color: lightseagreen;
        }

        td{
          background-color: lightcyan;
        }

        tr:hover {background-color:#f5f5f5;}

        @import url('https://fonts.googleapis.com/css?family=Source+Code+Pro');
        .header {
          overflow: hidden;
          background-color:lightseagreen;
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
          background-color:green;
          color: white;
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
    <title>Homepage</title>
</head>

<body>
  <a href="index.php">Ke Halaman Tamu.</a>
</body>
</html>