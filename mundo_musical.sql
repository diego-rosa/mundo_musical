-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Dez-2020 às 01:20
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mundo_musical`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_instrumentos`
--

CREATE TABLE `tbl_instrumentos` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `valor` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_instrumentos`
--

INSERT INTO `tbl_instrumentos` (`id`, `tipo`, `marca`, `modelo`, `valor`) VALUES
(2, 'violao', 'Gibson', 'Jumbo', 3000.00),
(6, 'Contra-Baixo', 'Tagima', 'MT-bass', 1000.00),
(10, 'Violao', 'Tagima', 'Jumbo', 1250.55),
(11, 'Contra-Baixo', 'Gibson', 'Les Paul', 3000.56);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_instrumentos`
--
ALTER TABLE `tbl_instrumentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_instrumentos`
--
ALTER TABLE `tbl_instrumentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
