-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 12. 01 2017 kl. 16:39:22
-- Serverversion: 10.1.19-MariaDB
-- PHP-version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `traesorter`
--

CREATE TABLE `traesorter` (
  `navn` varchar(15) NOT NULL,
  `rumvaegt` int(11) NOT NULL,
  `styrke` enum('Svagt','Middel','Stærkt') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `traesorter`
--

INSERT INTO `traesorter` (`navn`, `rumvaegt`, `styrke`) VALUES
('Ask', 650, 'Stærkt'),
('Bøg', 680, 'Stærkt'),
('Eg', 650, 'Stærkt'),
('Elm', 640, 'Middel'),
('Kirsebær', 570, 'Stærkt');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `traesorter`
--
ALTER TABLE `traesorter`
  ADD UNIQUE KEY `navn` (`navn`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
