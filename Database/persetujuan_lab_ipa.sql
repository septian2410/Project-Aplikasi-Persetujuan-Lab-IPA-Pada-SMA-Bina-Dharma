-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 08:08 AM
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
('BR0001', 'Mikroskop', 'Alat Lab', '2022-07-29', '2', 'Lemari Rak', 'Aman'),
('BR00010', 'Rak Tabung Reaksi', 'Alat Lab', '2022-07-29', '3', 'Lemari Rak', 'Aman'),
('BR00011', 'Labu erlenmeyer', 'Alat Lab', '2022-07-29', '10', 'Lemari Rak', 'Aman'),
('BR00012', 'Corong', 'Alat Lab', '2022-07-29', '8', 'Lemari Rak', 'Aman'),
('BR00013', 'Asam Sulfat', 'Bahan Lab', '2022-07-29', '20 ml', 'Lemari Bahan Kimia', 'Berbahaya'),
('BR00014', 'Metanol', 'Bahan Lab', '2022-07-29', '20 ml', 'Lemari Bahan Kimia', 'Berbahaya'),
('BR00015', 'Formalin', 'Bahan Lab', '2022-07-29', '20 ml', 'Lemari Bahan Kimia', 'Sangat Berbahaya'),
('BR00016', '(CH3)2CO / Acetone', 'Bahan Lab', '2022-07-29', '20 ml', 'Lemari Bahan Kimia', 'Sangat Berbahaya'),
('BR00017', 'Spritus', 'Bahan Lab', '2022-07-29', '20 ml', 'Lemari Bahan Kimia', 'Berbahaya'),
('BR00018', 'Methyelen Biru', 'Bahan Lab', '2022-07-29', '20 ml', 'Lemari Rak', 'Aman'),
('BR00019', 'Natrium Sulfat', 'Bahan Lab', '2022-07-29', ' 20 ml', 'Lemari Bahan Kimia', 'Berbahaya'),
('BR0002', 'Pipet', 'Alat Lab', '2022-07-29', '5', 'Rak Pipet', 'Aman'),
('BR00020', 'Amperemeter DC', 'Alat Lab', '2022-07-29', '5', ' Lemari Alat Fisika', 'Aman'),
('BR00021', 'Beban gantung ', 'Alat Lab', '2022-07-29', '10', 'Lemari Alat Fisika', 'Aman'),
('BR00022', 'Batang Statif Beban', 'Alat Lab', '2022-07-29', '5', 'Batang Statif Beban', 'Aman'),
('BR00023', 'Lensa Cembung ', 'Alat Lab', '2022-07-29', '8', 'Lemari Alat Fisika', 'Aman'),
('BR00024', 'Power Supply AC/DC', 'Alat Lab', '2022-07-29', '3', 'Lemari Alat Fisika', 'Aman'),
('BR00025', 'Beban Bercelah ', 'Alat Lab', '2022-07-29', '15', 'Lemari Alat Fisika', 'Aman'),
('BR00026', 'Jangka Sorong', 'Alat Lab', '2022-07-29', '6', 'Lemari Alat Fisika', 'Aman'),
('BR00027', 'Mikrometer Sekrup', 'Alat Lab', '2022-07-29', '10', 'Lemari Alat Fisika', 'Aman'),
('BR00028', 'Mistar', 'Alat Lab', '2022-07-29', '5', 'Lemari Alat Fisika', 'Aman'),
('BR0003', 'Tabung Reaksi', 'Alat Lab', '2022-07-29', '16', 'Lemari Rak', 'Aman'),
('BR0004', 'H2SO4 / Sulfur acid', 'Bahan Lab', '2022-07-29', '20 ml', 'Lemari Bahan Kimia', 'Berbahaya'),
('BR0005', 'Gelas Kimia', 'Alat Lab', '2022-07-29', '10', 'Lemari Rak', 'Aman'),
('BR0006', 'Pipet gondok', 'Alat Lab', '2022-07-29', '5', 'Rak Pipet', 'Aman'),
('BR0007', 'Pembakar Spritus ', 'Alat Lab', '2022-07-29', '10', 'Lemari Rak', 'Aman'),
('BR0008', 'Pinset', 'Alat Lab', '2022-07-29', '5', 'Kotak Anak Timbangan', 'Aman'),
('BR0009', 'Tang Gelas Kimia', 'Alat Lab', '2022-07-29', '5', 'Lemari Rak', 'Aman');

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
('id0001', 'Puji Astuti', '10 MIPA 1', 'Biologi', '2022-08-01', '2022-08-08', '08.00 sd 10.00', 'Belum disetujui'),
('id00010', 'Puji Astuti', '10 MIPA 2', 'Biologi', '2022-08-17', '2022-08-24', '08.00 sd 10.00', 'Belum disetujui'),
('id00011', 'Aqila Asifa', '10 MIPA 1', 'Kimia ', '2022-08-17', '2022-08-24', '10.00 sd 12.00', 'Belum disetujui'),
('id00012', 'Annisa Nur Cahya', '11 MIPA 2', 'Kimia ', '2022-08-19', '2022-08-26', '10.00 sd 12.00', 'Belum disetujui'),
('id0002', 'Aqila Asifa', '10 MIPA 2', 'Kimia ', '2022-08-01', '2022-08-08', '10.00 sd 12.00', 'Belum disetujui'),
('id0003', 'Muhammad Fajri', '10 MIPA 3', 'Fisika', '2022-08-03', '2022-08-10', '08.00 sd 10.00', 'Belum disetujui'),
('id0004', 'Annisa Nur Cahya', '11 MIPA 1', 'Kimia ', '2022-08-03', '2022-08-10', '10.00 sd 12.00', 'Belum disetujui'),
('id0005', 'Verry Arsyah', '11 MIPA 2', 'Biologi', '2022-08-05', '2022-08-12', '08.00 sd 10.00', 'Belum disetujui'),
('id0006', 'Bintang Qila', '11 MIPA 3', 'Fisika', '2022-08-05', '2022-07-15', '10.00 sd 12.00', 'Belum disetujui'),
('id0007', 'Riko Ferdian', '12 MIPA 1', 'Biologi', '2022-08-15', '2022-08-22', '08.00 sd 10.00', 'Belum disetujui'),
('id0008', 'Danny Aditya', '12 MIPA 2', 'Fisika', '2022-08-15', '2022-08-22', '10.00 sd 12.00', 'Belum disetujui'),
('id0009', 'Sinta Aprilian', '12 MIPA 3', 'Kimia ', '2022-08-17', '2022-08-24', '08.00 sd 10.00', 'Belum disetujui');

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
(1, 'id0001', '10 MIPA 1', 'Biologi', '2022-08-08', 'Mikroskop', '2', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(2, 'id0001', '10 MIPA 1', 'Biologi', '2022-08-08', 'Pinset', '5', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(3, 'id0001', '10 MIPA 1', 'Biologi', '2022-08-08', 'Rak Tabung Reaksi', '3', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(4, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Gelas Kimia', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(5, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Pembakar Spritus ', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(6, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Spritus', '20 ml', 'Bahan Lab', 'Berbahaya', 'Tidak diperlukan', 'Belum disetujui'),
(7, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Corong', '8', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(8, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Pipet', '5', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(9, 'id0002', '10 MIPA 2', 'Kimia ', '2022-08-08', 'Formalin', '20 ml', 'Bahan Lab', 'Sangat Berbahaya', 'Diperlukan', 'Belum disetujui'),
(10, 'id0003', '10 MIPA 3', 'Fisika', '2022-08-10', 'Mistar', '5', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(11, 'id0003', '10 MIPA 3', 'Fisika', '2022-08-10', 'Jangka Sorong', '6', 'Alat Lab', 'Aman', '~Tambahkan staff pendamping', 'Belum disetujui'),
(12, 'id0003', '10 MIPA 3', 'Fisika', '2022-08-10', 'Beban Bercelah ', '15', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(13, 'id0003', '10 MIPA 3', 'Fisika', '2022-08-10', 'Beban gantung ', '10', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui'),
(14, 'id0003', '10 MIPA 3', 'Fisika', '2022-08-10', 'Batang Statif Beban', '5', 'Alat Lab', 'Aman', 'Tidak diperlukan', 'Belum disetujui');

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
('Req0001', 'id0001', '10 MIPA 1', 'Biologi', 'Mikroskop', '3', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req00010', 'id0003', '10 MIPA 3', 'Fisika', 'Mistar', '15', 'Alat Lab', '2022-08-10', 'Tidak Mendadak', 'Belum disetujui'),
('Req00011', 'id0003', '10 MIPA 3', 'Fisika', 'Jangka Sorong', '20', 'Alat Lab', '2022-08-10', 'Tidak Mendadak', 'Belum disetujui'),
('Req00012', 'id0003', '10 MIPA 3', 'Fisika', 'Beban Bercelah ', '35', 'Alat Lab', '2022-08-10', 'Tidak Mendadak', 'Belum disetujui'),
('Req00013', 'id0003', '10 MIPA 3', 'Fisika', 'Batang Statif Beban', '15', 'Alat Lab', '2022-08-10', 'Tidak Mendadak', 'Belum disetujui'),
('Req0002', 'id0001', '10 MIPA 1', 'Biologi', 'Pinset', '5', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0003', 'id0001', '10 MIPA 1', 'Biologi', 'Rak Tabung Reaksi', '3', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0004', 'id0002', '10 MIPA 2', 'Kimia ', 'Gelas Kimia', '10', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0005', 'id0002', '10 MIPA 2', 'Kimia ', 'Pembakar Spritus ', '10', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0006', 'id0002', '10 MIPA 2', 'Kimia ', 'Spritus', '30 ml', 'Bahan Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0007', 'id0002', '10 MIPA 2', 'Kimia ', 'Corong', '10', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0008', 'id0002', '10 MIPA 2', 'Kimia ', 'Pinset', '15', 'Alat Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui'),
('Req0009', 'id0002', '10 MIPA 2', 'Kimia ', 'Formalin', '30 ml', 'Bahan Lab', '2022-08-08', 'Tidak Mendadak', 'Belum disetujui');

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
(1, 'Puji Astuti', 'puji123', '123', 'Guru'),
(2, 'Pandu Septiandito', 'pandu456', '456', 'Laboran'),
(3, 'Sinta Shafira', 'sinta678', '678', 'Kepala Lab'),
(4, 'Aqila Asifa ', 'Aqila901', '901', 'Guru'),
(5, 'qwerty', 'user', '123', 'User'),
(6, 'Muhammad Fajri', 'fajri990', '990', 'Guru'),
(9, 'Annisa Nur Cahya', 'nisa987', '987', 'Guru'),
(10, 'Verry Arsyah', 'verry324', '324', 'Guru'),
(11, 'Bintang qila', 'qila323', '323', 'Guru'),
(12, 'Riko Ferdian', 'riko672', '672', 'Guru'),
(13, 'Danny Aditya', 'danny453', '453', 'Guru'),
(14, 'Sinta Aprilian', 'sinta767', '767', 'Guru'),
(15, 'Husna Nur Aini', 'husna656', '656', 'Guru'),
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
  MODIFY `id_penggunaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
