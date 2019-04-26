-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2019 at 07:50 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hdnesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_Toko` int(50) DEFAULT NULL,
  `ID_Barang` int(50) NOT NULL,
  `Nama_Barang` varchar(128) DEFAULT NULL,
  `Kategori` varchar(50) DEFAULT NULL,
  `Sub_Kategori` varchar(50) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Jenis_pengiriman` varchar(50) DEFAULT NULL,
  `Gambar` varchar(50) NOT NULL,
  `Deskripsi` varchar(256) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Berat` float DEFAULT NULL,
  `Ukuran` float DEFAULT NULL,
  `Varian` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_Toko`, `ID_Barang`, `Nama_Barang`, `Kategori`, `Sub_Kategori`, `Harga`, `Jenis_pengiriman`, `Gambar`, `Deskripsi`, `Stok`, `Berat`, `Ukuran`, `Varian`) VALUES
(1, 1, 'JUMPUTAN OUTER / KIMONO - COKLAT', NULL, NULL, 450000, 'JNE', 'jumputan.jpg', NULL, 20, NULL, NULL, NULL),
(2, 2, 'Hayeue Long Wallet', NULL, NULL, 350000, 'JNT', 'dompet.jpeg', NULL, 30, NULL, NULL, NULL),
(3, 3, 'Kalung Wire Cateye Triple', NULL, NULL, 450000, 'JNE', 'kalungwire.jpg', NULL, 12, NULL, NULL, NULL),
(4, 4, 'Kalung tenun Gelanting Alep', NULL, NULL, 165000, 'JNE', 'kalungarkana.jpg', NULL, 1, NULL, NULL, NULL),
(5, 5, 'MAPLE 1.0', NULL, NULL, 500000, 'JNE', 'maple2.jpg', '1 YEAR WARRANTY\r\nQUARTZ JAPAN MOVEMENT\r\n1ATM WATER SPLASH RESISTANT\r\nDial Maple\r\nBody Style Bevel Round\r\nBody Material Maple\r\nDiameter 40mm\r\nThickness 90mm\r\nStrap Color Dark Brown\r\nStrap Material Genuine full-grain leather\r\nStrap Widht/Length 24mm/230mm\r\nM', 50, NULL, NULL, NULL),
(6, 6, 'Reflexion Earring', NULL, NULL, 149000, 'JNE', 'earing.jpg', 'Dibuat dengan material wire anti karat dan no alergi. cocok untuk kulit normal dan sensitiv.\r\ntolong dibersihkan dengan lap basah\r\ncocok untuk event formal dan informal.', 3, NULL, NULL, 'Reflexion Earring'),
(8, 7, 'Sandal Slip Suede Biru Dongker Krem ~ Moura by Queen Fit Shoes', NULL, NULL, 185000, NULL, 'queenfit1.jpg', NULL, 4, NULL, NULL, NULL),
(8, 8, 'Flat Shoes Kasual Kanvas Tosca Wanita ~ Cozy Tosca by Queenfit Shoes', NULL, NULL, 215000, NULL, 'queenfit2.jpg', NULL, 53, NULL, NULL, NULL),
(9, 9, 'Atasan batik wanita pesona pink', NULL, NULL, 145000, NULL, 'atasanbatik.jpg', NULL, 3, NULL, NULL, NULL),
(10, 10, 'Amazing Women (Earrings) - BU RISMA', NULL, NULL, 88000, NULL, 'amazing.jpeg', NULL, 12, NULL, NULL, NULL),
(2, 11, 'Totebag', NULL, NULL, 567000, NULL, 'Totebag.jpg', NULL, 23, NULL, NULL, NULL),
(3, 12, 'Kalung Wire Druzy Triple Blue', NULL, NULL, 300000, NULL, 'kalungdruzy.jpg', NULL, 33, NULL, NULL, NULL),
(11, 13, 'Anting Emas Perak The Simple Sun', NULL, NULL, 175000, NULL, 'anting.jpg', NULL, 22, NULL, NULL, NULL),
(9, 14, 'Atasan kimono blouse kuning', NULL, NULL, 145000, NULL, 'kimono.jpg', NULL, 12, NULL, NULL, NULL),
(7, 15, 'Kalung lyla', NULL, NULL, 120000, NULL, 'kalunglila.jpg', NULL, 9, NULL, NULL, NULL);

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
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`ID_Pembeli`, `Nama_Pembeli`, `Tentang_Kamu`, `Alamat_utama`, `Telp`, `Instagram`, `Facebook`, `Twitter`, `Gambar`, `username`, `password`, `email`) VALUES
(1, '', '', '', '', '', '', '', '', '', '$2y$10$P614fXJLp//MUwAmzmhyEOWemmCkHqyoYiQWXF9ks.oU6w0sDDT0G', 'choirulrizal12@gmail.com'),
(3, '', '', '', '', '', '', '', '', 'nita', '$2y$10$VkU8BnDh4XPUx6UxakrLm.cxtWF2wI25gyufxSy3Zalk3CGJkWLzu', 'nita@gmail.com'),
(4, '', '', '', '', '', '', '', '', 'muchsin', '$2y$10$ccIJ.xyfNlL4NUQr8SN6m.msnwGWdqm8iNAlJdKtazLg.z.W75B/y', 'anita@gmail.com'),
(5, '', '', '', '', '', '', '', '', 'nada', '$2y$10$sMO1NBH7qjJfrFeSUWhwiuyZQx.WvD/0PrifqgqedIaf2CjzNA5F6', 'nadaitarulumam@gmail.com'),
(6, '', '', '', '', '', '', '', '', 'Nurul', '$2y$10$W54sXg2Q77OqAFoJMhvuquW5hUjeMKnoTONvEd0Clim/1yZH9wZIi', 'nurul@gmail.com');

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
  `Detail` varchar(300) DEFAULT NULL,
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

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`ID_Toko`, `Nama_Toko`, `Provinsi`, `Kota`, `Jalan`, `Kode_Pos`, `Detail`, `About`, `Instagram`, `Facebook`, `Twitter`, `Username`, `Password`, `Email`, `Gambar`, `Alamat_url`, `Biodata`) VALUES
(1, 'ETHNICITE', 'Jawa Barat', 'Bandung', NULL, NULL, 'Menyediakan Koleksi Buatan Tangan Anak Bangsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ethnicite.png', NULL, NULL),
(2, 'Sarang Leather Goods', 'DI Yogyakarta', 'Bantul', NULL, NULL, 'Menjual produk kulit asli handmade dan semi handmade. Produk ready stock dan pre-order.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sarang.png', NULL, NULL),
(3, 'Russi Collection', 'Jawa Barat', 'Bandung', NULL, NULL, 'Siap di Order', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'russi.jpg', NULL, NULL),
(4, 'Arkana', 'Bali', 'Badung', NULL, NULL, 'Crafter aksesoris wanita dari bahan tenun,berbahan ringan dengan desain yang modern ,cocok digunakan untuk sehari hari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arkana.jpg', NULL, NULL),
(5, 'Eboni Watch', 'Jawa Tengah', 'Klaten', NULL, NULL, 'handmade wooden watch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eboni.PNG', NULL, NULL),
(6, 'Deisha Keisha', 'Jawa Barat', 'Depok', NULL, NULL, 'We are Hand maker Accessories from Indonesia. We making with Eco, Nature and Non-Allergic Quality Products.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'reizha.jpg', NULL, NULL),
(7, 'Ellenscraft', 'Jawa Barat', 'Bogor', NULL, NULL, 'Menjual aksesoris kalung, gelang, anting etnik dari batu alam dan batik dengan sentuhan modern', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ellen.jpg', NULL, NULL),
(8, 'Queen Fit Store', 'Jawa Barat', 'Bogor', NULL, NULL, 'queenfit Adalah produk sepatu wanita dengan berbagai macam jenis model sepatu yg unik serta warna yg menarik dan nyaman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'queen.jpg', NULL, NULL),
(9, ' Rheazalea', 'Jawa Timur', 'Malang', NULL, NULL, 'Kami menyediakan atasan batik dengan segala macam kombinasi.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rhea.jpg', NULL, NULL),
(10, 'Heartworker', 'Jawa Barat', 'Bekasi', NULL, NULL, 'Heartworker adalah brand yang menjual barang-barang handmade. Setiap produk memiliki cerita dibaliknya.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'heartworker.jpg', NULL, NULL),
(11, 'Wira\'s Silver Bali', 'Bali', 'Gianyar', NULL, NULL, 'Handmade Silve Jewelry from Bali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wira.jpg', NULL, NULL);

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
  MODIFY `ID_Barang` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `ID_Keranjang` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `ID_Pembeli` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `ID_Toko` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
