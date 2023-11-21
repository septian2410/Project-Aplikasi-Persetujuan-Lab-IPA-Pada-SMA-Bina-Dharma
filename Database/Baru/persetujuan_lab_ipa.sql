-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2022 at 07:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `persetujuan_lab_ipa`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(100) NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `penyimpanan` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nm_barang`, `jenis`, `tgl_input`, `jumlah`, `penyimpanan`, `status`) VALUES
('BR0001', 'Gelas Kimia', 'Alat Lab', '2022-08-05', '10', 'Lemari Rak', 'Aman'),
('BR00010', 'Spritus', 'Bahan Lab', '2022-08-07', '20 ml', 'Lemari Rak Kimia', 'Berbahaya'),
('BR00011', 'Beban Bercelah', 'Alat Lab', '2022-08-08', '10', 'Lemari Rak Fisika', 'Aman'),
('BR00012', 'Tang Gelas Kimia', 'Alat Lab', '2022-08-08', '6', 'Lemari Rak', 'Aman'),
('BR00013', 'Corong', 'Alat Lab', '2022-08-08', '8', 'Lemari Rak', 'Aman'),
('BR00014', 'Asam Sulfat', 'Bahan Lab', '2022-08-08', '20 ml', 'Lemari Bahan Kimia', 'Berbahaya'),
('BR00015', 'Metanol', 'Bahan Lab', '2022-08-08', '20 ml', 'Lemari Bahan Kimia', 'Berbahaya'),
('BR00016', 'Formalin', 'Bahan Lab', '2022-08-08', '20 ml', 'Lemari Bahan Kimia', 'Sangat Berbahaya'),
('BR00017', '(CH3)2CO / Acetone', 'Bahan Lab', '2022-08-08', '20 ml', 'Lemari Bahan Kimia', 'Sangat Berbahaya'),
('BR00018', 'Methyelen Biru ', 'Bahan Lab', '2022-08-08', '20 ml', 'Lemari Rak', 'Aman'),
('BR00019', 'Natrium Sulfat', 'Bahan Lab', '2022-08-08', '20 ml', 'Lemari Bahan Kimia', 'Berbahaya'),
('BR0002', 'Tabung Reaksi', 'Alat Lab', '2022-08-05', '10', 'Lemari Rak', 'Aman'),
('BR00020', 'Amperemeter DC ', 'Alat Lab', '2022-08-08', '5', 'Lemari Alat Fisika', 'Aman'),
('BR00021', 'Lensa Cembung', 'Alat Lab', '2022-08-08', '8', 'Lemari Alat Fisika', 'Aman'),
('BR00022', 'Power Supply AC / DC', 'Alat Lab', '2022-08-08', '3', 'Lemari Alat Fisika', 'Aman'),
('BR00023', 'Jangka Sorong', 'Alat Lab', '2022-08-08', '6', 'Lemari Alat Fisika', 'Aman'),
('BR00024', 'Mistar ', 'Alat Lab', '2022-08-08', '5', 'Lemari Alat Fisika', 'Aman'),
('BR00025', 'Pinset', 'Alat Lab', '2022-08-08', '5', 'Kotak Anak Timbangan', 'Aman'),
('BR0003', 'Labu erlenmeyer', 'Alat Lab', '2022-08-05', '15', 'Lemari Rak', 'Aman'),
('BR0004', 'Pipet Tetes', 'Alat Lab', '2022-08-05', '10', 'Rak Pipet', 'Aman'),
('BR0005', 'Beban gantung', 'Alat Lab', '2022-08-05', '10', 'Lemari Rak Fisika', 'Aman'),
('BR0006', 'Pembakar Spritus', 'Alat Lab', '2022-08-07', '5', 'Lemari Rak', 'Aman'),
('BR0007', 'Mikrometer Sekrup', 'Alat Lab', '2022-08-07', '9', 'Lemari Rak Fisika', 'Aman'),
('BR0008', 'Mikroskop', 'Alat Lab', '2022-08-07', '9', 'Lemari Rak', 'Aman'),
('BR0009', 'Batang Statif Beban', 'Alat Lab', '2022-08-07', '10', 'Lemari Rak Fisika', 'Aman');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` varchar(100) NOT NULL,
  `nm_guru` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pelaksanaan` date NOT NULL,
  `waktu` varchar(100) NOT NULL,
  `status_permohonan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `nm_guru`, `kelas`, `kegiatan`, `tgl_peminjaman`, `tgl_pelaksanaan`, `waktu`, `status_permohonan`) VALUES
