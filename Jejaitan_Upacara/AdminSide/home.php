<?php
session_start();
require_once "../functions.php";


$produk = query("SELECT * FROM produk");





?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
        }

        h1, .form {
            color: #BCA37F;
        }

        a {
            text-decoration: none;
            color: #007BFF;
            margin-right: 10px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #BCA37F;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        header {
            background-color: #BCA37F;
            color: #fff;
            padding: 1em;
            text-align: center;
        }
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        
        footer {
            background-color: #BCA37F;
            color: #fff;
            text-align: center;
            padding: 1em;
            bottom: 0;
            width: 100%;
        }
        .container {
            text-align: center;
        }

        .container a {
            display: block;
            margin: 10px;
            text-decoration: none;
            color: #007BFF;
        }
    </style>
</head>
<body>
 
    <header>
        <h1 style="color: white;">Jejaitan Upacara</h1>
        <p>Untuk semua upacaramu!</p>
        <h1 style="color: white;">DAFTAR PRODUK</h1>
    </header>

  

  

 <!-- <form action="" method="get" class="form">
    <input type="text" name="keyword" autofocus placeholder="cari id/nama " autocomplete="off" 
    value="<?= $keyword;  ?>" >
    <button type="submit" name="cari">Cari</button>
</form>
     <form action="" method="post" class="form"> 
            <input type="text" name="keywordNama" autofocus placeholder="cari nama" autocomplete="off" >
            <button type="submit" name="cariNama">Cari</button>
        </form> -->
    <!-- create the header -->
    <table border="1" cellpadding = '10' cellspacing = '0'>
        <tr>
            <th> No </th>
            <th> Id Produk</th>
            <th> Nama Produk</th>
            <th> Foto Produk </th>
            <th> Stok Produk</th>
            <th> Deskripsi Produk</th>
            <th> Harga Produk</th>
            <th> Actions</th>
        </tr>
        
        <?php $i =1;?>
        <!-- create the loop -->
        <?php foreach($produk as $row): ?>
        <tr>
            <td><?= $i; ?></td>
            <td><?= $row['Id_produk']; ?></td>
            <td><?= $row['Nama_produk']; ?></td>
            <td><img src="../img/<?= $row['Foto_produk']; ?>" width="100px" height="100px"></td>
            <td><?= $row['Stok_produk']; ?></td>
            <td><?= $row['Deskripsi_produk']; ?></td>
            <td><?= $row['Harga_produk']; ?></td>
            <td>
               <a href="ubahProduk.php?Id_produk=<?=$row['Id_produk'];?>">Ubah</a>
               <a href="hapusProduk.php?Id_produk=<?=$row['Id_produk'];?>" onclick="return confirm('yakin?');">hapus</a>
            </td>
            <?php $i++?>
        </tr>
        <?php endforeach; ?>
    </table>

    <div class="container">
                <a href="order.php">Lihat Semua Pesanan</a>    
                <a href="tambahProduk.php">TAMBAH PRODUK</a>
    </div>

    <footer>
        <a href="../logout.php">Logout</a>

        <p>Hubungi kami di: info@jejaitan.com | Phone: (123) 456-7890</p>
    </footer>
      