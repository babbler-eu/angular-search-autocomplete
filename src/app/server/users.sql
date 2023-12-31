-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Ott 22, 2023 alle 12:54
-- Versione del server: 8.0.32
-- Versione PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

/*CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;*/

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `name`) VALUES
(1, 'sangarfe', 'sangarfe@mail.com', 'Fernando Sánchez García'),
(2, 'radu', 'radu@mail.com', 'Radu Zaharia'),
(3, 'daniel', 'daniel@mail.com', 'Daniel Gimenez'),
(4, 'Ian_hope', 'Ian_hope@yahoo.com', 'Ian Hope'),
(5, 'nil', 'nil@mail.com', 'Nil Serao'),
(6, 'sangarfe', 'sangarfe@mail.com', 'Fernando Sánchez García'),
(7, 'radu', 'radu@mail.com', 'Radu Zaharia'),
(8, 'daniel', 'daniel@mail.com', 'Daniel Gimenez'),
(9, 'Ian_hope', 'Ian_hope@yahoo.com', 'Ian Hope'),
(10, 'nil', 'nil@mail.com', 'Nil Serao'),
(11, 'sangarfe', 'sangarfe@mail.com', 'Fernando Sánchez García'),
(12, 'radu', 'radu@mail.com', 'Radu Zaharia'),
(13, 'daniel', 'daniel@mail.com', 'Daniel Gimenez'),
(14, 'Ian_hope', 'Ian_hope@yahoo.com', 'Ian Hope'),
(15, 'nil', 'nil@mail.com', 'Nil Serao');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
