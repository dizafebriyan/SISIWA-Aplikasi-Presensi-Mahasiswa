-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 03:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisiwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `dsn_nama` varchar(20) NOT NULL,
  `dsn_nip` varchar(20) NOT NULL,
  `dsn_pw` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`dsn_nama`, `dsn_nip`, `dsn_pw`) VALUES
('ahmad', '00', 'user'),
('ahmad auzan', '14116007', 'user'),
('diza', '14117017', 'diza');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `matkul` varchar(20) NOT NULL,
  `kodematkul` varchar(12) NOT NULL,
  `jmlpertemuan` int(3) NOT NULL,
  `dsn_nip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`matkul`, `kodematkul`, `jmlpertemuan`, `dsn_nip`) VALUES
('MPPL RD', '104RD', 10, '00'),
('MPPL RB', '1212RB', 10, '00'),
('PPLRB', '1234RB', 10, '14117017');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `mhs_nama` varchar(20) NOT NULL,
  `mhs_nim` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `mhs_nim` varchar(12) NOT NULL,
  `kodematkul` varchar(12) NOT NULL,
  `mhs_nama` varchar(20) NOT NULL,
  `kehadiran_1` int(1) NOT NULL,
  `kehadiran_2` int(1) NOT NULL,
  `kehadiran_3` int(1) NOT NULL,
  `kehadiran_4` int(1) NOT NULL,
  `kehadiran_5` int(1) NOT NULL,
  `kehadiran_6` int(1) NOT NULL,
  `kehadiran_7` int(1) NOT NULL,
  `kehadiran_8` int(1) NOT NULL,
  `kehadiran_9` int(1) NOT NULL,
  `kehadiran_10` int(1) NOT NULL,
  `kehadiran_11` int(1) NOT NULL,
  `kehadiran_12` int(1) NOT NULL,
  `kehadiran_13` int(1) NOT NULL,
  `kehadiran_14` int(1) NOT NULL,
  `kehadiran_15` int(1) NOT NULL,
  `kehadiran_16` int(1) NOT NULL,
  `kehadiran_17` int(1) NOT NULL,
  `kehadiran_18` int(1) NOT NULL,
  `kehadiran_19` int(1) NOT NULL,
  `kehadiran_20` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`mhs_nim`, `kodematkul`, `mhs_nama`, `kehadiran_1`, `kehadiran_2`, `kehadiran_3`, `kehadiran_4`, `kehadiran_5`, `kehadiran_6`, `kehadiran_7`, `kehadiran_8`, `kehadiran_9`, `kehadiran_10`, `kehadiran_11`, `kehadiran_12`, `kehadiran_13`, `kehadiran_14`, `kehadiran_15`, `kehadiran_16`, `kehadiran_17`, `kehadiran_18`, `kehadiran_19`, `kehadiran_20`) VALUES
('14116233', '104RD', 'irma', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('141506', '104RD', 'ardi', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('12345', '104RD', 'hisna', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('14115550', '1212RB', 'sumarni', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('22203', '1212RB', 'sukijan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2342', '1212RB', 'ahmad34', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`dsn_nip`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kodematkul`),
  ADD KEY `dsn_nip` (`dsn_nip`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`mhs_nim`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD KEY `kodematkul` (`mhs_nim`),
  ADD KEY `kodematkul_2` (`kodematkul`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `matkul_ibfk_1` FOREIGN KEY (`dsn_nip`) REFERENCES `dosen` (`dsn_nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_3` FOREIGN KEY (`kodematkul`) REFERENCES `matkul` (`kodematkul`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
