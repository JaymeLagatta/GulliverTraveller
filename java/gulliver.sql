-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Jun-2024 às 01:08
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

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
-- Estrutura da tabela `acessos`
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
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id_cidade` int(11) NOT NULL,
  `nome_cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `país` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id_cidade`, `nome_cidade`, `estado`, `país`) VALUES
(1, 'São Paulo', 'São Paulo', 'Brasil'),
(2, 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil'),
(5, 'Salvador', 'Bahia', 'Brasil'),
(6, 'João Pessoa', 'Paraíba', 'Brasil'),
(9, 'Aracaju', 'Sergipe', 'João Pessoa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
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
-- Estrutura da tabela `locais`
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
  `data_cadastro_local` date DEFAULT NULL,
  `url_imagem` varchar(199) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `locais`
--

INSERT INTO `locais` (`cod_local`, `tipo_local`, `nome_local`, `subtitpo_local`, `email_local`, `telefone_local`, `instagram_local`, `website`, `cidades_id_cidade`, `data_cadastro_local`, `url_imagem`) VALUES
(1, 1, 'Hotel Salvador', '1', 'hotelsalvador@hotelsalvador.com.br', '71999999999', '@hotelsalvador', 'hotelsalvador@hotelsalvador.com.br', 5, '2024-06-01', 'images/hoteis/hotel-room.jpg'),
(2, 1, 'Hotel São Paulo', '1', 'hotelsaopaulo@hotelsaopaulo.com.br', '11998888888', '@hotelsaopaulo', 'www.hotelsaopaulo.com.br', 1, '2024-06-01', 'images/hoteis/hotel-room.jpg'),
(3, 1, 'Hotel Rio', '1', 'hotelrio@hotelrio.com', '21997777777', '@hotelrio', 'www.hotelrio.com.br', 2, '2024-06-01', 'images/hoteis/hotel-room.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_locais`
--

CREATE TABLE `tipos_locais` (
  `idTipos_locais` int(11) NOT NULL,
  `subtipo_local` varchar(45) DEFAULT NULL,
  `nome_tipo_local` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipos_locais`
--

INSERT INTO `tipos_locais` (`idTipos_locais`, `subtipo_local`, `nome_tipo_local`) VALUES
(1, '1', 'Hotel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
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
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `genero`, `tipo_usuario`, `email`, `senha`, `cpf`, `cidade`, `telefone`, `instagram_usuario`, `data_cadastro`) VALUES
(1, 'David', NULL, 1, 'usuario@email.com', 'test', '15141234753', 9, '11 954225804', NULL, '2024-04-13'),
(2, 'Jay', NULL, 1, 'jayme@teste.com', '123456', NULL, 2, NULL, NULL, '2024-06-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `viagens`
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
-- Índices para tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id_acessos`),
  ADD KEY `fk_acessos_USUARIO1_idx` (`USUARIO_id_usuario`);

--
-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id_cidade`);

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentarios`),
  ADD KEY `fk_comentarios_USUARIO1_idx` (`USUARIO_id_usuario`);

--
-- Índices para tabela `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`cod_local`),
  ADD KEY `fk_locais_tpos_locais1_idx` (`tipo_local`),
  ADD KEY `fk_locais_cidades1_idx` (`cidades_id_cidade`);

--
-- Índices para tabela `tipos_locais`
--
ALTER TABLE `tipos_locais`
  ADD PRIMARY KEY (`idTipos_locais`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_cidade_usuario` (`cidade`);

--
-- Índices para tabela `viagens`
--
ALTER TABLE `viagens`
  ADD PRIMARY KEY (`id_viagem`),
  ADD KEY `fk_VIAGENS_USUARIO_idx` (`cod_usuario`),
  ADD KEY `fk_viagens_cidades1_idx` (`cidades_id_cidade`);

--
-- AUTO_INCREMENT de tabelas despejadas
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
  MODIFY `cod_local` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tipos_locais`
--
ALTER TABLE `tipos_locais`
  MODIFY `idTipos_locais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `acessos`
--
ALTER TABLE `acessos`
  ADD CONSTRAINT `fk_acessos_USUARIO1` FOREIGN KEY (`USUARIO_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_USUARIO1` FOREIGN KEY (`USUARIO_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `locais`
--
ALTER TABLE `locais`
  ADD CONSTRAINT `fk_locais_cidades1` FOREIGN KEY (`cidades_id_cidade`) REFERENCES `cidades` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_locais_tpos_locais1` FOREIGN KEY (`tipo_local`) REFERENCES `tipos_locais` (`idTipos_locais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_cidade_usuario` FOREIGN KEY (`cidade`) REFERENCES `cidades` (`id_cidade`);

--
-- Limitadores para a tabela `viagens`
--
ALTER TABLE `viagens`
  ADD CONSTRAINT `fk_VIAGENS_USUARIO` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_viagens_cidades1` FOREIGN KEY (`cidades_id_cidade`) REFERENCES `cidades` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
