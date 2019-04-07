-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2019 at 04:33 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_Toko` int(50) DEFAULT NULL,
  `ID_Barang` int(50) NOT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Kategori` varchar(50) DEFAULT NULL,
  `Sub_Kategori` varchar(50) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Jenis_pengiriman` varchar(50) DEFAULT NULL,
  `Gambar` varchar(50) NOT NULL,
  `Deskripsi` varchar(50) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Berat` float DEFAULT NULL,
  `Ukuran` float DEFAULT NULL,
  `Varian` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `ID_Keranjang` int(50) NOT NULL,
  `ID_Barang` int(50) DEFAULT NULL,
  `Jumlah_Barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `ID_Pembeli` int(50) NOT NULL,
  `Nama_Pembeli` varchar(50) DEFAULT NULL,
  `Tentang_Kamu` varchar(50) DEFAULT NULL,
  `Alamat_utama` varchar(50) DEFAULT NULL,
  `Telp` varchar(50) DEFAULT NULL,
  `Instagram` varchar(50) DEFAULT NULL,
  `Facebook` varchar(50) DEFAULT NULL,
  `Twitter` varchar(50) DEFAULT NULL,
  `Gambar` varchar(50) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `ID_Toko` int(50) NOT NULL,
  `Nama_Toko` varchar(50) DEFAULT NULL,
  `Provinsi` varchar(50) DEFAULT NULL,
  `Kota` varchar(50) DEFAULT NULL,
  `Jalan` varchar(50) DEFAULT NULL,
  `Kode_Pos` int(11) DEFAULT NULL,
  `Detail` varchar(50) DEFAULT NULL,
  `About` varchar(50) DEFAULT NULL,
  `Instagram` varchar(50) DEFAULT NULL,
  `Facebook` varchar(50) DEFAULT NULL,
  `Twitter` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Gambar` varchar(50) NOT NULL,
  `Alamat_url` varchar(50) DEFAULT NULL,
  `Biodata` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` int(50) NOT NULL,
  `ID_Barang` int(50) DEFAULT NULL,
  `ID_Pembeli` int(50) DEFAULT NULL,
  `ID_Keranjang` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_Barang`),
  ADD KEY `ID_Toko` (`ID_Toko`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`ID_Keranjang`),
  ADD KEY `ID_Barang` (`ID_Barang`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`ID_Pembeli`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`ID_Toko`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Barang` (`ID_Barang`),
  ADD KEY `ID_Pembeli` (`ID_Pembeli`),
  ADD KEY `ID_Keranjang` (`ID_Keranjang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `ID_Barang` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `ID_Keranjang` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `ID_Pembeli` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `ID_Toko` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `ID_Transaksi` int(50) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`ID_Toko`) REFERENCES `toko` (`ID_Toko`) ON DELETE CASCADE;

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`ID_Barang`) REFERENCES `barang` (`ID_Barang`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ID_Barang`) REFERENCES `barang` (`ID_Barang`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`ID_Pembeli`) REFERENCES `pembeli` (`ID_Pembeli`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`ID_Keranjang`) REFERENCES `keranjang` (`ID_Keranjang`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
