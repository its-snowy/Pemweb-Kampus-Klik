-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2024 at 02:29 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus-klik`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int NOT NULL,
  `nama_mhs` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prodi_mhs` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nilai_mhs` smallint NOT NULL,
  `huruf_mutu` char(2) COLLATE utf8mb4_general_ci GENERATED ALWAYS AS ((case when (`nilai_mhs` >= 85) then _utf8mb4'A' when (`nilai_mhs` >= 80) then _utf8mb4'A-' when (`nilai_mhs` >= 75) then _utf8mb4'B+' when (`nilai_mhs` >= 70) then _utf8mb4'B' when (`nilai_mhs` >= 65) then _utf8mb4'B-' when (`nilai_mhs` >= 60) then _utf8mb4'C+' when (`nilai_mhs` >= 55) then _utf8mb4'C' when (`nilai_mhs` >= 50) then _utf8mb4'C-' when (`nilai_mhs` >= 45) then _utf8mb4'D+' when (`nilai_mhs` >= 40) then _utf8mb4'D' when (`nilai_mhs` >= 35) then _utf8mb4'D-' else _utf8mb4'E' end)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama_mhs`, `prodi_mhs`, `nilai_mhs`) VALUES
(1, 'Mirza Kurniawan 2', 'Informatika', 90),
(2, 'Ahmad', 'Ekonomi', 82),
(3, 'Karin', 'Agama Islam', 75),
(4, 'Udin', 'Hukum', 64),
(5, 'Kaeya', 'Agrobisnis', 90),
(6, 'Jea', 'Sistem Informasi', 82);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
