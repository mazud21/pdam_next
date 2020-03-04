-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2020 at 07:39 AM
-- Server version: 5.7.27-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmazudwe_pdam_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nip` bigint(16) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`nip`, `nama`, `email`, `password`) VALUES
(0, 'masud', 'hmazud@gmail.com', '12345678'),
(1234, 'masud', 'hmazud@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `masalah_air`
--

CREATE TABLE `masalah_air` (
  `no_info` int(16) NOT NULL,
  `wilayah` varchar(25) NOT NULL,
  `hari` tinytext NOT NULL,
  `tanggal` date NOT NULL,
  `estimasi` time NOT NULL,
  `est_mulai` varchar(5) NOT NULL,
  `est_selesai` varchar(5) NOT NULL,
  `kerusakan` text NOT NULL,
  `alternatif` text NOT NULL,
  `penanganan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masalah_air`
--

INSERT INTO `masalah_air` (`no_info`, `wilayah`, `hari`, `tanggal`, `estimasi`, `est_mulai`, `est_selesai`, `kerusakan`, `alternatif`, `penanganan`) VALUES
(1, 'Imogiri', 'Sabtu', '2020-01-25', '01:00:00', '00:00', '00:00', 'Kebocoran pipa PDAM', 'Silakan menampung air secukupnya', 'Sedang dilakukan pembenahan oleh tim PDAM'),
(2, 'Imogiri', 'Jumat', '2020-01-24', '01:00:00', '00:00', '00:00', 'Kebocoran pipa PDAM', 'Silakan menampung air secukupnya', 'Sedang dilakukan pembenahan oleh tim PDAM'),
(3, 'Imogiri', 'Sabtu', '2020-01-25', '01:00:00', '00:00', '00:00', 'Kebocoran pipa PDAM', 'Silakan menampung air secukupnya', 'Sedang dilakukan pembenahan oleh tim PDAM'),
(4, 'Kasihan', 'Sabtu', '2020-01-25', '01:00:00', '00:00', '00:00', 'Kebocoran pipa PDAM', 'Silakan menampung air secukupnya', 'Sedang dilakukan pembenahan oleh tim PDAM'),
(5, 'Kasihan', 'Sabtu', '2020-01-25', '01:00:00', '00:00', '00:00', 'Kerusakan meteran air', 'harap menampung air', 'Sedang ditangani oleh tim lapangan'),
(6, 'Jetis', 'Sabtu', '2020-01-25', '01:00:00', '00:00', '00:00', 'Kebocoran pipa PDAM', 'Silakan menampung air secukupnya', 'Sedang dilakukan pembenahan oleh tim PDAM'),
(7, 'Jetis', 'Sabtu', '2020-01-25', '01:00:00', '00:00', '00:00', 'Pemasanagan baru', 'silakan menampung air', 'sedang dilakukan pembenahan'),
(8, 'Imogiri', 'Jumat', '2020-01-03', '01:00:00', '09:00', '10:00', 'Kebocoran pipa PDAM', 'Silakan menampung air secukupnya', 'Sedang dilakukan pembenahan oleh tim PDAM');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no_daftar` int(11) NOT NULL,
  `no_ktp` bigint(16) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `foto_ktp` varchar(100) NOT NULL,
  `pilih_tarif` char(4) NOT NULL,
  `no_pelanggan` int(6) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `regId` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`no_daftar`, `no_ktp`, `nama`, `alamat`, `email`, `no_hp`, `foto_ktp`, `pilih_tarif`, `no_pelanggan`, `password`, `regId`) VALUES
