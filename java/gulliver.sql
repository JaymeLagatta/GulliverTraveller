-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/04/2024 às 01:41
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gulliver`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessos`
--

CREATE TABLE `acessos` (
  `id_acessos` int(11) NOT NULL,
  `tipo_dispositivo` varchar(45) DEFAULT NULL,
  `data_acesso` date DEFAULT NULL,
  `ip_acesso` varchar(45) DEFAULT NULL,
  `url_acessada` varchar(45) DEFAULT NULL,
  `USUARIO_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id_cidade` int(11) NOT NULL,
  `nome_cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `país` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id_cidade`, `nome_cidade`, `estado`, `país`) VALUES
(1, 'São Paulo', 'São Paulo', 'Brasil'),
(2, 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil'),
(5, 'Salvador', 'Bahia', 'Brasil'),
(6, 'João Pessoa', 'Paraíba', 'Brasil'),
(9, 'Aracaju', 'Sergipe', 'João Pessoa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentarios` int(11) NOT NULL,
  `cod_publicacao` varchar(45) DEFAULT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  `data_interacao` varchar(45) DEFAULT NULL,
  `curtida` varchar(45) DEFAULT NULL,
  `USUARIO_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `locais`
--

CREATE TABLE `locais` (
  `cod_local` int(11) NOT NULL,
  `tipo_local` int(11) NOT NULL,
  `nome_local` varchar(45) DEFAULT NULL,
  `subtitpo_local` varchar(45) DEFAULT NULL,
  `email_local` varchar(45) DEFAULT NULL,
  `telefone_local` varchar(45) DEFAULT NULL,
  `instagram_local` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `cidades_id_cidade` int(11) NOT NULL,
  `data_cadastro_local` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_locais`
--

CREATE TABLE `tipos_locais` (
  `idTipos_locais` int(11) NOT NULL,
  `subtipo_local` varchar(45) DEFAULT NULL,
  `nome_tipo_local` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tpos_locais`
--

CREATE TABLE `tpos_locais` (
  `idTipos_locais` int(11) NOT NULL,
  `subtipo_local` varchar(45) DEFAULT NULL,
  `nome_tipo_local` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `genero` varchar(15) DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `cidade` int(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `instagram_usuario` varchar(45) DEFAULT NULL,
  `data_cadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `genero`, `tipo_usuario`, `email`, `senha`, `cpf`, `cidade`, `telefone`, `instagram_usuario`, `data_cadastro`) VALUES
(1, 'David', NULL, 1, 'usuario@email.com', 'test', '15141234753', 9, '11 954225804', NULL, '2024-04-13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `viagens`
--

CREATE TABLE `viagens` (
  `id_viagem` int(11) NOT NULL,
  `cod_usuario` int(11) NOT NULL,
  `data_inicial` varchar(45) DEFAULT NULL,
  `data_final` int(11) DEFAULT NULL,
  `cod_cidade` varchar(45) DEFAULT NULL,
  `comentário` varchar(45) DEFAULT NULL,
  `nome_viagem` varchar(45) DEFAULT NULL,
  `data_cadastro` date NOT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `instagram_usuario` varchar(45) DEFAULT NULL,
  `cidades_id_cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id_acessos`),
  ADD KEY `fk_acessos_USUARIO1_idx` (`USUARIO_id_usuario`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id_cidade`);

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentarios`),
  ADD KEY `fk_comentarios_USUARIO1_idx` (`USUARIO_id_usuario`);

--
-- Índices de tabela `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`cod_local`),
  ADD KEY `fk_locais_tpos_locais1_idx` (`tipo_local`),
  ADD KEY `fk_locais_cidades1_idx` (`cidades_id_cidade`);

--
-- Índices de tabela `tipos_locais`
--
ALTER TABLE `tipos_locais`
  ADD PRIMARY KEY (`idTipos_locais`);

--
-- Índices de tabela `tpos_locais`
--
ALTER TABLE `tpos_locais`
  ADD PRIMARY KEY (`idTipos_locais`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_cidade_usuario` (`cidade`);

--
-- Índices de tabela `viagens`
--
ALTER TABLE `viagens`
  ADD PRIMARY KEY (`id_viagem`),
  ADD KEY `fk_VIAGENS_USUARIO_idx` (`cod_usuario`),
  ADD KEY `fk_viagens_cidades1_idx` (`cidades_id_cidade`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id_acessos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentarios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `locais`
--
ALTER TABLE `locais`
  MODIFY `cod_local` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipos_locais`
--
ALTER TABLE `tipos_locais`
  MODIFY `idTipos_locais` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `viagens`
--
ALTER TABLE `viagens`
  MODIFY `id_viagem` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `acessos`
--
ALTER TABLE `acessos`
  ADD CONSTRAINT `fk_acessos_USUARIO1` FOREIGN KEY (`USUARIO_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_USUARIO1` FOREIGN KEY (`USUARIO_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `locais`
--
ALTER TABLE `locais`
  ADD CONSTRAINT `fk_locais_cidades1` FOREIGN KEY (`cidades_id_cidade`) REFERENCES `cidades` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_locais_tpos_locais1` FOREIGN KEY (`tipo_local`) REFERENCES `tipos_locais` (`idTipos_locais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_cidade_usuario` FOREIGN KEY (`cidade`) REFERENCES `cidades` (`id_cidade`);

--
-- Restrições para tabelas `viagens`
--
ALTER TABLE `viagens`
  ADD CONSTRAINT `fk_VIAGENS_USUARIO` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_viagens_cidades1` FOREIGN KEY (`cidades_id_cidade`) REFERENCES `cidades` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
