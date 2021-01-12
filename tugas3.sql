-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 03:39 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas3`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(2) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `nama`, `username`, `password`) VALUES
(3, 'admin perpustakaan', 'adminperpus', '9c4214bd23ec50ef05660951541f364a');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `B_ID` int(11) NOT NULL,
  `B_JUDUL` varchar(40) DEFAULT NULL,
  `B_PENGARANG` varchar(50) DEFAULT NULL,
  `B_STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`B_ID`, `B_JUDUL`, `B_PENGARANG`, `B_STATUS`) VALUES
(1, 'DORAEMON', 'F FUJIKO', 0);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `nama_pengunjung` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_HP` varchar(14) NOT NULL,
  `tgl_berkunjung` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `nama_pengunjung`, `alamat`, `no_HP`, `tgl_berkunjung`) VALUES
(23, 'Bayu', 'Jl.Kurang', '0822401234567', '2020-10-21'),
(24, 'Rifki', 'Jl.Daerah', '081234567890', '2020-10-21'),
(25, 'Adrian', 'Jl.Terserah', '0822401234444', '2020-10-21'),
(27, 'Srabowo', 'Jl.Calon', '08888888888', '2020-10-21'),
(30, 'Rifki Aulia', 'surabaya', '0822401234567', '2020-10-21'),
(31, 'Rifki Aulia Irawan', 'surabaya asdf', '0822401234567', '2020-11-06'),
(34, 'asdfasdf', 'asdfqwer', '0822401234567', '2021-01-05'),
(35, 'rifki', 'surabaya', '0123123123', '2021-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `T_USERNAME` varchar(20) NOT NULL,
  `T_NAMA` varchar(50) DEFAULT NULL,
  `T_ALAMAT` varchar(100) DEFAULT NULL,
  `T_TELEPON` varchar(15) DEFAULT NULL,
  `T_IMAGEPATH` varchar(100) DEFAULT NULL,
  `T_PASSWORD` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`T_USERNAME`, `T_NAMA`, `T_ALAMAT`, `T_TELEPON`, `T_IMAGEPATH`, `T_PASSWORD`) VALUES
('Adrian', 'Adrian Danindra', 'Jl. Surabaya haha', '082240283809', '02-still-for-america-room-loop-superJumbo.jpg', 'b31c62ae423a0c0785bc04d1ae1f4041'),
('RayRoyy', 'Rifki Aulia', 'Jl. Surabaya haha', '082240283809', NULL, '42f749ade7f9e195bf475f37a44cafcb');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `P_ID` int(11) NOT NULL,
  `B_ID` int(11) NOT NULL,
  `T_USERNAME` varchar(20) NOT NULL,
  `PT_ID` int(11) NOT NULL,
  `P_MULAI` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `P_SELESAI` date DEFAULT NULL,
  `ATTRIBUTE_11` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `PT_ID` int(11) NOT NULL,
  `PT_NAMA` varchar(50) DEFAULT NULL,
  `PT_JK` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`T_USERNAME`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `FK_PEMINJAM_PEMINJAM_TAMU` (`T_USERNAME`),
  ADD KEY `FK_PEMINJAM_RELATIONS_BUKU` (`B_ID`),
  ADD KEY `FK_PEMINJAM_RELATIONS_PETUGAS` (`PT_ID`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`PT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_PEMINJAM_PEMINJAM_TAMU` FOREIGN KEY (`T_USERNAME`) REFERENCES `member` (`T_USERNAME`),
  ADD CONSTRAINT `FK_PEMINJAM_RELATIONS_BUKU` FOREIGN KEY (`B_ID`) REFERENCES `buku` (`B_ID`),
  ADD CONSTRAINT `FK_PEMINJAM_RELATIONS_PETUGAS` FOREIGN KEY (`PT_ID`) REFERENCES `petugas` (`PT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