(1, 3456437672764913, 'Mas\'ud', 'Alamat : Jl. Karangtengah, Kec. Imogiri, Bantul, Daerah Istimewa Yogyakarta 55782, Indonesia. Latitude : -7.928704799999999. Longitude : 110.38162609999999', 'linux96mint@gmail.com', '085376424543', 'Screenshot_4.png', 'A2_2', 1, '15346897', 'dkShTR3i8-4:APA91bF3i1Fy3e1qvr75vdV2FhhvXHPBKwCmeGMivmaN_giFJ3L5M5FDr0Vneq51iCGhmV7CvKsAwmC7wYKaWIW3Ff5RTPQYVKufBByXIKCL-Vev23DJJ7ZZuChE1A5p5UIs4A099E4o'),
(2, 3568568885588855, 'Hafiz', 'Alamat : Jl. Karangtengah, Kec. Imogiri, Bantul, Daerah Istimewa Yogyakarta 55782, Indonesia. Latitude : -7.928704799999999. Longitude : 110.38162609999999', 'linux96mint@gmail.com', '085365245868', 'Screenshot_4.png', 'SK_1', 2, '75298130', 'fRxmoX-C7Lk:APA91bHAClRtnOqdEJcpEU3fALgduJTFSMT2VUsiBlEjNQm_RAdIPy8-0Y7jrj5Fu3gYOLLEtD_ZJ6ZqOo4pu5TqSHophzdfwL60RF_-6CtU5GduxYk11mkU6Jy41bAtEaXBLP8sV3FT'),
(3, 3457613467567667, 'Al', 'Alamat : Unnamed Road, Jetis, Sriharjo, Kec. Imogiri, Bantul, Daerah Istimewa Yogyakarta 55782, Indonesia. Latitude : -7.939051500000001. Longitude : 110.3752224', 'linux96mint@gmail.com', '085346454645', 'Kebaikan.png', 'SK_3', 3, '08437216', 'fRxmoX-C7Lk:APA91bHAClRtnOqdEJcpEU3fALgduJTFSMT2VUsiBlEjNQm_RAdIPy8-0Y7jrj5Fu3gYOLLEtD_ZJ6ZqOo4pu5TqSHophzdfwL60RF_-6CtU5GduxYk11mkU6Jy41bAtEaXBLP8sV3FT'),
(4, 3568756525656888, 'Santoso', 'Alamat : Mojolegi RT 05, Mojo Legi, Karangtengah, Imogiri, Bantul Regency, Special Region of Yogyakarta 55782, Indonesia. Latitude : -7.9367118. Longitude : 110.3944337', 'linux96mint@gmail.com', '085576495469', 'bamboo_forest_kyoto_japan-wallpaper-720x1280.jpg', 'A1_3', 4, '19083526', 'fRxmoX-C7Lk:APA91bHAClRtnOqdEJcpEU3fALgduJTFSMT2VUsiBlEjNQm_RAdIPy8-0Y7jrj5Fu3gYOLLEtD_ZJ6ZqOo4pu5TqSHophzdfwL60RF_-6CtU5GduxYk11mkU6Jy41bAtEaXBLP8sV3FT'),
(5, 8685885685685588, 'indra', 'Alamat : Unnamed Road, Area Kebun, Girirejo, Kec. Imogiri, Bantul, Daerah Istimewa Yogyakarta 55782, Indonesia. Latitude : -7.933154099999999. Longitude : 110.3864899', 'indrayatini@akakom.ac.id', '088856568588', 'bamboo_forest_kyoto_japan-wallpaper-720x1280.jpg', 'A1_1', NULL, NULL, 'fRxmoX-C7Lk:APA91bHAClRtnOqdEJcpEU3fALgduJTFSMT2VUsiBlEjNQm_RAdIPy8-0Y7jrj5Fu3gYOLLEtD_ZJ6ZqOo4pu5TqSHophzdfwL60RF_-6CtU5GduxYk11mkU6Jy41bAtEaXBLP8sV3FT');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(5) NOT NULL,
  `keluhan` text NOT NULL,
  `tanggapan` text,
  `no_pelanggan` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `keluhan`, `tanggapan`, `no_pelanggan`) VALUES
