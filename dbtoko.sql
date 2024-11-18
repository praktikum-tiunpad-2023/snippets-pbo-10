-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 05:49 PM
-- Server version: 10.4.28-MariaDB-log
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `ID_Detail_Transaksi` int(11) NOT NULL,
  `ID_Transaksi` int(11) NOT NULL,
  `ID_Sepatu` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Subtotal` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`ID_Detail_Transaksi`, `ID_Transaksi`, `ID_Sepatu`, `Jumlah`, `Subtotal`) VALUES
(1, 1, 1, 1, 23000),
(2, 10, 1, 1, 23000),
(3, 11, 1, 12, 276000),
(4, 12, 1, 1, 23000),
(5, 13, 1, 12, 276000),
(6, 14, 1, 1, 23000),
(7, 15, 7, 12, 1476000),
(8, 15, 6, 10, 10002000),
(9, 16, 1, 1, 23000),
(10, 16, 6, 2, 2000400),
(11, 17, 3, 2, 400000),
(12, 18, 5, 1, 1200000),
(13, 19, 1, 109, 2507000),
(14, 20, 2, 12, 1200000),
(15, 21, 5, 1, 1200000),
(16, 21, 8, 1, 23000),
(17, 22, 8, 1, 23000),
(18, 23, 10, 2, 240000);

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `ID_Merk` int(11) NOT NULL,
  `Nama_Merk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`ID_Merk`, `Nama_Merk`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(5, 'Converse'),
