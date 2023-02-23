-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Fev-2023 às 18:02
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: uranoverde
--

-- --------------------------------------------------------

--
-- Estrutura da tabela empresa
--

CREATE TABLE empresa (
  idEmpresa int(11) NOT NULL,
  nomeEmpresa varchar(100) NOT NULL,
  cnpjEmpresa varchar(45) NOT NULL,
  emailEmpresa varchar(100) NOT NULL
) ;

--
-- Extraindo dados da tabela empresa
--

INSERT INTO empresa (idEmpresa, nomeEmpresa, cnpjEmpresa, emailEmpresa) VALUES
(1, 'uranoverde matriz', '2154632514', 'uranoverde@matriz.com'),
(2, 'uranoverde itaim', '3421564312', 'uranoverde@itaim.com'),
(3, 'uranoverde londres', '34251676423', 'uranoverde@londres.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela produto
--

CREATE TABLE produto (
  idProduto int(11) NOT NULL,
  nomeProduto varchar(100) NOT NULL,
  tipoProduto varchar(100) NOT NULL,
  valorProduto varchar(45) NOT NULL
);

--
-- Extraindo dados da tabela produto
--

INSERT INTO produto (idProduto, nomeProduto, tipoProduto, valorProduto) VALUES
(1, 'Leiteiro Vermelho', 'arbusto', '30.00'),
(2, 'Ipê Roxo', 'árvore', '27.00'),
(3, 'Jabuticaba-amarela', 'arbusto', '25.00'),
(4, 'Palmeira de petropolis', 'arbusto', '25.00'),
(5, 'Guaimbé', 'arbusto', '25.00'),
(6, 'Clusia', 'arbusto', '20.00'),
(7, 'Canela-imbuia', 'árvore', '15.00'),
(8, 'Chuva-de-ouro', 'árvore', '30.00'),
(9, 'Jacarandá-da-bahia', 'árvore', '25.00'),
(10, 'Araucária', 'árvore', '28.00'),
(11, 'Orquídeas', 'flor', '24.00'),
(12, 'Girasol', 'flor', '24.00'),
(13, 'Rosa', 'flor', '21.00'),
(14, 'Azaleia', 'flor', '22.00'),
(15, 'Copo-de-Leite', 'flor', '21.00'),
(16, 'Uva', 'semente', '5.00'),
(17, 'Girasol', 'semente', '5.00'),
(18, 'Jabuticaba', 'semente', '9.00'),
(19, 'Jambolão', 'semente', '5.00'),
(20, 'Amora', 'semente', '2.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela tpusuario
--

CREATE TABLE tpusuario (
  idUsuarioTp int(11) NOT NULL,
  descUruarioTp varchar(100) NOT NULL
) ;

--
-- Extraindo dados da tabela tpusuario
--

INSERT INTO tpusuario (idUsuarioTp, descUruarioTp) VALUES
(1, 'administrador'),
(2, 'vendedor'),
(3, 'cliente');

-- --------------------------------------------------------

--
-- Estrutura da tabela usuario
--

CREATE TABLE usuario (
  idUsuario int(11) NOT NULL,
  nomeUsuario varchar(100) NOT NULL,
  emailUsuario varchar(100) NOT NULL,
  senhaUsuario varchar(4) NOT NULL,
  cellUsuario varchar(20) NOT NULL,
  enderecoUsuario varchar(20) NOT NULL,
  cepUsuario varchar(20) NOT NULL,
  tpUsuarioId int(11) NOT NULL
);

--
-- Extraindo dados da tabela usuario
--

INSERT INTO usuario (idUsuario, nomeUsuario, emailUsuario, senhaUsuario, cellUsuario, enderecoUsuario, cepUsuario, tpUsuarioId) VALUES
(1, 'Fernanda Araújo', 'gateway@gmail.com', '2545', '11987451247', 'Rua Endereço da Silv', '02148753', 1),
(2, 'Luis Araújo Monteiro', 'maria_ss@email.com', '3465', '921548622', 'Rua Jardim Glória, 5', '69006179', 3),
(3, 'Pedro Nascimento Silveira', 'pedro_ns@email.com', '4577', '936148521', 'Rua Jardim São Roque', '69351881', 3),
(4, 'Nathan Siqueira', 'nathan_n@email.com', '2478', '986200213', 'Rua Iate Clube de Ca', '69354-923', 1),
(5, 'Lucas Silveira Macedo', 'lucas_om@email.com', '2541', '983215411', 'Rua, Jardim Miriam, ', '57285-807', 3),
(6, 'Renato Costa Correia', 'renato_co@email.com', '2547', '925416602', 'Rua Iate Clube de Am', '40467887', 3),
(7, 'Ricardo Siqueira Matos', 'ricardo_sm@email.com', '8689', '974210635', 'Rua Abelardo Fonseca', '21286075', 3),
(8, 'Maria da Silva Santos', 'maria_ss@email.com', '3254', '922014286', 'Rua Abílio Rodrigues', '78128-815', 3),
(9, 'Yago Henrique', 'yaho_hm@email.com', '7412', '965874125', 'Rua Abolição, 21, Am', '58416-028', 2),
(10, 'João Santos Oliverira', 'jao_so@email.com', '1256', '974256130', 'Rua Jardim São Paulo', '07769211', 3),
(11, 'Pedro Oliveira Araújo', 'pedro_ns@email.com', '6481', '964753210', 'Rua do Acetato, 1453', '10706-916', 3),
(12, 'Pedro Nascimento Silveira', 'pedro_oa@email.com', '9324', '957216832', 'Rua Abílio Rodrigues', '59611955', 3),
(13, 'João Santos Oliverira', 'marcos_sa@email.com', '1557', '965842365', 'Rua Abelardo Fonseca', '69353064', 3),
(14, 'Marcos Nascimento Azevedo', 'marcos_sa@email.com', '3256', '925478830', 'Rua das Acácias, 532', '79767163', 3),
(15, 'Guilherme Santana Silva', 'gui_sq@email.com', '9857', '941365421', 'Rua João Bandini, 15', '79767163', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela empresa
--
ALTER TABLE empresa
  ADD PRIMARY KEY (idEmpresa);

--
-- Índices para tabela produto
--
ALTER TABLE produto
  ADD PRIMARY KEY (idProduto);

--
-- Índices para tabela tpusuario
--
ALTER TABLE tpusuario
  ADD PRIMARY KEY (idUsuarioTp);

--
-- Índices para tabela usuario
--
ALTER TABLE usuario
  ADD PRIMARY KEY (idUsuario);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