(1, 'air tidak mengalir dari pagi tadi', 'Kami akan segera mengirimkan tim ke alamat anda', 1),
(2, 'air tidak mengalir', 'Kami akan segera mengirimkan tim lapangan', 2),
(3, 'Air tidak mengalir', 'Kami akan segera mengirimkan tim lapangan', 3),
(4, 'air tidak mengalir', 'Kami akan segera mengirimkan tim lapangan', 4),
(5, 'air tidak jernih', 'Kami akan mengirimkan tim ake alamat anda', 4),
(6, 'test', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tagihan_air`
--

CREATE TABLE `tagihan_air` (
  `no_tagihan` int(5) NOT NULL,
  `no_pelanggan` int(11) NOT NULL,
  `denda` int(8) DEFAULT NULL,
  `bulan_bayar` char(8) NOT NULL,
  `biaya_air` float NOT NULL,
  `biaya_segel` int(8) DEFAULT NULL,
  `std_awal` float NOT NULL,
  `std_akhir` float NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `angs_air` int(8) DEFAULT NULL,
  `angs_non_air` int(8) DEFAULT NULL,
  `total_tagihan` int(8) NOT NULL,
  `status_bayar` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tagihan_air`
--

INSERT INTO `tagihan_air` (`no_tagihan`, `no_pelanggan`, `denda`, `bulan_bayar`, `biaya_air`, `biaya_segel`, `std_awal`, `std_akhir`, `tgl_bayar`, `angs_air`, `angs_non_air`, `total_tagihan`, `status_bayar`) VALUES
(1, 1, 5000, 'January', 20000, 0, 2000, 3000, NULL, 0, 0, 25000, 'belum'),
(2, 2, 5000, 'January', 50000, 0, 2000, 3000, '2020-01-23', 0, 0, 55000, 'sudah'),
(3, 3, 5000, 'January', 20000, 0, 2000, 3000, '2020-01-24', 0, 0, 25000, 'sudah'),
(4, 4, 5000, 'January', 20000, 0, 2000, 3000, NULL, 0, 0, 25000, 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `tarif_air`
--

CREATE TABLE `tarif_air` (
  `id_tarif_air` char(5) NOT NULL,
  `tarif` int(5) NOT NULL,
  `ket_tarif` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarif_air`
--

INSERT INTO `tarif_air` (`id_tarif_air`, `tarif`, `ket_tarif`) VALUES
('A1_1', 2750, 'Rumah Tipe A1(0-10 m3)'),
('A1_2', 3900, 'Rumah Tipe A1(11-20 m3)'),
('A1_3', 4400, 'Rumah Tipe A1(>20 m3)'),
('A2_1', 4500, 'Rumah Tipe A2(0-10 m3)'),
('A2_2', 4800, 'Rumah Tipe A2(11-20 m3)'),
('A2_3', 5400, 'Rumah Tipe A2(>20 m3)'),
('SK_1', 2500, 'Sosial Khusus(0-10 m3)'),
('SK_2', 3400, 'Sosial Khusus(11-20 m3)'),
('SK_3', 4100, 'Sosial Khusus(>20 m3)'),
('SU_1', 2200, 'Sosial Umum(0-10 m3)'),
('SU_2', 2800, 'Sosial Umum(11-20 m3)'),
('SU_3', 3200, 'Sosial Umum(>20 m3)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `masalah_air`
--
ALTER TABLE `masalah_air`
  ADD PRIMARY KEY (`no_info`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`no_daftar`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `tagihan_air`
--
ALTER TABLE `tagihan_air`
  ADD PRIMARY KEY (`no_tagihan`);

--
-- Indexes for table `tarif_air`
--
ALTER TABLE `tarif_air`
  ADD PRIMARY KEY (`id_tarif_air`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masalah_air`
--
ALTER TABLE `masalah_air`
  MODIFY `no_info` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tagihan_air`
--
ALTER TABLE `tagihan_air`
  MODIFY `no_tagihan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