(6, 'Puma'),
(7, 'Converse'),
(8, 'Compass'),
(9, 'NB'),
(12, 'Paduka');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_Pegawai` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Kata_Sandi` varchar(255) NOT NULL,
  `Peran` enum('admin','pegawai_biasa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`ID_Pegawai`, `Nama`, `Username`, `Email`, `Kata_Sandi`, `Peran`) VALUES
(3, 'Rio Irawan Satrio', 'rioganteng', 'alhusaini@gmail.com', '$2a$10$/nyYQ5CMYiTHUgHJP8In2OJSqAJ0cLPPRFMt0mX7qNsTm95of8ApW', 'admin'),
(5, 'Adnan Hafizh ', 'adnan', 'adnan@gmail.com', '$2a$10$.N33qFTzQr.P5VQF3J3Ac.hhgPwIOjaDAlwKLwOoLm7oz0g7XznsW', 'pegawai_biasa'),
(6, 'Alif Al Husaini', 'alif123', 'alif@gmail.com', '$2a$10$9ha4mqryb9amj3o.NL01depRhS2kQiR2OilCR58a6XCd6gLedEJhC', 'admin'),
(7, 'Angga', 'angga', 'angga@gmail.com', '$2a$10$t7g3EPj8psq43CSzfH2jWuPwoAcLDEkHdgpbEix53hl8gorrAjZuO', 'admin'),
(9, 'Percobaan', 'coba', 'coba@email.co', '$2a$10$NzUynvsyFmgoyUMkWivale/8mb3H8hImww4s5D8GQHicEOmMQN0Me', 'admin'),
(13, 'alif', 'alif', 'alif@gmail.com', 'alif', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_Pelanggan` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Kontak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ID_Pelanggan`, `Nama`, `Kontak`) VALUES
(1, 'Gauss', '08213124'),
(2, 'Stefani Amalia Putri', '082345674321'),
(4, 'AnnaDh', '123'),
(5, 'Faiz Fahri Nizar', '089875/faiz-009'),
(7, 'Faiz fahri', '089875/faiz-009'),
(10, 'Anna', '08123458990');

-- --------------------------------------------------------

--
-- Table structure for table `sepatu`
--

CREATE TABLE `sepatu` (
  `ID_Sepatu` int(11) NOT NULL,
  `Nama_Sepatu` varchar(255) NOT NULL,
  `Harga` bigint(20) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Deskripsi` text DEFAULT NULL,
  `ID_Merk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sepatu`
--

INSERT INTO `sepatu` (`ID_Sepatu`, `Nama_Sepatu`, `Harga`, `Stok`, `Deskripsi`, `ID_Merk`) VALUES
(1, 'Nike Zoom', 23000, 0, '131423453', 1),
(2, 'Nike Blaze 101', 100000, 0, 'Merah', 1),
(3, 'Yeezyy', 200000, 0, 'Hitam', 2),
(5, 'Yezee z1', 1200000, 10, 'Putih', 2),
(6, 'Jordan', 1000200, 0, 'Putih Garis', 1),
(7, 'C12', 123000, 0, 'Pink', 5),
(8, 'Yz23', 23000, 10, 'Merah', 5),
(9, 'gh', 1200000, 12, 'fgh', 1),
(10, 'Paduka -2', 120000, 10, '2', 12);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` int(11) NOT NULL,
  `ID_Pegawai` int(11) NOT NULL,
  `ID_Pelanggan` int(11) DEFAULT NULL,
  `Tanggal_Transaksi` datetime NOT NULL,
  `Total_Harga` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `ID_Pegawai`, `ID_Pelanggan`, `Tanggal_Transaksi`, `Total_Harga`) VALUES
(1, 5, 1, '2023-12-06 19:51:07', 23000),
(10, 6, 1, '2023-12-01 00:00:00', 23000),
(11, 6, 1, '2023-12-01 00:00:00', 276000),
(12, 6, 1, '2023-12-02 00:00:00', 23000),
(13, 6, 1, '2023-12-01 00:00:00', 276000),
(14, 6, 1, '2023-12-02 00:00:00', 23000),
(15, 6, 1, '2023-12-08 00:00:00', 11478000),
(16, 6, 1, '2023-12-08 00:00:00', 2023400),
(17, 6, 2, '2023-12-02 00:00:00', 400000),
(18, 3, 4, '2023-12-07 00:00:00', 1200000),
(19, 6, 2, '2023-12-08 00:00:00', 2507000),
(20, 6, 1, '2024-10-29 00:00:00', 1200000),
(21, 6, 4, '2024-10-29 00:00:00', 1223000),
(22, 6, 10, '2024-10-29 00:00:00', 23000),
(23, 6, 2, '2024-10-29 00:00:00', 240000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_detail_transaksi`
-- (See below for the actual view)
--
CREATE TABLE `view_detail_transaksi` (
`ID_Detail_Transaksi` int(11)
,`ID_Transaksi` int(11)
,`Nama_Sepatu` varchar(255)
,`Jumlah` int(11)
,`Subtotal` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_sepatu_merk`
-- (See below for the actual view)
--
CREATE TABLE `view_sepatu_merk` (
`ID_Sepatu` int(11)
,`Nama_Sepatu` varchar(255)
,`Harga` bigint(20)
,`Stok` int(11)
,`Deskripsi` text
,`Nama_Merk` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_transaksi`
-- (See below for the actual view)
--
CREATE TABLE `view_transaksi` (
`ID_Transaksi` int(11)
,`Nama_Pegawai` varchar(255)
,`Nama_Pelanggan` varchar(255)
,`Tanggal_Transaksi` datetime
,`Total_Harga` bigint(20)
);

-- --------------------------------------------------------

--
-- Structure for view `view_detail_transaksi`
--
DROP TABLE IF EXISTS `view_detail_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detail_transaksi`  AS SELECT `dt`.`ID_Detail_Transaksi` AS `ID_Detail_Transaksi`, `dt`.`ID_Transaksi` AS `ID_Transaksi`, `s`.`Nama_Sepatu` AS `Nama_Sepatu`, `dt`.`Jumlah` AS `Jumlah`, `dt`.`Subtotal` AS `Subtotal` FROM (`detail_transaksi` `dt` join `sepatu` `s` on(`dt`.`ID_Sepatu` = `s`.`ID_Sepatu`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_sepatu_merk`
--
DROP TABLE IF EXISTS `view_sepatu_merk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_sepatu_merk`  AS SELECT `s`.`ID_Sepatu` AS `ID_Sepatu`, `s`.`Nama_Sepatu` AS `Nama_Sepatu`, `s`.`Harga` AS `Harga`, `s`.`Stok` AS `Stok`, `s`.`Deskripsi` AS `Deskripsi`, `m`.`Nama_Merk` AS `Nama_Merk` FROM (`sepatu` `s` join `merk` `m` on(`s`.`ID_Merk` = `m`.`ID_Merk`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_transaksi`
--
DROP TABLE IF EXISTS `view_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_transaksi`  AS SELECT `t`.`ID_Transaksi` AS `ID_Transaksi`, `p`.`Nama` AS `Nama_Pegawai`, `pl`.`Nama` AS `Nama_Pelanggan`, `t`.`Tanggal_Transaksi` AS `Tanggal_Transaksi`, `t`.`Total_Harga` AS `Total_Harga` FROM ((`transaksi` `t` join `pegawai` `p` on(`t`.`ID_Pegawai` = `p`.`ID_Pegawai`)) join `pelanggan` `pl` on(`t`.`ID_Pelanggan` = `pl`.`ID_Pelanggan`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`ID_Detail_Transaksi`),
  ADD KEY `ID_Transaksi` (`ID_Transaksi`),
  ADD KEY `ID_Sepatu` (`ID_Sepatu`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`ID_Merk`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_Pelanggan`);

--
-- Indexes for table `sepatu`
--
ALTER TABLE `sepatu`
  ADD PRIMARY KEY (`ID_Sepatu`),
  ADD KEY `ID_Merk` (`ID_Merk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`),
  ADD KEY `ID_Pelanggan` (`ID_Pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `ID_Detail_Transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `ID_Merk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `ID_Pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `ID_Pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sepatu`
--
ALTER TABLE `sepatu`
  MODIFY `ID_Sepatu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `ID_Transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`ID_Transaksi`) REFERENCES `transaksi` (`ID_Transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`ID_Sepatu`) REFERENCES `sepatu` (`ID_Sepatu`);

--
-- Constraints for table `sepatu`
--
ALTER TABLE `sepatu`
  ADD CONSTRAINT `sepatu_ibfk_1` FOREIGN KEY (`ID_Merk`) REFERENCES `merk` (`ID_Merk`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ID_Pegawai`) REFERENCES `pegawai` (`ID_Pegawai`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`ID_Pelanggan`) REFERENCES `pelanggan` (`ID_Pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
