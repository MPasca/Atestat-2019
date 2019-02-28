-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Feb 2019 la 11:28
-- Versiune server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bilet 1`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `clienti`
--

CREATE TABLE `clienti` (
  `idc` int(11) NOT NULL,
  `nume` text NOT NULL,
  `prenume` text NOT NULL,
  `adresa` text NOT NULL,
  `telefon` int(11) NOT NULL,
  `idd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `destinatii`
--

CREATE TABLE `destinatii` (
  `idd` int(11) NOT NULL,
  `denumire` text NOT NULL,
  `descriere` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`idc`);

--
-- Indexes for table `destinatii`
--
ALTER TABLE `destinatii`
  ADD PRIMARY KEY (`idd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clienti`
--
ALTER TABLE `clienti`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `destinatii`
--
ALTER TABLE `destinatii`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