('id0001', 'Ahmad Aldi', '10 MIPA 1', 'Fisika', '2022-08-01', '2022-08-08', '08.00 sd 10.00', 'Belum disetujui'),
('id00010', 'Ahmad Aldi', '10 MIPA 2', 'Fisika', '2022-08-17', '2022-08-24', '08.00 sd 10.00', 'Belum disetujui'),
('id00011', 'Widji Lestari', '10 MIPA 1', 'Kimia ', '2022-08-17', '2022-08-24', '10.00 sd 12.00', 'Belum disetujui'),
('id00012', 'Sri Supardi Wibowo', '11 MIPA 2', 'Biologi', '2022-08-19', '2022-08-26', '10.00 sd 12.00', 'Belum disetujui'),
('id0002', 'Ernasari Batubara', '10 MIPA 2', 'Kimia ', '2022-08-01', '2022-08-08', '10.00 sd 12.00', 'Belum disetujui'),
('id0003', 'Dinda Yumarita Sari', '10 MIPA 3', 'Biologi', '2022-08-03', '2022-08-10', '08.00 sd 10.00', 'Belum disetujui'),
('id0004', 'Widji Lestari', '11 MIPA 1', 'Kimia ', '2022-08-03', '2022-08-10', '10.00 sd 12.00', 'Belum disetujui'),
('id0005', 'Sri Suparwi', '11 MIPA 2', 'Fisika', '2022-08-05', '2022-08-12', '08.00 sd 10.00', 'Belum disetujui'),
('id0006', 'Tri Winarni', '11 MIPA 3', 'Biologi', '2022-08-05', '2022-07-15', '10.00 sd 12.00', 'Belum disetujui'),
('id0007', 'Tri Winarni', '12 MIPA 1', 'Biologi', '2022-08-15', '2022-08-22', '08.00 sd 10.00', 'Belum disetujui'),
('id0008', 'Ahmad Aldi', '12 MIPA 2', 'Fisika', '2022-08-15', '2022-08-22', '10.00 sd 12.00', 'Belum disetujui'),
('id0009', 'Ernasari Batubara', '12 MIPA 3', 'Kimia ', '2022-08-17', '2022-08-24', '08.00 sd 10.00', 'Belum disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `penggunaan`
--

CREATE TABLE `penggunaan` (
  `id_penggunaan` int(11) NOT NULL,
  `id_peminjaman` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `tgl_pelaksanaan` date NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `status_barang` varchar(100) NOT NULL,
  `staff` varchar(100) NOT NULL,
  `status_permohonan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penggunaan`
--

INSERT INTO `penggunaan` (`id_penggunaan`, `id_peminjaman`, `kelas`, `kegiatan`, `tgl_pelaksanaan`, `nm_barang`, `jumlah`, `jenis`, `status_barang`, `staff`, `status_permohonan`) VALUES
(15, 'id0001', '10 MIPA 1', 'Fisika', '2022-08-08', 'Batang Statif Beban', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(16, 'id0001', '10 MIPA 1', 'Fisika', '2022-08-08', 'Beban Bercelah', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(17, 'id0001', '10 MIPA 1', 'Fisika', '2022-08-08', 'Beban gantung', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(18, 'id0001', '10 MIPA 1', 'Fisika', '2022-08-08', 'Mikrometer Sekrup', '5', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(19, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Gelas Kimia', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(20, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Pembakar Spritus', '5', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(21, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Spritus', '20 ml', 'Bahan Lab', 'Berbahaya', 'Tidak diperlukan', 'Belum disetujui'),
(22, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Tang Gelas Kimia', '6', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(23, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Tabung Reaksi', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(24, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Pipet Tetes', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(25, 'id0003', '10 MIPA 3', 'Biologi', '2022-08-10', 'Mikroskop', '9', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(26, 'id0003', '10 MIPA 3', 'Biologi', '2022-08-10', 'Pipet Tetes', '6', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(27, 'id0003', '10 MIPA 3', 'Biologi', '2022-08-10', 'Pinset', '5', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(28, 'id0003', '10 MIPA 3', 'Biologi', '2022-08-10', 'Asam Sulfat', '20 ml', 'Bahan Lab', 'Berbahaya', 'Diperlukan', 'Belum disetujui'),
(29, 'id0003', '10 MIPA 3', 'Biologi', '2022-08-10', 'Labu erlenmeyer', '15', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `permintaan`
--

CREATE TABLE `permintaan` (
  `id_permintaan` varchar(100) NOT NULL,
  `id_peminjaman` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `tgl_permintaan` date NOT NULL,
  `kebutuhan` varchar(100) NOT NULL,
  `status_permohonan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permintaan`
--

INSERT INTO `permintaan` (`id_permintaan`, `id_peminjaman`, `kelas`, `kegiatan`, `nm_barang`, `jumlah`, `jenis`, `tgl_permintaan`, `kebutuhan`, `status_permohonan`) VALUES
('Req00010', 'id0003', '10 MIPA 3', 'Biologi', 'Buret', '15', 'Alat Lab', '2022-08-10', 'Baru', 'Belum disetujui'),
('Req00011', 'id0002', '10 MIPA 2', 'Kimia ', 'Kertas Lakmus', '50', 'Alat Lab', '2022-08-08', 'Baru', 'Belum disetujui'),
('Req00012', 'id0003', '10 MIPA 3', 'Biologi', 'Penjepit Preparat', '20', 'Alat Lab', '2022-08-10', 'Baru', 'Belum disetujui'),
('Req0002', 'id0001', '10 MIPA 1', 'Fisika', 'Beban gantung', '10', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0003', 'id0001', '10 MIPA 1', 'Fisika', 'Batang Statif Beban', '10', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0004', 'id0002', '10 MIPA 2', 'Kimia ', 'Gelas Kimia', '5', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0005', 'id0002', '10 MIPA 2', 'Kimia ', 'Spritus', '10 ml', 'Bahan Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0006', 'id0002', '10 MIPA 2', 'Kimia ', 'Pembakar Spritus', '2', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0007', 'id0002', '10 MIPA 2', 'Kimia ', 'Pipet Tetes', '5', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0008', 'id0002', '10 MIPA 2', 'Kimia ', 'Tabung Reaksi', '5', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0009', 'id0003', '10 MIPA 3', 'Biologi', 'Pinset', '15', 'Alat Lab', '2022-08-10', 'Tidak Mendadak', 'Belum disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nm_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nm_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Ahmad Aldi', 'Aldi123', '123', 'Guru'),
(2, 'Indri Mahayati', 'Indri456', '456', 'Laboran'),
(3, 'Ernasari Batubara', 'Erna678', '678', 'Kepala Lab'),
(4, 'Ernasari Batubara', 'Erna901', '901', 'Guru'),
(5, 'qwerty', 'user', '123', 'User'),
(6, 'Sri Suparwi', 'Sri990', '990', 'Guru'),
(9, 'Dinda Yumarita Sari', 'Dinda987', '987', 'Guru'),
(10, 'Sri Supardi Wibowo', 'Supardi324', '324', 'Guru'),
(11, 'Widji Lestari', 'Widji323', '323', 'Guru'),
(12, 'Tri Winarni', 'Tri672', '672', 'Guru'),
(16, 'Fitri Nur Shiqa', 'fitri674', '674', 'Laboran'),
(17, 'Rosalina Lyn', 'rosa334', '334', 'Laboran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `penggunaan`
--
ALTER TABLE `penggunaan`
  ADD PRIMARY KEY (`id_penggunaan`);

--
-- Indexes for table `permintaan`
--
ALTER TABLE `permintaan`
  ADD PRIMARY KEY (`id_permintaan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penggunaan`
--
ALTER TABLE `penggunaan`
  MODIFY `id_penggunaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
