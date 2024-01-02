-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 08:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jejaitan_upacara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id_admin` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id_admin`, `Username`, `Password`) VALUES
(4, 'trisna', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id_pelanggan` int(11) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Nama_pelanggan` varchar(30) NOT NULL,
  `No_pelanggan` int(11) DEFAULT NULL,
  `Alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Id_pelanggan`, `Password`, `Nama_pelanggan`, `No_pelanggan`, `Alamat_pelanggan`) VALUES
(21, '123', 'trisna', 0, 'Denpasar');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `Id_pesanan` int(11) NOT NULL,
  `Id_pelanggan` int(11) NOT NULL,
  `Id_produk` int(11) NOT NULL,
  `Alamat_pesanan` text NOT NULL,
  `Total_pesanan` int(11) NOT NULL,
  `Tgl_pesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`Id_pesanan`, `Id_pelanggan`, `Id_produk`, `Alamat_pesanan`, `Total_pesanan`, `Tgl_pesanan`) VALUES
(68, 19, 99, 'Ketewel', 55000, '2023-12-29'),
(69, 19, 20, 'Ketewel', 10000, '2023-12-29'),
(70, 19, 20, 'Ketewel', 10000, '2023-12-29'),
(73, 21, 99, 'Denpasar', 55000, '2023-12-29'),
(74, 21, 23, 'Denpasar', 75000, '2024-01-01'),
(75, 21, 20, 'Denpasar', 10000, '2024-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Id_produk` int(11) NOT NULL,
  `Nama_produk` varchar(30) NOT NULL,
  `Foto_produk` varchar(30) NOT NULL,
  `Stok_produk` int(11) NOT NULL,
  `Deskripsi_produk` text NOT NULL,
  `Harga_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Id_produk`, `Nama_produk`, `Foto_produk`, `Stok_produk`, `Deskripsi_produk`, `Harga_produk`) VALUES
(13, 'Sampyan gebogan', 'sampyangebogan.jpeg', 13, 'Sampyan yang dipakai pada gebogan yang akan dipakai untuk Banten\r\n', 50000),
(15, 'Sampyan penjor', 'sampyanpenjor.jpeg', 13, 'Sampyan yang dipakai pada penjor yang dibuat pada saat ada piodalan atau galungan\r\n', 30000),
(20, 'Penyeneng', 'penyeneng.jpeg', 12, 'Jejaitan yang digunakan pada Banten tumpeng\r\n', 10000),
(23, 'Ceniga', 'ceniga.jpeg', 5, 'Jejaitan  yang biasanya diletakan di depan pelinggih saat ada upacara atau hari besar keagamaan seperti Galungan dan Kuningan\r\n', 75000),
(99, 'Tamiang Kulem', 'tamiangkulem.jpeg', 5, 'Jejaitan yang dipakai pada Kuningan dan melambangkan senjata (tameng dan tombak)', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Id_transaksi` int(11) NOT NULL,
  `Id_pesanan` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Bukti` blob NOT NULL,
  `Bank` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_admin`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id_pelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`Id_pesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `Id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `Id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `Id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
