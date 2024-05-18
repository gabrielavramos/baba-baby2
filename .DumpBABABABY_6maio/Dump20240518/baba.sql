-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/05/2024 às 19:29
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `babababy_`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `baba`
--

CREATE TABLE `baba` (
  `idBaba` int(11) NOT NULL,
  `tempoExp` int(11) NOT NULL,
  `ref` varchar(50) NOT NULL,
  `sobre` varchar(300) NOT NULL,
  `valor` float NOT NULL,
  `fk_idFxEtaria` int(11) NOT NULL,
  `pk_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `baba`
--

INSERT INTO `baba` (`idBaba`, `tempoExp`, `ref`, `sobre`, `valor`, `fk_idFxEtaria`, `pk_idUsuario`) VALUES
(8, 2332, 'teste', 'teste', 0, 2, 1),
(9, 2005, '11999999999', 'Primo Rico', 142, 2, 41);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `baba`
--
ALTER TABLE `baba`
  ADD PRIMARY KEY (`idBaba`,`pk_idUsuario`),
  ADD KEY `fk_idFxEtaria_idx` (`fk_idFxEtaria`),
  ADD KEY `fk_baba_idUsuario_idx` (`pk_idUsuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `baba`
--
ALTER TABLE `baba`
  MODIFY `idBaba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `baba`
--
ALTER TABLE `baba`
  ADD CONSTRAINT `fk_baba_idUsuario` FOREIGN KEY (`pk_idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `fk_idFxEtaria` FOREIGN KEY (`fk_idFxEtaria`) REFERENCES `fxetaria` (`idFxEtaria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;