-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2017 at 11:01 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jiep_meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE IF NOT EXISTS `divisions` (
  `id_divisions` int(3) NOT NULL AUTO_INCREMENT,
  `nama_divisions` mediumtext NOT NULL,
  PRIMARY KEY (`id_divisions`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id_divisions`, `nama_divisions`) VALUES
(1, 'direksi'),
(3, 'MBD'),
(4, 'EM'),
(5, 'PM'),
(6, 'OD'),
(7, 'FA'),
(8, 'ITGA'),
(9, 'Corsec'),
(10, 'IA'),
(11, 'PMU FM'),
(12, 'PMU Gate'),
(13, 'PMU Logistik'),
(14, 'Tim Ramadhan');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id_locations` int(2) NOT NULL AUTO_INCREMENT,
  `nama_locations` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_locations`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id_locations`, `nama_locations`) VALUES
(5, 'Trembesi 1'),
(6, 'Trembesi 2'),
(7, 'Mahoni'),
(8, 'Meeting Room 1 '),
(9, 'Meeting Room 2 '),
(10, 'Meeting Room 3 '),
(11, 'Ruang Tanjung'),
(12, 'Ruang Customer Focus'),
(13, 'Auditorium Graha Dayaguna'),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL),
(18, 'Ruang VIP');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE IF NOT EXISTS `meetings` (
  `id_meetings` int(11) NOT NULL AUTO_INCREMENT,
  `perihal_meetings` mediumtext,
  `pengguna_meetings` int(3) NOT NULL,
  `lokasi_meetings` int(2) DEFAULT NULL,
  `tanggal_meetings` date DEFAULT NULL,
  `jam_meetings` time DEFAULT NULL,
  `jam_selesai_meetings` time NOT NULL,
  `jumlah_peserta_meetings` int(11) NOT NULL,
  `pic_meetings` varchar(50) NOT NULL,
  PRIMARY KEY (`id_meetings`),
  KEY `fk_lokasi_meetings_idx` (`lokasi_meetings`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=262 ;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id_meetings`, `perihal_meetings`, `pengguna_meetings`, `lokasi_meetings`, `tanggal_meetings`, `jam_meetings`, `jam_selesai_meetings`, `jumlah_peserta_meetings`, `pic_meetings`) VALUES
(9, 'Pembahasan data aset non moveable', 8, 5, '2017-04-20', '10:00:00', '00:00:00', 5, 'IT'),
(10, 'Tindak lanjut rekomendasi BPK RI', 10, 11, '2017-04-20', '10:00:00', '00:00:00', 6, 'Savira'),
(11, 'Rapat GIS', 2, 8, '2017-04-18', '13:00:00', '00:00:00', 6, 'MBD dan IT'),
(12, 'Rapat Jiep food center', 2, 8, '2017-04-18', '14:00:00', '00:00:00', 6, 'MBD'),
(13, 'Rapat GIS', 3, 8, '2017-04-18', '13:00:00', '00:00:00', 6, 'MBD dan IT'),
(14, 'Rapat JIEP food center', 3, 8, '2017-04-18', '14:00:00', '00:00:00', 15, 'MBD'),
(15, 'Rapat penjelasan teknis RKL RPL', 8, 8, '2017-04-18', '09:30:00', '00:00:00', 10, 'Procurement'),
(17, 'Penyusunan dashboard billing system', 8, 10, '2017-04-20', '15:00:00', '00:00:00', 9, 'IT'),
(18, 'Sosialisasi CMS', 8, 13, '2017-04-21', '14:00:00', '00:00:00', 15, 'IT'),
(19, 'Rapat dengan PT.Astra Honda Motor', 1, 7, '2017-04-20', '09:00:00', '00:00:00', 15, 'Direktur Oprasional'),
(20, 'Pembahasan rencana kerja sama dengan Biznet', 8, 10, '2017-04-20', '10:00:00', '00:00:00', 10, 'IT'),
(21, 'Pembahasan target KPI 2017 terkait kecepatan menindaklanjuti keluhan pelanggan', 5, 10, '2017-04-25', '14:00:00', '00:00:00', 8, 'Ibu Santi'),
(22, 'Pembahasan SOP registrasi kartu FOC', 12, 10, '2017-04-25', '09:30:00', '00:00:00', 10, 'PMU GATE'),
(23, 'Rapat dengan BSK', 11, 9, '2017-04-26', '16:00:00', '00:00:00', 10, 'Vannia'),
(24, 'Tindak lanut kerjasama dengan PT.AXI', 8, 8, '0000-00-00', '10:00:00', '00:00:00', 10, 'PMU F&M'),
(25, 'Rapat JIEP food center', 3, 10, '2017-04-21', '14:00:00', '00:00:00', 12, 'MBD'),
(26, 'Rapat penjelasan teknis lelang', 8, 8, '2017-04-21', '14:00:00', '00:00:00', 15, 'Procurement'),
(27, 'Rapat ISO', 6, 9, '2017-04-25', '09:00:00', '00:00:00', 10, 'Defi'),
(28, 'Rapat Direksi', 1, 8, '2017-04-25', '09:22:00', '00:00:00', 8, 'Ridwan'),
(29, 'Lap.akhir survey tenant lahan bersama EM', 3, 8, '2017-04-26', '10:00:00', '00:00:00', 15, 'Ajo'),
(30, 'Relokasi cabang BRI bersama Bank BRI', 3, 8, '2017-04-27', '15:00:00', '00:00:00', 15, 'Ajo'),
(31, 'Rapat pembangunan JIEP food center', 3, 8, '2017-04-25', '14:00:00', '00:00:00', 12, 'Arinta'),
(32, 'Rapat ISO', 6, 9, '2017-04-26', '09:00:00', '00:00:00', 6, 'Defi'),
(33, 'Rapat BUMN hadir untuk Negeri', 9, 7, '2017-04-25', '14:00:00', '00:00:00', 20, 'Nurul'),
(34, 'Rapat kebersihan PT.MEGA', 4, 8, '2017-04-25', '11:00:00', '00:00:00', 15, 'Trihadi'),
(35, 'Rapat pembahasan kajian logistik', 3, 10, '2017-04-26', '08:05:00', '00:00:00', 15, 'Arinta'),
(36, 'Rapat lelang pembukaan dokumen pembuatan dan pencetakan JIEPmagz th 2017', 8, 10, '2017-04-26', '14:00:00', '00:00:00', 15, 'Procurement'),
(37, 'Rapat penjelasan teknis pembangunan gedung Financial Center', 8, 9, '2017-04-27', '09:30:00', '00:00:00', 15, 'Procurement'),
(38, 'Rapat pembukaan dokumen RKL-RPL', 8, 10, '2017-04-26', '15:30:00', '00:00:00', 15, 'Procurement'),
(39, 'Pertemuan dengan KIEC', 9, 13, '2017-04-26', '09:00:00', '00:00:00', 10, 'Corcom'),
(40, 'Rencana kerjasama dengan Astragraphia', 11, 10, '2017-04-26', '10:30:00', '00:00:00', 5, 'Rika'),
(41, 'Kajian Oprasional Gudang Tipe D Lt.2', 3, 8, '2017-04-27', '11:00:00', '00:00:00', 7, 'Nirmala'),
(42, 'Sosialisasi Penyusunan Lap.Implementasi UKL-UPL', 4, 13, '2017-04-28', '09:00:00', '00:00:00', 200, 'Devi'),
(43, 'Rapat ISO', 6, 9, '2017-04-27', '14:00:00', '00:00:00', 6, 'Defi'),
(45, 'Meeting lanjutan kerjasama dengan Astragraphia', 11, 9, '2017-04-28', '10:00:00', '00:00:00', 5, 'Rika'),
(46, 'Rapat Logistik', 5, 9, '2017-04-28', '14:30:00', '00:00:00', 10, 'Ita'),
(47, 'Rapat lelang pembukaan dokumen', 8, 8, '2017-05-02', '14:00:00', '00:00:00', 15, 'Procurement'),
(48, 'Rapat RKO', 1, 13, '2017-05-08', '10:00:00', '00:00:00', 15, 'Nanda'),
(49, 'Kunjungan OVNI', 1, 13, '2017-05-02', '10:00:00', '00:00:00', 20, 'DIROP'),
(50, 'Rapat bersama MM', 12, 9, '2017-05-02', '10:00:00', '00:00:00', 10, 'Riris'),
(51, 'Kordinasi bersama PT.Mega', 4, 8, '2017-05-02', '09:00:00', '00:00:00', 10, 'Dana'),
(52, 'Rapat ISO', 6, 10, '2017-05-02', '09:00:00', '00:00:00', 10, 'Defi'),
(53, 'Rapat CMS', 7, 7, '2017-05-02', '10:00:00', '00:00:00', 10, 'Tamil'),
(54, 'Rapat terkait profiling lahan', 3, 10, '2017-05-03', '10:00:00', '00:00:00', 10, 'Ajo'),
(55, 'Rapat dengan Bank Niaga', 3, 10, '2017-05-03', '14:00:00', '00:00:00', 10, 'Ajo'),
(56, 'Rapat Koordinasi', 3, 8, '2017-05-03', '09:00:00', '00:00:00', 10, 'Ajo'),
(57, 'Rapat pembangunan JIEP food center', 3, 10, '2017-05-02', '14:00:00', '00:00:00', 12, 'Arinta'),
(58, 'Rapat bersama Bank CIMB Niaga', 3, 8, '2017-05-04', '10:00:00', '00:00:00', 10, 'Ajo'),
(59, 'Rapat ISO', 6, 9, '2017-05-04', '09:00:00', '00:00:00', 10, 'Defi'),
(60, 'rapat profilling lahan', 3, 10, '2017-05-05', '10:00:00', '00:00:00', 10, 'Ajo'),
(61, 'Rapat verifikasi dan pengesahan data untuk database tenant', 1, 7, '2017-05-04', '14:00:00', '00:00:00', 10, 'Dirkeu'),
(63, 'Evaluasi CDP', 6, 13, '2017-05-05', '10:00:00', '00:00:00', 15, 'Pak Oding'),
(64, 'Rapat GIS', 3, 8, '2017-05-05', '10:00:00', '00:00:00', 10, 'Arinta'),
(65, 'Rapat perpanjangan SHGB dengan PT.Gramedia', 4, 8, '2017-05-08', '15:00:00', '00:00:00', 6, 'CS'),
(66, 'Rapat ISO', 6, 9, '2017-05-09', '09:00:00', '00:00:00', 12, 'Ridwan'),
(68, 'rapat profilling lahan', 3, 10, '2017-05-08', '10:00:00', '00:00:00', 10, 'Ajo'),
(70, 'rapat profilling lahan', 3, 10, '2017-05-09', '10:00:00', '00:00:00', 10, 'Ajo'),
(71, 'rapat profilling lahan', 3, 10, '2017-05-10', '10:00:00', '00:00:00', 10, 'Ajo'),
(72, 'Presentasi lahan ', 3, 8, '2017-05-09', '11:00:00', '00:00:00', 10, 'Ajo'),
(73, 'Pembahasan pembangunan JIEP Food Center', 3, 8, '2017-05-09', '14:00:00', '00:00:00', 10, 'Ajo'),
(74, 'Konsinyering P3BJ', 1, 7, '2017-05-09', '17:00:00', '00:00:00', 9, 'Dirkeu'),
(75, 'Kick of meeting bersama PT.Andromega', 4, 8, '2017-05-10', '15:00:00', '00:00:00', 10, 'Devi'),
(76, 'Rapat ISO', 6, 9, '2017-05-10', '10:00:00', '00:00:00', 12, 'Defi'),
(77, 'Tindak lanjut atas rekomendasi hasil pemeriksaan BPK ', 10, 11, '2017-05-10', '10:00:00', '00:00:00', 8, 'Savira'),
(78, 'Pelatihan/Workshop bersama PT.Bina Potensial Indonesia', 6, 13, '2017-05-12', '08:00:00', '00:00:00', 15, 'Ridwan'),
(79, 'Pelatihan/Workshop bersama PT.Bina Potensial Indonesia', 6, 13, '2017-05-13', '08:00:00', '00:00:00', 15, 'Ridwan'),
(80, 'Rapat Financial Center', 3, 8, '2017-05-12', '09:00:00', '00:00:00', 12, 'Ajo'),
(81, 'rapat profilling lahan', 3, 9, '2017-05-12', '10:00:00', '00:00:00', 10, 'Ajo'),
(82, 'Rapat Lelang', 8, 10, '2017-05-12', '10:00:00', '00:00:00', 10, 'Procurement'),
(83, 'Pemaparan Smart estate oleh Telkom', 3, 13, '2017-05-16', '14:00:00', '00:00:00', 15, 'Vannia'),
(84, 'Rapat penjelasan teknis tambahan pembangunan financial center', 8, 8, '2017-05-15', '10:00:00', '00:00:00', 20, 'Procurement'),
(85, 'Rapat ISO', 6, 9, '2017-05-15', '10:00:00', '00:00:00', 10, 'Defi'),
(86, 'Rapat ISO', 6, 9, '2017-05-16', '10:00:00', '00:00:00', 10, 'Defi'),
(87, 'Rapat pembahasan Financial Center dengan vendor', 3, 10, '2017-05-15', '10:00:00', '00:00:00', 5, 'Ajo'),
(88, 'Rapat dengan DAMRI', 3, 6, '2017-05-15', '16:00:00', '00:00:00', 8, 'Ajo'),
(90, 'Rapat penjelasan teknis tambahan pembangunan financial center', 8, 8, '2017-05-15', '14:00:00', '00:00:00', 20, 'Procurement'),
(91, 'Rapat JIEP food center', 3, 10, '2017-05-16', '14:00:00', '00:00:00', 10, 'Arinta'),
(92, 'Pertemuan lanjutan dengan PT.Astra Honda Motor', 4, 8, '2017-05-22', '14:00:00', '00:00:00', 10, 'Devi'),
(93, 'Rapat dengan PT.Indo Aero', 5, 10, '2017-05-17', '16:00:00', '00:00:00', 7, 'Novi'),
(94, 'Rapat ISO', 6, 9, '2017-05-17', '09:00:00', '00:00:00', 12, 'Defi'),
(95, 'Pertemuan dengan PT.Indonesia Steel Tube Works', 1, 10, '2017-05-17', '10:00:00', '00:00:00', 15, 'Dirop'),
(96, 'Pertemuan dengan ABUJAPI', 4, 10, '2017-05-26', '09:00:00', '11:00:00', 5, 'Novi'),
(97, 'Presentasi laporan akhir pekerjaan profilling pengguna lahan', 3, 13, '2017-05-17', '10:00:00', '00:00:00', 30, 'Ajo'),
(98, 'Konsultan training', 3, 10, '2017-05-16', '15:30:00', '00:00:00', 8, 'Ajo'),
(99, 'FGD Perluasan Utara bersama Lawyer ING&Partners', 4, 8, '2017-05-22', '10:00:00', '00:00:00', 10, 'Devi'),
(100, 'HGB HPL PT.Indo Property', 4, 8, '2017-05-18', '10:00:00', '00:00:00', 10, 'Devi'),
(101, 'Rapat persiapan Ramadhan', 14, 8, '2017-05-17', '09:00:00', '00:00:00', 12, 'Vera'),
(102, 'Evaluasi JIEP Health Care Center', 3, 8, '2017-05-24', '15:00:00', '16:00:00', 10, 'Vannia'),
(103, 'Photo Session Annual Report ', 1, 13, '2017-05-18', '14:00:00', '00:00:00', 3, 'Nunung'),
(104, 'Pertemuan dengan Asosiasi Logistik Indonesia', 5, 8, '2017-05-24', '13:00:00', '14:30:00', 15, 'Ita'),
(105, 'Rapat dekom', 1, 9, '2017-05-18', '16:00:00', '00:00:00', 5, 'Dekom'),
(106, 'Rapat Lelang', 8, 10, '2017-05-18', '14:00:00', '00:00:00', 15, 'Procurement'),
(107, 'Kordinasi bersama PT.Mega', 4, 9, '2017-05-18', '14:00:00', '00:00:00', 15, 'Dana'),
(108, 'Rapat Konfirmasi Perencanaan Pembangunan Financial Center', 10, 11, '2017-05-19', '14:00:00', '00:00:00', 10, 'Savira'),
(109, 'Kick of Meeting Pekerjaan Penyusunan Profil Risiko PT.JIEP', 6, 13, '2017-05-24', '09:00:00', '00:00:00', 25, 'Defi'),
(110, 'Konsinyering terkait review struktur organisasi PT.JIEP', 1, 10, '2017-05-18', '18:30:00', '00:00:00', 10, 'Tari'),
(111, 'Rapat perpindahan Customer Focus', 5, 10, '2017-05-18', '17:00:00', '00:00:00', 10, 'CS'),
(112, 'Konsinyering P3BJ', 8, 8, '2017-05-18', '17:00:00', '00:00:00', 10, 'Procurement'),
(113, 'Rapat bersama PT. Sinar Himalaya', 4, 9, '2017-05-19', '14:30:00', '00:00:00', 10, 'Devi'),
(114, 'Rapat SHGB SHPL dengan PT.Cipta Media', 4, 9, '2017-05-24', '09:00:00', '00:00:00', 10, 'Arin'),
(115, 'Rapat penjelasan teknis tambahan Pek Pemb Financial Center', 8, 9, '2017-05-22', '10:00:00', '00:00:00', 10, 'Procurement'),
(116, 'Rapat ISO', 6, 9, '2017-05-23', '09:00:00', '16:00:00', 10, 'OD'),
(117, 'Workshop Audit Internal Sistem Manajemen Mutu ISO', 6, 13, '2017-05-30', '09:00:00', '15:00:00', 15, 'Defi'),
(118, 'Rapat FGD Perluasan Utara', 4, 10, '2017-05-23', '15:00:00', '17:00:00', 10, 'Devi'),
(119, 'Progress Meeting dengan Astragraphia', 11, 8, '0000-00-00', '10:00:00', '11:30:00', 10, 'Rika'),
(120, 'Progress Meeting dengan Astragraphia', 11, 8, '2017-05-30', '10:00:00', '00:00:00', 10, 'Rika'),
(121, 'Rapat bersama PT.Bravo', 4, 8, '2017-05-24', '14:00:00', '15:00:00', 10, 'Devi'),
(122, 'Rapat ISO', 6, 9, '2017-05-24', '13:00:00', '15:00:00', 6, 'Defi'),
(123, 'Pertemuan dengan JD.ID', 5, 8, '2017-05-26', '14:00:00', '16:00:00', 10, 'Pak Andre'),
(124, 'Rapat dengan profiling pengguna lahan', 3, 9, '2017-05-26', '09:00:00', '11:00:00', 12, 'Ajo'),
(125, 'Koordinasi pelaksanaan perawatan dan rehabilitasi gedung Graha Daya Guna', 7, 11, '2017-05-26', '09:30:00', '23:30:00', 10, 'Metha'),
(126, 'Pembahasan tentang room 3D', 3, 8, '2017-05-26', '08:30:00', '10:00:00', 6, 'Ajo'),
(127, 'Rapat Dekom', 1, 13, '2017-05-29', '16:00:00', '18:00:00', 12, 'Nanda'),
(128, 'Rapat Customer Focus', 1, 9, '2017-05-26', '15:00:00', '17:00:00', 5, 'Abadi'),
(129, 'rapat profilling lahan', 3, 9, '2017-05-29', '10:00:00', '15:00:00', 10, 'Ajo'),
(130, 'Meeting bersama PT.Balina', 12, 10, '2017-05-29', '12:00:00', '14:00:00', 5, 'Riris'),
(131, 'Penyampaian monitoring atas pengadaan gerobak motor', 10, 11, '2017-05-30', '09:30:00', '10:30:00', 10, 'Savira'),
(132, 'Sosialisasi exit meeting (Sesi pendahuluan) Audit BPK RI', 10, 8, '2017-05-31', '09:30:00', '10:30:00', 10, 'Savira'),
(133, 'Undangan rapat kordinasi', 5, 10, '2017-05-30', '09:00:00', '11:00:00', 10, 'Ita'),
(134, 'Rapat bersama PT.Danureksa Sarana cipta', 5, 8, '2017-05-31', '13:00:00', '16:00:00', 10, 'Ita'),
(135, 'Pertemuan dengan KADIN JAKTIM', 9, 13, '2017-05-30', '10:00:00', '11:00:00', 20, 'Pak isan'),
(136, 'Rapat pembangunan GSG', 3, 9, '2017-05-30', '10:00:00', '11:30:00', 15, 'Arinta'),
(137, 'Rapat Pembangunan Jiep Food Center', 3, 9, '2017-05-30', '14:00:00', '15:00:00', 10, 'Arinta'),
(138, 'Workshop Audit Internal Sistem Manajemen Mutu ISO', 6, 13, '2017-06-05', '09:00:00', '15:00:00', 15, 'Defi'),
(139, 'Rapat Progress jalan', 3, 10, '2017-05-30', '10:00:00', '11:00:00', 7, 'Ajo'),
(140, 'Presentasi Fiberstar', 4, 7, '2017-05-30', '14:00:00', '15:30:00', 10, 'Devi'),
(141, 'Rapat Financial Center', 3, 9, '2017-05-31', '10:00:00', '00:00:00', 8, 'Ajo'),
(142, 'FGD Kebutuhan data dalam pekerjaan pembuatan aplikasi GIS', 3, 9, '2017-05-31', '13:00:00', '15:00:00', 10, 'Ajo'),
(143, 'Pertemuan dengan KADIN JAKTIM', 9, 13, '2017-05-02', '14:00:00', '16:00:00', 10, 'Pak isan'),
(144, 'Recruitment  karyawan tes tertulis', 6, 9, '2017-06-02', '09:00:00', '11:00:00', 10, 'Pak oding'),
(145, 'Rapat dengan konsultan GSG', 5, 8, '2017-06-02', '14:00:00', '15:30:00', 10, 'Ita'),
(146, 'Rapat Pembukaan dokumen penawaran pekerjaan pembangunan gedung financial center KIP', 8, 8, '2017-06-05', '13:00:00', '00:00:00', 10, 'Procurement'),
(147, 'Rapt penjelasan teknis dengan PT.Markplus', 8, 9, '2017-06-05', '10:00:00', '00:00:00', 10, ''),
(148, 'Meeting dengan Mitra Tel', 3, 8, '2017-06-05', '10:00:00', '11:30:00', 10, 'Nirmala'),
(149, 'Sinkronisasi Data', 3, 8, '2017-06-06', '10:00:00', '00:00:00', 10, 'Ajo'),
(150, 'Rapat SUIK', 3, 8, '2017-06-06', '13:00:00', '15:00:00', 10, 'Nirmala'),
(151, 'Rapat mengenai layanan online CS PM', 8, 10, '2017-06-06', '09:00:00', '10:00:00', 2, 'Aryo'),
(152, 'Rapat konsultan MK', 3, 9, '2017-06-06', '10:00:00', '11:30:00', 8, 'ajo'),
(153, 'Rapat jiep food center', 3, 9, '2017-06-06', '14:00:00', '15:00:00', 15, ''),
(154, 'Rapat Evaluasi penawaran', 3, 9, '2017-06-07', '10:00:00', '15:00:00', 10, 'ajo'),
(155, 'Rapat bersama PT.Danureksa Sarana cipta', 5, 8, '2017-06-07', '14:00:00', '15:00:00', 8, 'Caty'),
(156, 'Undangan pertemuan tenant ', 5, 8, '2017-06-08', '10:00:00', '00:00:00', 10, 'CS'),
(157, 'Rapat Evaluasi penawaran', 3, 9, '2017-06-08', '10:00:00', '15:00:00', 10, 'ajo'),
(158, 'Rapat Evaluasi penawaran', 3, 9, '2017-06-09', '10:00:00', '15:00:00', 10, 'ajo'),
(159, 'Rapat GIS', 3, 10, '2017-06-07', '13:00:00', '14:00:00', 10, 'Arinta'),
(160, 'Pertemuan dengan PT.Bravo Security', 5, 9, '0000-00-00', '00:00:01', '00:00:02', 5, 'Ita'),
(161, 'Pertemuan dengan PT.Bravo Security', 5, 9, '0000-00-00', '00:00:01', '00:00:02', 5, 'Ita'),
(162, 'Pertemuan dengan PT.Bravo Security', 5, 9, '0000-00-00', '00:00:01', '00:00:02', 5, 'Ita'),
(163, 'Rapat GIS', 3, 10, '2017-06-08', '09:00:00', '12:00:00', 15, 'Arinta'),
(164, 'Rapat SHGB dengan PT.Panca Nabati', 4, 8, '2017-06-08', '13:00:00', '14:00:00', 12, 'EM'),
(165, 'Rapat Penyusunan Profil Resiko', 6, 13, '2017-06-09', '08:30:00', '15:30:00', 30, 'Defi'),
(166, 'Workshop IA  ISO', 6, 13, '2017-06-12', '09:00:00', '15:00:00', 20, 'Defi'),
(167, 'Rapat dengan TVOne', 3, 8, '2017-06-09', '14:00:00', '15:00:00', 10, 'ajo'),
(168, 'Rapat klarifikasi', 8, 9, '2017-06-12', '10:00:00', '00:00:00', 10, 'Procurement'),
(169, 'Rapat Dekom', 1, 9, '2017-06-14', '16:00:00', '19:00:00', 6, 'Nanda'),
(170, 'Rapat RKO', 1, 13, '2017-06-14', '09:30:00', '11:30:00', 15, 'Nanda'),
(171, 'Meeting dengan TV One', 3, 8, '2017-06-12', '13:00:00', '15:00:00', 10, 'ajo'),
(172, 'Ujicoba Sistem Layanan Keluhan Pelanggan Secara Online (Reschedule)', 8, 13, '2017-06-13', '13:00:00', '15:00:00', 15, 'Noor'),
(173, 'Rapat peralihan bersama tenant (PT.Kuarta Powerindo)', 4, 10, '2017-06-12', '14:00:00', '15:00:00', 4, 'Arin'),
(174, 'Penyusunan kamus & profil soft competency', 6, 13, '2017-06-13', '09:00:00', '00:00:00', 32, 'Ridwan'),
(175, 'Food Center', 3, 8, '2017-06-13', '10:00:00', '00:00:00', 8, 'Arinta'),
(176, 'Food Center', 3, 8, '2017-06-13', '13:00:00', '15:00:00', 15, 'Arinta'),
(177, 'ISO', 6, 9, '2017-06-14', '09:00:00', '13:00:00', 25, 'Defi'),
(178, 'Manajemen Resiko', 6, 13, '2017-06-16', '08:30:00', '13:00:00', 25, 'Defi'),
(179, 'Manajemen Resiko', 6, 13, '2017-06-17', '08:30:00', '13:00:00', 25, 'Defi'),
(180, 'Rapat Direksi dan Dekom', 1, 13, '2017-06-19', '16:00:00', '19:00:00', 15, 'Nanda'),
(181, 'Pembahasan Aplikasi GIS', 3, 8, '2017-06-15', '13:00:00', '15:00:00', 10, 'Arinta'),
(182, 'Rapat SUIK', 3, 10, '2017-06-13', '13:00:00', '15:00:00', 15, 'Nirmala'),
(183, 'Rapat dengan KAP Rama Wendra', 8, 10, '2017-06-14', '09:00:00', '11:00:00', 8, 'Procurement '),
(185, 'Rapat profiling lahan', 3, 8, '2017-06-15', '09:00:00', '11:00:00', 10, 'ajo'),
(186, 'Rapat GGL', 3, 10, '2017-06-19', '09:00:00', '13:00:00', 10, 'Ajo'),
(187, 'Pelatihan soft Kompetensi oleh BPI', 6, 13, '2017-06-15', '09:00:00', '15:00:00', 30, 'Ridwan'),
(188, 'Relokasi Blok A', 5, 9, '2017-06-20', '14:00:00', '16:00:00', 10, 'Lila'),
(189, 'Evaluasi PT Mega Primatama', 4, 9, '2017-06-19', '10:00:00', '00:00:00', 10, 'Devi'),
(190, 'Briefing Alur dan Layout Penerima Tamu', 9, 8, '2017-06-19', '10:00:00', '11:00:00', 10, 'Vida'),
(191, 'Acara FHCI', 9, 13, '2017-06-19', '10:00:00', '00:00:00', 10, 'Vida'),
(192, 'Rapat Lelang Financial Center', 8, 8, '2017-06-19', '14:00:00', '15:00:00', 10, 'Procurement'),
(193, 'Rapat Mingguan JIEP Food Center', 3, 8, '2017-06-20', '13:00:00', '15:00:00', 15, 'Arinta'),
(194, 'Rapat SUIK', 3, 10, '2017-06-20', '12:30:00', '15:00:00', 10, 'Nirmala'),
(195, 'Closing Audit Pelaksanaan Pembangunan SUIK - Blok T', 10, 11, '2017-06-21', '09:00:00', '00:00:00', 10, 'Mega'),
(196, 'Meeting', 3, 8, '2017-06-20', '09:00:00', '00:00:00', 6, 'Titin'),
(197, 'Rapat Internal', 1, 9, '2017-06-21', '09:30:00', '00:00:00', 5, 'Novi'),
(198, 'Pertemuan Bersama BEKRAF', 3, 13, '2017-06-22', '14:00:00', '16:00:00', 15, 'Nirmala'),
(199, 'Rapat Pembukaan Dokumen Usulan Biaya', 8, 8, '2017-06-22', '09:00:00', '00:00:00', 10, 'Procurement'),
(200, 'Profiling Pengguna Lahan', 3, 8, '2017-06-21', '10:00:00', '00:00:00', 10, 'Titin'),
(201, 'Rapat SUIK', 3, 10, '2017-07-05', '10:00:00', '00:00:00', 10, 'Nirmala'),
(202, 'Halal Bihalal dan Perpisahan karyawan purnabakti', 6, 13, '2017-07-04', '10:30:00', '00:00:00', 120, 'Ridwan'),
(203, 'Monitoring Competency Development Program (CDP)', 6, 13, '2017-07-05', '10:00:00', '17:00:00', 15, 'Ridwan'),
(204, 'Monitoring Competency Development Program (CDP)', 6, 13, '2017-07-11', '09:00:00', '17:00:00', 15, 'Ridwan'),
(205, 'Monitoring Competency Development Program (CDP)', 6, 8, '2017-07-12', '09:00:00', '17:00:00', 15, 'Ridwan'),
(206, 'Prakunjungan BKPM', 3, 10, '2017-07-05', '13:30:00', '15:00:00', 5, 'Titin'),
(207, 'Rapat mingguan food center', 3, 8, '2017-07-04', '14:00:00', '16:00:00', 10, 'Arinta'),
(208, 'Pertemuan dengan Damri', 3, 8, '2017-07-05', '09:00:00', '00:00:00', 10, 'Titin'),
(209, 'Pembahasan Annual Report 2016', 1, 8, '2017-07-05', '15:30:00', '17:30:00', 12, 'Tari'),
(210, 'Klarifikasi Pek. Pembangunan Gedung Financial Center KIP', 8, 8, '2017-07-06', '10:00:00', '15:00:00', 20, 'Procurement'),
(211, 'Rapat pembangunan jalan', 3, 9, '2017-07-05', '14:00:00', '16:00:00', 6, 'Titin'),
(212, 'Rapat mingguan Jiep food center', 3, 8, '2017-07-05', '14:00:00', '15:30:00', 10, 'Arinta'),
(213, 'Rapat Gudang Logistik', 3, 9, '2017-07-05', '10:00:00', '00:00:00', 8, 'Arinta'),
(214, 'Rapat Profiling Pengguna Lahan', 3, 13, '2017-07-06', '10:00:00', '12:00:00', 15, 'Winda'),
(215, 'Rapat RKO', 1, 13, '2017-07-17', '10:00:00', '12:00:00', 25, 'Nanda'),
(216, 'Standarisasi Keamanan Kawasan', 4, 8, '2017-07-07', '13:30:00', '15:30:00', 10, 'Devi'),
(217, 'Rapat Koordinasi dengan PT. Mega', 4, 9, '2017-07-06', '13:00:00', '15:00:00', 15, 'Dana'),
(218, 'Rapat Mingguan Pembangunan Jalan', 3, 10, '2017-07-06', '14:00:00', '15:30:00', 7, 'Titin'),
(219, 'Rapat Rutin Data GIS', 3, 10, '2017-07-07', '13:00:00', '15:00:00', 5, 'Titin'),
(221, 'Undangan dengan Agency', 5, 9, '2017-07-12', '10:00:00', '12:00:00', 25, 'Lila'),
(223, 'Pertemuan dengan MarkPlus', 5, 10, '2017-07-13', '10:00:00', '12:00:00', 15, 'Lila'),
(224, 'Pertemuan dengan Mitra Tell', 3, 9, '2017-07-07', '09:00:00', '11:00:00', 6, 'Titin'),
(225, 'Rapat pemantauan', 1, 9, '2017-07-14', '10:00:00', '11:00:00', 15, ''),
(226, 'Site Visit dan Sharing Knowledge dengan PT. Indonesia Asahan Aluminium (PT. Inalum)', 9, 8, '2017-07-10', '14:00:00', '16:00:00', 11, 'Novi'),
(227, 'Rapat Bizhome', 5, 8, '2017-07-10', '10:00:00', '12:00:00', 10, 'Indri'),
(228, 'Rapat ISO', 6, 10, '2017-07-10', '11:00:00', '12:00:00', 6, 'Ridwan'),
(229, 'Rapat JiepMart', 11, 10, '2017-07-10', '15:00:00', '17:00:00', 5, 'Rika'),
(230, 'Rapat Serah Terima Fungsi Pengawasan', 3, 9, '2017-07-11', '08:00:00', '09:00:00', 5, 'Titin'),
(231, 'Lelang Konsultan', 8, 8, '2017-07-11', '10:00:00', '12:00:00', 10, 'Procurement'),
(232, 'Rapat dengan PT. QASICO', 3, 8, '2017-07-11', '13:00:00', '15:00:00', 10, 'Arinta'),
(233, 'Rapat Food Center', 3, 9, '2017-07-11', '13:00:00', '15:00:00', 10, 'Arinta'),
(235, 'Rapat Opening Meeting Audit Internal ISO', 6, 13, '2017-07-12', '09:00:00', '11:00:00', 20, 'Efrida'),
(236, 'Rapat Tinjauan Manajemen', 6, 13, '2017-07-17', '14:00:00', '17:00:00', 25, 'Tim ISO'),
(237, 'Rapat Closing Meeting Audit Internal ISO', 6, 13, '2017-07-13', '14:00:00', '17:00:00', 20, 'Efrida'),
(239, 'Rapat K3', 8, 10, '2017-07-11', '15:00:00', '17:00:00', 6, 'Nunung'),
(240, 'Persiapan System Accounting', 8, 10, '2017-07-11', '10:00:00', '12:00:00', 8, 'Peral'),
(241, 'KTL Meeting', 3, 13, '2017-07-12', '14:00:00', '17:00:00', 15, 'Fauzie'),
(242, 'Rapat pindah kantor', 8, 10, '2017-07-12', '10:00:00', '12:00:00', 8, 'Peral'),
(243, 'Pelantikan Karyawan/ti ', 1, 13, '2017-07-14', '13:30:00', '15:00:00', 50, ''),
(244, 'Rapat Pembahasan Data', 4, 8, '2017-07-14', '10:00:00', '12:00:00', 10, 'Dana'),
(245, 'Rapat Audit Stage II', 6, 13, '2017-07-25', '09:00:00', '17:00:00', 30, 'Efrida'),
(246, 'Rapat Audit Stage II', 6, 13, '2017-07-26', '09:00:00', '17:00:00', 30, 'Efrida'),
(247, 'Rapat Sosialisasi Bina Potensia', 6, 13, '2017-07-13', '09:00:00', '12:00:00', 10, 'Ridwan'),
(248, 'Rapat Sosialisasi Bina Potensia', 6, 8, '2017-07-13', '10:00:00', '12:00:00', 10, 'Ridwan'),
(249, 'Wawancara staff PM', 5, 9, '2017-07-13', '10:00:00', '11:00:00', 2, 'Pak Oding'),
(250, 'Test Materi EM', 4, 10, '2017-07-17', '10:00:00', '00:00:00', 5, 'Pak Oding'),
(251, 'Rapat Lelang', 8, 8, '2017-07-13', '14:00:00', '16:00:00', 15, 'Ida'),
(252, 'Rapat Koordinasi dengan Abu Jabi', 4, 9, '2017-07-13', '13:00:00', '15:00:00', 6, 'Dana'),
(253, 'Sistem POS', 11, 8, '2017-07-17', '10:00:00', '12:00:00', 10, 'Vania boru Nainggolan'),
(254, 'Rapat Logistik', 5, 10, '2017-07-13', '15:00:00', '17:00:00', 6, 'Indri'),
(255, 'Konsinyering Draft Eksposur PSAK73', 1, 8, '2017-07-14', '16:30:00', '19:00:00', 8, 'Dir. Keu.'),
(256, 'Pertemuan dengan PT.Nagacorico', 1, 18, '2017-07-14', '10:00:00', '12:00:00', 5, 'Dirop'),
(257, 'Rapat Koordinasi PM', 5, 10, '2017-07-14', '08:30:00', '10:00:00', 5, 'Oding'),
(259, 'Rapat Lelang', 8, 10, '2017-07-14', '10:00:00', '12:00:00', 10, 'Procurement'),
(260, 'Kick Off Meeting Audit Pembangunan Prasarana Jalan di KIP', 10, 13, '2017-07-18', '10:00:00', '12:00:00', 20, 'Savira'),
(261, 'Rapat ISO', 6, 9, '2017-07-17', '10:00:00', '14:00:00', 6, 'Tim ISO');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `user_password` varchar(60) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `user_level` int(1) NOT NULL COMMENT '9=super_admin | 1=admin_ga | 2=manager | 3=user | 4=admin_em',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `user_password`, `user_level`) VALUES
(1, 'admin1703', '$2a$06$pGCxqPDWyWwAedQnn78ghu4t7VqBTwV99zK5NHBub439scLpdb6TC', 1),
(2, 'admin1704', '$2a$06$pGCxqPDWyWwAedQnn78ghu4t7VqBTwV99zK5NHBub439scLpdb6TC', 4),
(3, 'cheezar31', '$2y$10$RjKY3dpJKRFHu2on33e/W.PgyfvMbDPa/Ef1YC79tACV3JneeYHC.', 9),
(4, 'isni', '$2a$06$RwaqztjwjVRBoQDn.OEpmuKtTEpJQpwciszeNQjsswRlqytu57W1q', 1),
(5, 'dept_it', '$2y$10$TKXuPXeAv2gjYAyniPIEBOEnPBPGLUdlQ3sHvGiAwUjqpZ5ZNRI0S', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `fk_lokasi_meetings` FOREIGN KEY (`lokasi_meetings`) REFERENCES `locations` (`id_locations`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
