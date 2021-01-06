-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 05:18 AM
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
(1, 'rifki', 'admin', '8a8bb7cd343aa2ad99b7d762030857a2'),
(2, 'rifki2', 'rifki', '2a5c4c5a5ba1c332279685ddec507cd9'),
(3, 'admin perpustakaan', 'adminperpus', '9c4214bd23ec50ef05660951541f364a');

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
(34, 'asdfasdf', 'asdfqwer', '0822401234567', '2021-01-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
