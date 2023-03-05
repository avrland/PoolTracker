-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Czas generowania: 05 Mar 2023, 08:26
-- Wersja serwera: 10.3.29-MariaDB-0ubuntu0.20.04.1-log
-- Wersja PHP: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `db_m318`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poolStats`
--

CREATE TABLE `poolStats` (
  `date` datetime NOT NULL,
  `sport` int(11) NOT NULL,
  `family` int(11) NOT NULL,
  `small` int(11) NOT NULL,
  `ice` int(11) NOT NULL,
  `guid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `poolStats`
--
ALTER TABLE `poolStats`
  ADD UNIQUE KEY `guid` (`guid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
