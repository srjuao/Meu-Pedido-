-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 02-Jul-2021 às 21:06
-- Versão do servidor: 10.3.29-MariaDB
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `scriptph_multdeliveryb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ateste`
--

CREATE TABLE `ateste` (
  `id` int(11) NOT NULL,
  `topic` varchar(600) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ateste`
--

INSERT INTO `ateste` (`id`, `topic`) VALUES
(322, '{\"185\":[{\"id\":\"185\",\"quantity\":\"1\",\"hash\":\"913e4639d6f33aca2cb9b4680979bde2\",\"attributes\":{\"preco\":\"1.00\",\"nome\":\"Mercadopago Burger\",\"observacao\":\"Nu00e3o\"}}]}'),
(330, '[]'),
(331, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"51503de86b42340a9641140866534807\",\"attributes\":{\"preco\":\"1\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(332, '1'),
(333, '[]'),
(334, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"51503de86b42340a9641140866534807\",\"attributes\":{\"preco\":\"1\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(335, '1'),
(336, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"51503de86b42340a9641140866534807\",\"attributes\":{\"preco\":\"1\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(337, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"19cbe0ad9409f76e70bf2f02a4bbc3cb\",\"attributes\":{\"preco\":\"1,00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(338, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"19cbe0ad9409f76e70bf2f02a4bbc3cb\",\"attributes\":{\"preco\":\"1,00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(339, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"e72a21af7732f6b14c8a3cb0c0e722aa\",\"attributes\":{\"preco\":\"1.00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(340, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"e72a21af7732f6b14c8a3cb0c0e722aa\",\"attributes\":{\"preco\":\"1.00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(341, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"e72a21af7732f6b14c8a3cb0c0e722aa\",\"attributes\":{\"preco\":\"1.00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros_delivery`
--

CREATE TABLE `bairros_delivery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `taxa` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bairros_delivery`
--

INSERT INTO `bairros_delivery` (`id`, `user_id`, `uf`, `cidade`, `bairro`, `taxa`) VALUES
(44, 22, '', '', 'Centro ', 1.00),
(45, 24, '', '', 'Jardim São Pedro ', 5.00),
(46, 24, '', '', 'Vila Suissa ', 6.00),
(47, 24, '', '', 'Socorro ', 8.00),
(48, 24, '', '', 'Butujuru ', 10.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_promocional`
--

CREATE TABLE `banner_promocional` (
  `id_banner` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `confirma_banner` int(11) NOT NULL,
  `img_banner` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banner_promocional`
--

INSERT INTO `banner_promocional` (`id_banner`, `user_id`, `confirma_banner`, `img_banner`) VALUES
(4, 22, 1, 'images/2021/03/thincrust-pizza-500x270.png'),
(5, 25, 1, 'images/2021/03/design-sem-nome-5.png'),
(8, 1, 1, 'images/2021/06/mcdonalds-lanche-ilustra1-pozk.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes_site`
--

CREATE TABLE `configuracoes_site` (
  `id_config` int(11) NOT NULL,
  `nome_site` varchar(100) NOT NULL,
  `titulo_site` varchar(250) NOT NULL,
  `descricao_site` varchar(250) NOT NULL,
  `palavas_chaves` varchar(500) NOT NULL,
  `tel_adm` varchar(100) NOT NULL,
  `tel_financeiro` varchar(100) NOT NULL,
  `email_suporte` varchar(250) NOT NULL,
  `h_suporte` varchar(250) NOT NULL,
  `btn_link_youtube` varchar(250) NOT NULL,
  `link_do_face` varchar(500) NOT NULL,
  `link_do_insta` varchar(500) NOT NULL,
  `link_do_youtube` varchar(500) NOT NULL,
  `nome_plano_um` varchar(100) NOT NULL,
  `v_plano_um` int(11) NOT NULL,
  `dias_plano_um` int(11) NOT NULL,
  `nome_plano_dois` varchar(100) NOT NULL,
  `v_plano_dois` int(11) NOT NULL,
  `dias_plano_dois` int(11) NOT NULL,
  `nome_plano_tres` varchar(100) NOT NULL,
  `v_plano_tres` int(11) NOT NULL,
  `dias_plano_tres` int(11) NOT NULL,
  `dias_testes` int(11) NOT NULL,
  `public_key_mp` varchar(500) NOT NULL,
  `access_token_mp` varchar(500) NOT NULL,
  `email_pagseguro` varchar(60) NOT NULL,
  `token_pagseguro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `configuracoes_site`
--

INSERT INTO `configuracoes_site` (`id_config`, `nome_site`, `titulo_site`, `descricao_site`, `palavas_chaves`, `tel_adm`, `tel_financeiro`, `email_suporte`, `h_suporte`, `btn_link_youtube`, `link_do_face`, `link_do_insta`, `link_do_youtube`, `nome_plano_um`, `v_plano_um`, `dias_plano_um`, `nome_plano_dois`, `v_plano_dois`, `dias_plano_dois`, `nome_plano_tres`, `v_plano_tres`, `dias_plano_tres`, `dias_testes`, `public_key_mp`, `access_token_mp`, `email_pagseguro`, `token_pagseguro`) VALUES
(1, 'Mult Delivery com Busca', 'Delivery online via WhatsApp integrado com Mercadopago.', 'Crie um cardápio online atraente que inspire o apetite.', 'pizza, delivery food, fast food, sushi, take away, chinese, italian food', '11111111111', '11111111111', 'admin@scriptphp.ru', '09:00hs ás 21:00hs', 'https://www.youtube.com', 'facebook', 'instagram', 'youtube', 'PLANO MENSAL', 10, 30, 'PLANO TRIMESTRAL', 30, 90, 'PLANO ANUAL', 120, 365, 5, 'APP_USR-348eb230-4131-4bc8-93f5-4ce1f4c92140', 'APP_USR-711233599381123-022201-7cc1278d8040b35cfxa0bc58ba86a9c9-404965059', 'vinicius.danger777@gmail.com', 'preguiça de ir pegar no site');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupom_desconto`
--

CREATE TABLE `cupom_desconto` (
  `id_cupom` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ativacao` varchar(50) NOT NULL,
  `type_discount` tinyint(4) NOT NULL,
  `porcentagem` int(11) NOT NULL,
  `fixed_value` decimal(10,2) NOT NULL,
  `data_validade` date NOT NULL,
  `total_vezes` int(11) NOT NULL,
  `mostrar_site` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cupom_desconto`
--

INSERT INTO `cupom_desconto` (`id_cupom`, `user_id`, `ativacao`, `type_discount`, `porcentagem`, `fixed_value`, `data_validade`, `total_vezes`, `mostrar_site`) VALUES
(14, 1, 'DESCONTO50', 2, 0, 50.00, '2021-12-31', 996, 0),
(15, 1, 'CUPOMFIXO', 2, 0, 10.00, '2021-03-31', 58, 1),
(17, 1, 'PEDE85', 1, 85, 0.00, '2021-04-30', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `views`
--

CREATE TABLE `views` (
  `id_views` int(11) NOT NULL,
  `contar` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `views`
--

INSERT INTO `views` (`id_views`, `contar`, `user_id`) VALUES
(21, 791, 1),
(30, 6, 31),
(31, 3, 33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_cat`
--

CREATE TABLE `ws_adicionais_cat` (
  `id` int(11) NOT NULL,
  `id_itens` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `name_adicionais_cat` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `img_cat` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ws_adicionais_cat`
--

INSERT INTO `ws_adicionais_cat` (`id`, `id_itens`, `user_id`, `id_cat`, `name_adicionais_cat`, `amount`, `pay`, `img_cat`) VALUES
(78, 150, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(76, 148, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(75, 150, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(74, 148, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(72, 150, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(73, 149, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(71, 149, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(69, 146, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(77, 149, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(68, 145, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(65, 146, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(64, 145, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(63, 144, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(70, 148, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(62, 143, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(66, 143, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(67, 144, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(79, 154, 18, 115, 'Sabores', 2, 1, 'img-header.png'),
(80, 154, 18, 115, 'frutas', 1, 1, 'img-header.png'),
(81, 154, 18, 115, 'coberturas', 1, 1, ''),
(83, 155, 19, 116, 'Toppings', 5, 0, ''),
(84, 156, 19, 116, 'Toppings', 5, 0, ''),
(85, 158, 1, 118, 'Adicionais', -1, 1, 'adicionar.jpg'),
(86, 159, 1, 118, 'Adicionais', -1, 1, 'adicionar.jpg'),
(87, 158, 1, 118, 'Adicionais Grátis', 2, 0, 'adicionar.jpg'),
(88, 159, 1, 118, 'Adicionais Grátis', 2, 0, 'adicionar.jpg'),
(89, 161, 22, 120, 'Pimentão', -1, 0, 'hot-dog.png'),
(95, 175, 1, 127, 'Complemento', 3, 0, ''),
(94, 175, 1, 127, 'Tipo de Carne', 2, 0, ''),
(93, 170, 1, 114, 'Borda', 1, 1, ''),
(96, 175, 1, 127, 'Salada', 1, 0, ''),
(97, 143, 1, 44, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(98, 144, 1, 44, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(99, 145, 1, 44, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(100, 146, 1, 44, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(101, 148, 1, 113, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(102, 149, 1, 113, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(103, 150, 1, 113, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(104, 151, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(105, 152, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(106, 153, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(107, 170, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(108, 171, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(109, 172, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(110, 173, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(111, 174, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(112, 158, 1, 118, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(113, 159, 1, 118, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(114, 162, 1, 121, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(115, 169, 1, 127, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(116, 175, 1, 127, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(117, 179, 1, 129, 'Adicionais Grátis', 1, 0, 'adicionar.jpg'),
(118, 180, 1, 129, 'Adicionais Grátis', 1, 0, 'adicionar.jpg'),
(119, 179, 1, 129, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(120, 180, 1, 129, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(123, 184, 1, 132, 'Molhos', 1, 0, 'combohamburgue.png'),
(124, 184, 1, 132, 'Adicionais', -1, 1, 'petisco.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_itens`
--

CREATE TABLE `ws_adicionais_itens` (
  `id_adicionais` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `categorias_adicional` varchar(1000) NOT NULL,
  `nome_adicional` varchar(250) NOT NULL,
  `valor_adicional` decimal(10,2) NOT NULL,
  `medida_adicional` varchar(10) NOT NULL,
  `status_adicional` int(1) NOT NULL,
  `id_adicionais_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_adicionais_itens`
--

INSERT INTO `ws_adicionais_itens` (`id_adicionais`, `user_id`, `categorias_adicional`, `nome_adicional`, `valor_adicional`, `medida_adicional`, `status_adicional`, `id_adicionais_cat`) VALUES
(204, 1, '44', 'Hamburger 150g', 5.00, 'UN', 1, 63),
(205, 1, '44', 'Hamburger 150g', 5.00, 'UN', 1, 62),
(201, 1, '44', 'Queijo Mussrela', 1.00, 'UN', 1, 62),
(202, 1, '44', 'Hamburger 150g', 5.00, 'UN', 1, 65),
(203, 1, '44', 'Hamburger 150g', 5.00, 'UN', 1, 64),
(209, 1, '44', 'Catupiry', 1.50, 'UN', 1, 62),
(208, 1, '44', 'Catupiry', 1.50, 'UN', 1, 63),
(207, 1, '44', 'Catupiry', 1.50, 'UN', 1, 64),
(206, 1, '44', 'Catupiry', 1.50, 'UN', 1, 65),
(200, 1, '44', 'Queijo Mussrela', 1.00, 'UN', 1, 63),
(199, 1, '44', 'Queijo Mussrela', 1.00, 'UN', 1, 64),
(198, 1, '44', 'Queijo Mussrela', 1.00, 'UN', 1, 65),
(197, 1, '44', 'Cheddar', 1.00, 'UN', 1, 62),
(193, 1, '44', 'Bacon', 2.50, 'UN', 1, 62),
(194, 1, '44', 'Cheddar', 1.00, 'UN', 1, 65),
(195, 1, '44', 'Cheddar', 1.00, 'UN', 1, 64),
(196, 1, '44', 'Cheddar', 1.00, 'UN', 1, 63),
(192, 1, '44', 'Bacon', 2.50, 'UN', 1, 63),
(191, 1, '44', 'Bacon', 2.50, 'UN', 1, 64),
(190, 1, '44', 'Bacon', 2.50, 'UN', 1, 65),
(215, 1, '118', 'Bacon', 2.00, 'UN', 1, 85),
(216, 1, '118', 'Bacon', 2.00, 'UN', 1, 86),
(217, 1, '118', 'Ovo', 1.00, 'UN', 1, 85),
(218, 1, '118', 'Ovo', 1.00, 'UN', 1, 86),
(219, 1, '44', 'teste', 1.00, 'UN', 1, 62),
(220, 1, '44', 'teste', 1.00, 'UN', 1, 63),
(221, 1, '44', 'teste', 1.00, 'UN', 1, 64),
(222, 1, '44', 'teste', 1.00, 'UN', 1, 65),
(223, 1, '44', 'TESTE 2', 1.00, 'UN', 1, 62),
(224, 1, '44', 'TESTE 2', 1.00, 'UN', 1, 63),
(225, 1, '44', 'TESTE 2', 1.00, 'UN', 1, 64),
(231, 1, '114', 'Catupiry1', 4.00, 'UN', 1, 93),
(232, 1, '114', 'Coxinha', 8.00, 'UN', 1, 93),
(230, 1, '114', 'Cheddar', 4.00, 'UN', 1, 93),
(233, 1, '132', 'Presunto', 1.00, 'UN', 1, 124),
(234, 1, '132', 'Calabresa', 2.00, 'UN', 1, 124),
(235, 1, '132', 'Mussarela', 1.00, 'UN', 1, 124);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_itens_gratis`
--

CREATE TABLE `ws_adicionais_itens_gratis` (
  `id_adicional_gratis` int(11) NOT NULL,
  `nome_adicional_gratis` varchar(250) NOT NULL,
  `categorias_adicional_gratis` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_adicional_gratis` int(11) NOT NULL,
  `id_adicionais_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_adicionais_itens_gratis`
--

INSERT INTO `ws_adicionais_itens_gratis` (`id_adicional_gratis`, `nome_adicional_gratis`, `categorias_adicional_gratis`, `user_id`, `status_adicional_gratis`, `id_adicionais_cat`) VALUES
(40, 'Catchup', '44', 1, 1, 69),
(41, 'Catchup', '44', 1, 1, 68),
(42, 'Catchup', '44', 1, 1, 66),
(43, 'Catchup', '44', 1, 1, 67),
(44, 'Maionese', '44', 1, 1, 69),
(45, 'Maionese', '44', 1, 1, 68),
(46, 'Maionese', '44', 1, 1, 66),
(47, 'Maionese', '44', 1, 1, 67),
(48, 'Milho', '44', 1, 1, 69),
(49, 'Milho', '44', 1, 1, 68),
(50, 'Milho', '44', 1, 1, 67),
(51, 'Milho', '44', 1, 1, 66),
(52, 'Azeitona', '44', 1, 1, 69),
(53, 'Azeitona', '44', 1, 1, 68),
(54, 'Azeitona', '44', 1, 1, 66),
(55, 'Azeitona', '44', 1, 1, 67),
(56, 'Ovo de Codorna', '44', 1, 1, 69),
(57, 'Ovo de Codorna', '44', 1, 1, 68),
(58, 'Ovo de Codorna', '44', 1, 1, 66),
(59, 'Ovo de Codorna', '44', 1, 1, 67),
(60, 'Fruta Morango', '113', 1, 1, 71),
(61, 'Fruta Morango', '113', 1, 1, 70),
(62, 'Fruta Morango', '113', 1, 1, 72),
(63, 'Fruta Banana', '113', 1, 1, 70),
(64, 'Fruta Banana', '113', 1, 1, 71),
(65, 'Fruta Banana', '113', 1, 1, 72),
(66, 'Fruta Manga', '113', 1, 1, 70),
(67, 'Fruta Manga', '113', 1, 1, 71),
(68, 'Fruta Manga', '113', 1, 1, 72),
(69, 'Fruta Uva', '113', 1, 1, 70),
(70, 'Fruta Uva', '113', 1, 1, 71),
(71, 'Fruta Uva', '113', 1, 1, 72),
(72, 'Fruta Pêssego', '113', 1, 1, 70),
(73, 'Fruta Pêssego', '113', 1, 1, 71),
(74, 'Fruta Pêssego', '113', 1, 1, 72),
(75, 'Leite em Pó', '113', 1, 1, 73),
(76, 'Leite em Pó', '113', 1, 1, 74),
(77, 'Leite em Pó', '113', 1, 1, 75),
(78, 'Granola', '113', 1, 1, 73),
(79, 'Granola', '113', 1, 1, 74),
(80, 'Granola', '113', 1, 1, 75),
(81, 'Paçoca', '113', 1, 1, 74),
(82, 'Paçoca', '113', 1, 1, 75),
(83, 'Paçoca', '113', 1, 1, 73),
(84, 'Amendoim', '113', 1, 1, 73),
(85, 'Amendoim', '113', 1, 1, 74),
(86, 'Amendoim', '113', 1, 1, 75),
(87, 'Chocolate em Confeti', '113', 1, 1, 75),
(88, 'Chocolate em Confeti', '113', 1, 1, 74),
(89, 'Chocolate em Confeti', '113', 1, 1, 73),
(90, 'Granulado', '113', 1, 1, 73),
(91, 'Granulado', '113', 1, 1, 74),
(92, 'Granulado', '113', 1, 1, 75),
(93, 'Nutela', '113', 1, 1, 73),
(94, 'Nutela', '113', 1, 1, 74),
(95, 'Nutela', '113', 1, 1, 75),
(96, 'Chocoball', '113', 1, 1, 73),
(97, 'Chocoball', '113', 1, 1, 74),
(98, 'Chocoball', '113', 1, 1, 75),
(99, 'Leite Condensado', '113', 1, 1, 78),
(100, 'Leite Condensado', '113', 1, 1, 76),
(101, 'Leite Condensado', '113', 1, 1, 77),
(102, 'Morango', '113', 1, 1, 78),
(103, 'Morango', '113', 1, 1, 76),
(104, 'Morango', '113', 1, 1, 77),
(105, 'Chocolate', '113', 1, 1, 78),
(106, 'Chocolate', '113', 1, 1, 76),
(107, 'Chocolate', '113', 1, 1, 77),
(108, 'Kiwi', '113', 1, 1, 78),
(109, 'Kiwi', '113', 1, 1, 76),
(110, 'Kiwi', '113', 1, 1, 77),
(115, 'Maionese Caseira', '118', 1, 1, 87),
(116, 'Maionese Caseira', '118', 1, 1, 88),
(117, 'Catchup', '118', 1, 1, 87),
(118, 'Catchup', '118', 1, 1, 88),
(119, 'Azeitona', '118', 1, 1, 87),
(120, 'Azeitona', '118', 1, 1, 88),
(121, 'Carne Seca', '127', 1, 1, 94),
(122, 'Frango a Parmegiana', '127', 1, 1, 94),
(123, 'Granulado', '44', 1, 1, 69),
(124, 'Granulado', '44', 1, 1, 68),
(125, 'Granulado', '44', 1, 1, 66),
(126, 'Granulado', '44', 1, 1, 67),
(127, 'Granulado', '44', 1, 1, 97),
(128, 'Granulado', '44', 1, 1, 98),
(129, 'Granulado', '44', 1, 1, 99),
(130, 'Granulado', '44', 1, 1, 100),
(131, 'Granulado', '44', 1, 1, 69),
(132, 'Granulado', '44', 1, 1, 68),
(133, 'Granulado', '44', 1, 1, 66),
(134, 'Granulado', '44', 1, 1, 67),
(135, 'Granulado', '44', 1, 1, 97),
(136, 'Granulado', '44', 1, 1, 98),
(137, 'Granulado', '44', 1, 1, 99),
(138, 'Granulado', '44', 1, 1, 100),
(139, 'Granulado', '113', 1, 1, 78),
(140, 'Granulado', '113', 1, 1, 76),
(141, 'Granulado', '113', 1, 1, 75),
(142, 'Granulado', '113', 1, 1, 74),
(143, 'Granulado', '113', 1, 1, 72),
(144, 'Granulado', '113', 1, 1, 73),
(145, 'Granulado', '113', 1, 1, 71),
(146, 'Granulado', '113', 1, 1, 77),
(147, 'Granulado', '113', 1, 1, 70),
(148, 'Granulado', '113', 1, 1, 101),
(149, 'Granulado', '113', 1, 1, 102),
(150, 'Granulado', '113', 1, 1, 103),
(151, 'Granulado', '114', 1, 1, 104),
(152, 'Granulado', '114', 1, 1, 105),
(153, 'Granulado', '114', 1, 1, 106),
(154, 'Granulado', '114', 1, 1, 107),
(155, 'Granulado', '114', 1, 1, 108),
(156, 'Granulado', '114', 1, 1, 109),
(157, 'Granulado', '114', 1, 1, 110),
(158, 'Granulado', '114', 1, 1, 111),
(159, 'Granulado', '118', 1, 1, 87),
(160, 'Granulado', '118', 1, 1, 88),
(161, 'Granulado', '118', 1, 1, 112),
(162, 'Granulado', '118', 1, 1, 113),
(163, 'Granulado', '121', 1, 1, 114),
(164, 'Granulado', '127', 1, 1, 95),
(165, 'Granulado', '127', 1, 1, 94),
(166, 'Granulado', '127', 1, 1, 96),
(167, 'Granulado', '127', 1, 1, 115),
(168, 'Granulado', '127', 1, 1, 116),
(169, 'Teste 1', '129', 1, 1, 117),
(170, 'Teste 1', '129', 1, 1, 118),
(171, 'Teste 2', '129', 1, 1, 117),
(172, 'Teste 2', '129', 1, 1, 118),
(173, 'Barbecue', '132', 1, 1, 123),
(174, 'Verde', '132', 1, 1, 123),
(175, 'Maionese de Bacon', '132', 1, 1, 123);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_admin`
--

CREATE TABLE `ws_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `admin_senha` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `admin_ultimoacesso` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `admin_level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_admin`
--

INSERT INTO `ws_admin` (`admin_id`, `admin_email`, `admin_senha`, `admin_ultimoacesso`, `admin_level`) VALUES
(1, 'demo@demo.com', '53444f91e698c0c7caa2dbc3bdbf93fc', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_cat`
--

CREATE TABLE `ws_cat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_cat` varchar(250) NOT NULL,
  `desc_cat` varchar(500) NOT NULL,
  `icon_cat` varchar(500) NOT NULL,
  `dias_semana` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_cat`
--

INSERT INTO `ws_cat` (`id`, `user_id`, `nome_cat`, `desc_cat`, `icon_cat`, `dias_semana`) VALUES
(44, 1, 'Hamburgueria', 'null', 'img/burger.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(113, 1, 'Açaí', 'null', 'img/acai.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(114, 1, 'Pizzaria', 'null', 'img/pizza.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(118, 1, 'Dogão', 'null', 'img/hot-dog.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(121, 1, 'Ferramentas', 'Todos os tipo de ferramentas para o seu carro', 'null', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(127, 1, 'Marmitas', 'Arroz, Feijão, Farofa e Fritas', 'img/bandeja.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(128, 29, 'Café da Manhã', 'TESTE', 'img/hot-dog.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(129, 1, 'Bebidas', 'TESTE 2021', 'img/water.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(130, 31, 'Pizza Grande', 'null', 'img/combopizza.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(131, 31, 'Bebida', 'null', 'img/can.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(132, 1, 'Bebidas Alcólicas', 'Nossos Burger artesanais, são preparados com o melhor blend de carnes, feito na churrasqueira, com um sabor típico, e acompanhado de produtos de ALTÍSSIMA qualidade. Peça seu hambúrguer artesanal hoje mesmo.', 'img/burger.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_datas_close`
--

CREATE TABLE `ws_datas_close` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_datas_close`
--

INSERT INTO `ws_datas_close` (`id`, `user_id`, `data`) VALUES
(18, 1, '14/01/2019'),
(20, 1, '12/01/2019'),
(22, 1, '03/05/2020'),
(24, 1, '16/05/2020');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_empresa`
--

CREATE TABLE `ws_empresa` (
  `id_empresa` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_empresa` varchar(250) NOT NULL,
  `descricao_empresa` varchar(200) NOT NULL,
  `nome_empresa_link` varchar(250) NOT NULL,
  `cnpj_empresa` varchar(250) NOT NULL,
  `email_empresa` varchar(250) NOT NULL,
  `telefone_empresa` varchar(250) NOT NULL,
  `end_rua_n_empresa` varchar(250) NOT NULL,
  `end_bairro_empresa` varchar(250) NOT NULL,
  `cidade_empresa` varchar(250) NOT NULL,
  `end_uf_empresa` varchar(250) NOT NULL,
  `cep_empresa` varchar(250) NOT NULL,
  `img_logo` varchar(300) NOT NULL,
  `img_header` varchar(400) NOT NULL,
  `facebook_status` int(11) NOT NULL,
  `twitter_status` int(11) NOT NULL,
  `instagram_status` int(11) NOT NULL,
  `facebook_empresa` varchar(600) NOT NULL,
  `instagram_empresa` varchar(600) NOT NULL,
  `twitter_empresa` varchar(600) NOT NULL,
  `genero_empresa` varchar(255) NOT NULL,
  `config_segunda` varchar(250) NOT NULL,
  `config_terca` varchar(250) NOT NULL,
  `config_quarta` varchar(250) NOT NULL,
  `config_quinta` varchar(250) NOT NULL,
  `config_sexta` varchar(250) NOT NULL,
  `config_sabado` varchar(250) NOT NULL,
  `config_domingo` varchar(250) NOT NULL,
  `config_segundaa` varchar(50) NOT NULL,
  `config_tercaa` varchar(50) NOT NULL,
  `config_quartaa` varchar(50) NOT NULL,
  `config_quintaa` varchar(50) NOT NULL,
  `config_sextaa` varchar(50) NOT NULL,
  `config_sabadoo` varchar(50) NOT NULL,
  `config_domingoo` varchar(50) NOT NULL,
  `segunda_manha_de` varchar(250) NOT NULL,
  `segunda_manha_ate` varchar(250) NOT NULL,
  `segunda_tarde_de` varchar(250) NOT NULL,
  `segunda_tarde_ate` varchar(250) NOT NULL,
  `terca_manha_de` varchar(250) NOT NULL,
  `terca_manha_ate` varchar(250) NOT NULL,
  `terca_tarde_de` varchar(250) NOT NULL,
  `terca_tarde_ate` varchar(250) NOT NULL,
  `quarta_manha_de` varchar(250) NOT NULL,
  `quarta_manha_ate` varchar(250) NOT NULL,
  `quarta_tarde_de` varchar(250) NOT NULL,
  `quarta_tarde_ate` varchar(250) NOT NULL,
  `quinta_manha_de` varchar(250) NOT NULL,
  `quinta_manha_ate` varchar(250) NOT NULL,
  `quinta_tarde_de` varchar(250) NOT NULL,
  `quinta_tarde_ate` varchar(250) NOT NULL,
  `sexta_manha_de` varchar(250) NOT NULL,
  `sexta_manha_ate` varchar(250) NOT NULL,
  `sexta_tarde_de` varchar(250) NOT NULL,
  `sexta_tarde_ate` varchar(250) NOT NULL,
  `sabado_manha_de` varchar(250) NOT NULL,
  `sabado_manha_ate` varchar(250) NOT NULL,
  `sabado_tarde_de` varchar(250) NOT NULL,
  `sabado_tarde_ate` varchar(250) NOT NULL,
  `domingo_manha_de` varchar(250) NOT NULL,
  `domingo_manha_ate` varchar(250) NOT NULL,
  `domingo_tarde_de` varchar(250) NOT NULL,
  `domingo_tarde_ate` varchar(250) NOT NULL,
  `config_delivery` decimal(10,2) NOT NULL,
  `config_delivery_free` decimal(10,2) NOT NULL,
  `op_entrar_btn` int(11) NOT NULL,
  `empresa_data_renovacao` date NOT NULL,
  `msg_tempo_delivery` varchar(150) NOT NULL,
  `msg_tempo_buscar` varchar(150) NOT NULL,
  `minimo_delivery` decimal(10,2) NOT NULL,
  `confirm_delivery` varchar(20) NOT NULL,
  `confirm_balcao` varchar(20) NOT NULL,
  `confirm_mesa` varchar(20) NOT NULL,
  `cor_topo` varchar(250) NOT NULL,
  `cor_loading` varchar(250) NOT NULL,
  `cor_titulo_produtos` varchar(250) NOT NULL,
  `btn_whats` tinyint(4) NOT NULL DEFAULT 0,
  `token_blocked` tinyint(4) NOT NULL DEFAULT 1,
  `type_pay` tinyint(4) NOT NULL,
  `access_token_mp` varchar(250) NOT NULL,
  `email_pagseguro` varchar(60) NOT NULL,
  `token_pagseguro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_empresa`
--

INSERT INTO `ws_empresa` (`id_empresa`, `user_id`, `nome_empresa`, `descricao_empresa`, `nome_empresa_link`, `cnpj_empresa`, `email_empresa`, `telefone_empresa`, `end_rua_n_empresa`, `end_bairro_empresa`, `cidade_empresa`, `end_uf_empresa`, `cep_empresa`, `img_logo`, `img_header`, `facebook_status`, `twitter_status`, `instagram_status`, `facebook_empresa`, `instagram_empresa`, `twitter_empresa`, `genero_empresa`, `config_segunda`, `config_terca`, `config_quarta`, `config_quinta`, `config_sexta`, `config_sabado`, `config_domingo`, `config_segundaa`, `config_tercaa`, `config_quartaa`, `config_quintaa`, `config_sextaa`, `config_sabadoo`, `config_domingoo`, `segunda_manha_de`, `segunda_manha_ate`, `segunda_tarde_de`, `segunda_tarde_ate`, `terca_manha_de`, `terca_manha_ate`, `terca_tarde_de`, `terca_tarde_ate`, `quarta_manha_de`, `quarta_manha_ate`, `quarta_tarde_de`, `quarta_tarde_ate`, `quinta_manha_de`, `quinta_manha_ate`, `quinta_tarde_de`, `quinta_tarde_ate`, `sexta_manha_de`, `sexta_manha_ate`, `sexta_tarde_de`, `sexta_tarde_ate`, `sabado_manha_de`, `sabado_manha_ate`, `sabado_tarde_de`, `sabado_tarde_ate`, `domingo_manha_de`, `domingo_manha_ate`, `domingo_tarde_de`, `domingo_tarde_ate`, `config_delivery`, `config_delivery_free`, `op_entrar_btn`, `empresa_data_renovacao`, `msg_tempo_delivery`, `msg_tempo_buscar`, `minimo_delivery`, `confirm_delivery`, `confirm_balcao`, `confirm_mesa`, `cor_topo`, `cor_loading`, `cor_titulo_produtos`, `btn_whats`, `token_blocked`, `type_pay`, `access_token_mp`, `email_pagseguro`, `token_pagseguro`) VALUES
(21, 1, 'Demonstração', 'Mult Delivery', 'Demo', '', 'admin@scriptphp.ru', '11999998888', 'Av Andromeda / 2023', 'Bosque dos Eucaliptos', 'São José dos Campos', 'SP', '08200-030', 'images/2021/06/mcdonalds-logo.png', 'images/2021/06/filepicker-nndrkyvwrqqsq7523g8t-mcdonalds.jpg', 2, 2, 2, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.facebook.com/', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', '00:00', '23:59', 0.00, 50.00, 1, '2021-12-10', 'Entre 30 e 60 minutos.', 'Em 30 minutos.', 1.00, 'true', 'true', 'true', '#d20404', '#d60a0a', '#ffe042', 0, 0, 0, 'APP_USR-1134325993121212-025551-7cc111123saddsasac58ba86a9c9-41233311', 'contato@dominio.com.br', 'ddd34124123-ff55-43de-a243-1d612312qsqddqddasb38d123123123b9ef3-c0c123qewqe-qeasasd-sdaad-caa37b5bed'),
(57, 33, 'Loja Teste', '', 'lojateste', '', 'teste@teste.com', '74999024013', 'Rua  F', 'Centro', 'Tomé-Açú', 'PA', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0, '2030-12-01', '', '', 0.00, '', '', '', '', '', '', 0, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_formas_pagamento`
--

CREATE TABLE `ws_formas_pagamento` (
  `id_f_pagamento` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_pagamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_formas_pagamento`
--

INSERT INTO `ws_formas_pagamento` (`id_f_pagamento`, `user_id`, `f_pagamento`) VALUES
(16, 1, 'Dinheiro'),
(17, 1, 'PIX'),
(22, 31, 'Cartão de crédito'),
(23, 31, 'Dinheiro'),
(24, 31, 'Cartão de Débito'),
(25, 1, 'Cartão de Crédito (Na entrega)'),
(26, 1, 'Cartão de Débito (Na entrega)'),
(27, 1, 'Cartão de Credito (Online)'),
(28, 1, 'Cartão de Débito (Online)'),
(29, 1, 'PicPay'),
(30, 1, 'Link de Pagamento (Online)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_fuso_horario`
--

CREATE TABLE `ws_fuso_horario` (
  `id_fuso` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fuso_horario` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_fuso_horario`
--

INSERT INTO `ws_fuso_horario` (`id_fuso`, `user_id`, `fuso_horario`) VALUES
(1, 1, 'America/Sao_Paulo'),
(2, 16, 'America/Sao_Paulo'),
(3, 22, 'America/Sao_Paulo'),
(4, 32, 'America/Fortaleza');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_impressora`
--

CREATE TABLE `ws_impressora` (
  `id_impressora` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_impressora` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_impressora`
--

INSERT INTO `ws_impressora` (`id_impressora`, `user_id`, `nome_impressora`) VALUES
(1, 1, 'COM6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_itens`
--

CREATE TABLE `ws_itens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `img_item` varchar(500) NOT NULL,
  `nome_item` varchar(250) NOT NULL,
  `descricao_item` varchar(500) NOT NULL,
  `preco_item` decimal(10,2) NOT NULL,
  `config_total_s` int(11) NOT NULL,
  `disponivel` int(11) NOT NULL,
  `dia_semana` varchar(500) NOT NULL,
  `number_adicional` int(11) NOT NULL,
  `number_adicional_pago` int(11) NOT NULL,
  `posicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_itens`
--

INSERT INTO `ws_itens` (`id`, `user_id`, `id_cat`, `img_item`, `nome_item`, `descricao_item`, `preco_item`, `config_total_s`, `disponivel`, `dia_semana`, `number_adicional`, `number_adicional_pago`, `posicao`) VALUES
(143, 1, 44, 'images/2021/03/mercadopago-1-e1566506704359-770x570.jpg', 'Mercadopago Burger', 'Teste para o módulo de pagamento online do Mercadopago. Após realizar o pagamento você será redirecionado para uma página do Whatsapp Web para finalizar o pedido.', 1.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 6),
(144, 1, 44, 'images/2021/03/296.jpg', 'Texas Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', 10.00, 0, 0, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(145, 1, 44, 'images/2021/03/242-1615752946.jpg', 'Seatle Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', 15.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 2),
(146, 1, 44, 'images/2021/03/270-1615752989.jpg', 'Chicago Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', 20.00, 0, 0, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 4),
(148, 1, 113, 'images/2021/03/252.jpg', 'Copo de Açaí', 'Açaí com leite, banana e morango', 0.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(149, 1, 113, 'images/2021/03/221.jpg', 'Copo de Açaí Tropical', 'Açaí com leite, banana e morango', 0.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(150, 1, 113, 'images/2021/03/255.jpg', 'Copo de Açaí Frozen', 'Açaí com leite, banana e morango', 0.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(151, 1, 114, 'images/2021/03/pizza-meio-a-meio.png', 'Calabresa', 'Pizza Americana, com Frango e Catupiry', 25.00, 0, 1, 'null', 0, 0, 0),
(152, 1, 114, 'images/2021/03/797.jpg', 'Pepperoni com Cream Cheese', 'Pizza Pepperoni com Cream Cheese', 50.00, 0, 0, 'null', 0, 0, 1),
(153, 1, 114, 'images/2021/03/808.jpg', 'Carne Seca com CHeddar', 'Pizza Carne Seca com CHeddar', 38.00, 0, 0, 'null', 0, 0, 0),
(158, 1, 118, 'false', 'HOT-DOG TRADICIONAL', 'teste', 8.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(159, 1, 118, 'false', 'HOT-DOG AMERICANO', 'teste232', 10.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(162, 1, 121, 'images/2021/03/download.jpg', 'ALICATE', 'XXX XXX XXX XXX', 1.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(169, 1, 127, 'images/2021/03/logotipo-1617202083.png', 'Frango a parmegiana', 'Arroz, Feijão, Farofa e Fritas', 16.00, 0, 1, 'Domingo,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(170, 1, 114, 'images/2021/04/triple-mustard-bacon-cheese-burger800x800.jpg', 'PIZZA GRANDE', '.', 0.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(171, 1, 114, 'false', 'Portuguesa', '.', 30.00, 0, 0, 'null', 0, 0, 0),
(172, 1, 114, 'false', 'Frango com Catupiry', '.', 35.00, 0, 0, 'null', 0, 0, 0),
(173, 1, 114, 'false', '4 Queijos', '.', 38.00, 0, 0, 'null', 0, 0, 0),
(174, 1, 114, 'false', 'Mussarela', 'Mussarela no capricho,', 20.00, 0, 1, 'null', 0, 0, 0),
(175, 1, 127, 'false', 'Marmita com 2 pedaços de carne', 'Monte sua marmita', 15.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(176, 29, 128, 'false', 'TESTEEEEE', 'GFDGFDGFDGDG', 19.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(177, 29, 128, 'false', 'TESTE 01', 'GGFDG', 29.22, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(178, 29, 128, 'false', 'TESTE 02', 'GDFGDFGDF', 99.99, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(179, 1, 129, 'false', 'PRODUTO TESTE', 'PRODUTO TESTE', 19.99, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 3, 0, 0),
(180, 1, 129, 'false', 'PRODUTO TEST 1', 'PRODUTO TEST 1', 19.99, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(181, 31, 130, 'images/2021/04/3333-1617404447.png', 'Pizza Calabreza', 'Pizza de Calabreza', 32.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 1, 2, 0),
(182, 31, 130, 'false', 'Pizza Calabreza 2', 'Calabreza especial', 33.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(183, 31, 131, 'images/2021/04/coca-600.jpg', 'COCA Cola 600', 'refrigerante coca cola', 4.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(184, 1, 132, 'images/2021/04/images-42.jpeg', 'Burguer kids', 'Seu filho vai adorar nosso lanche kids', 12.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(185, 1, 132, 'false', 'Mercadopago Burger', 'a', 1.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_motoboys`
--

CREATE TABLE `ws_motoboys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deliveryman_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deliveryman_phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_motoboys`
--

INSERT INTO `ws_motoboys` (`id`, `user_id`, `deliveryman_name`, `deliveryman_phone_number`) VALUES
(8, 1, 'Sonic', '(41) 99244-0825'),
(9, 1, 'Ligeirinho', '(41) 87878-7878'),
(10, 1, 'Canela Fina', '(41) 57454-7454'),
(11, 22, 'Joao', '(11) 77777-7777'),
(13, 24, 'Motoboy 1', '(11) 99796-0167'),
(14, 25, 'Lucas', '(21) 99509-9795');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_observacoes`
--

CREATE TABLE `ws_observacoes` (
  `id_obs` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nome_observacao` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_observacoes`
--

INSERT INTO `ws_observacoes` (`id_obs`, `user_id`, `id_categoria`, `nome_observacao`) VALUES
(1, 1, 44, 'Bem passado'),
(2, 1, 114, 'Bordas crocantes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_opcao_complemento`
--

CREATE TABLE `ws_opcao_complemento` (
  `id_opcao_complemento` int(11) NOT NULL,
  `nome_opcao_complemento` varchar(100) NOT NULL,
  `categorias_adicional_opcao_complemento` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_opcao_complemento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_opcao_complemento`
--

INSERT INTO `ws_opcao_complemento` (`id_opcao_complemento`, `nome_opcao_complemento`, `categorias_adicional_opcao_complemento`, `user_id`, `status_opcao_complemento`) VALUES
(5, 'Hamburger Mal Passado', '44', 1, 1),
(6, 'Hamburger Ao Ponto', '44', 1, 1),
(7, 'Hamburger Bem Passado', '44', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_opcoes_itens`
--

CREATE TABLE `ws_opcoes_itens` (
  `id_option` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nome_option` varchar(250) NOT NULL,
  `valor_tamanho` decimal(10,2) NOT NULL,
  `meio_a_meio` varchar(50) NOT NULL,
  `meio_a_meio_tipo` int(11) NOT NULL,
  `total_qtd_itens` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_opcoes_itens`
--

INSERT INTO `ws_opcoes_itens` (`id_option`, `user_id`, `id_tipo`, `nome_option`, `valor_tamanho`, `meio_a_meio`, `meio_a_meio_tipo`, `total_qtd_itens`) VALUES
(83, 1, 57, '250 ml', 15.00, 'null', 1, 'null'),
(84, 1, 57, '500 ml', 20.00, 'null', 1, 'null'),
(85, 1, 57, '1 L', 35.00, 'null', 1, 'null'),
(86, 1, 58, 'Familia', 0.00, 'true', 3, '3'),
(91, 1, 58, 'Grande', 30.00, 'true', 1, '3'),
(92, 31, 64, 'Grande', 0.00, 'true', 3, '4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_pedidos`
--

CREATE TABLE `ws_pedidos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `codigo_pedido` varchar(150) NOT NULL,
  `data` datetime NOT NULL,
  `data_chart` varchar(100) NOT NULL,
  `data_chart2` date NOT NULL,
  `resumo_pedidos` longtext NOT NULL,
  `forma_pagamento` varchar(150) NOT NULL,
  `valor_troco` decimal(10,2) NOT NULL,
  `opcao_delivery` varchar(50) NOT NULL,
  `valor_taxa` decimal(10,2) NOT NULL,
  `telefone_empresa` varchar(200) NOT NULL,
  `adicionais` varchar(250) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(150) NOT NULL,
  `rua` varchar(250) NOT NULL,
  `unidade` int(11) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `uf` varchar(10) NOT NULL,
  `complemento` varchar(250) NOT NULL,
  `observacao` varchar(250) NOT NULL,
  `name_observacao_mesa` varchar(250) NOT NULL,
  `status` varchar(150) NOT NULL,
  `mes` varchar(5) NOT NULL,
  `ano` varchar(5) NOT NULL,
  `view` int(11) NOT NULL,
  `desconto` int(11) NOT NULL,
  `confirm_whatsapp` varchar(50) NOT NULL,
  `msg_delivery_false` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_pedidos`
--

INSERT INTO `ws_pedidos` (`id`, `user_id`, `codigo_pedido`, `data`, `data_chart`, `data_chart2`, `resumo_pedidos`, `forma_pagamento`, `valor_troco`, `opcao_delivery`, `valor_taxa`, `telefone_empresa`, `adicionais`, `sub_total`, `total`, `nome`, `telefone`, `rua`, `unidade`, `bairro`, `cidade`, `uf`, `complemento`, `observacao`, `name_observacao_mesa`, `status`, `mes`, `ano`, `view`, `desconto`, `confirm_whatsapp`, `msg_delivery_false`) VALUES
(1, 1, 'PED0721-1', '2021-07-01 01:58:53', '2021-07', '2021-07-01', '<b>Qtd:</b> 3x HOT-DOG TRADICIONAL<br /><b>Adicionais grátis:</b><br />Azeitona, Granulado<br /><b>Adicionais pagos:</b><br />Bacon, <br /><b>Valor:</b> R$ 30,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', 40.00, 'true', 0.00, '11999998888', '6', 30.00, 30.00, 'Teste', '11111111111', 'Avenida Andrômeda', 123, 'Bosque dos Eucaliptos', 'São José dos Campos', 'SP', 'casa', '*Não informado*', '', 'Aberto', '07', '21', 0, 0, 'true', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_pedidos_itens`
--

CREATE TABLE `ws_pedidos_itens` (
  `ID_TABELA` int(11) NOT NULL,
  `ID_WS_PEDIDOS` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CODIGO_PEDIDO` varchar(100) NOT NULL,
  `ID_PRODUTO` int(11) NOT NULL,
  `QTDE` int(11) NOT NULL,
  `VALOR` decimal(10,2) NOT NULL,
  `ADICIONAIS` varchar(250) NOT NULL,
  `OBS` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_pedidos_itens`
--

INSERT INTO `ws_pedidos_itens` (`ID_TABELA`, `ID_WS_PEDIDOS`, `USER_ID`, `CODIGO_PEDIDO`, `ID_PRODUTO`, `QTDE`, `VALOR`, `ADICIONAIS`, `OBS`) VALUES
(69, 68, 1, 'PED0321-1', 146, 1, 20.00, '', 'Não'),
(70, 69, 1, 'PED0321-2', 148, 1, 35.00, '', 'Não'),
(71, 70, 1, 'PED0321-3', 143, 1, 6.00, 'Hamburger 150g, ', 'Não'),
(72, 71, 1, 'PED0321-4', 143, 1, 2.50, 'Catupiry, ', 'Não'),
(73, 73, 1, 'PED0321-6', 144, 1, 21.00, 'Hamburger 150g, Catupiry, Queijo Mussrela, Cheddar, Bacon, ', 'Não'),
(74, 74, 1, 'PED0321-7', 146, 1, 20.00, '', 'Não'),
(75, 75, 1, 'PED0321-8', 143, 2, 4.00, 'Queijo Mussrela, ', 'Não'),
(77, 78, 1, 'PED0321-9', 143, 1, 1.00, '', 'Não'),
(78, 79, 1, 'PED0321-10', 143, 1, 1.00, '', 'Não'),
(79, 80, 1, 'PED0321-11', 143, 1, 1.00, '', 'Não'),
(80, 81, 1, 'PED0321-12', 150, 1, 20.00, '', 'Não'),
(81, 82, 1, 'PED0321-13', 143, 1, 2.00, 'Queijo Mussrela, ', 'Não'),
(82, 83, 1, 'PED0321-14', 143, 1, 2.00, 'Queijo Mussrela, ', 'Não'),
(83, 84, 1, 'PED0321-15', 158, 1, 10.00, 'Bacon, ', 'Não'),
(84, 85, 1, 'PED0321-16', 143, 3, 18.00, 'Hamburger 150g, ', 'Não'),
(85, 87, 1, 'PED0321-18', 145, 1, 15.00, '', 'Não'),
(86, 88, 1, 'PED0321-19', 151, 1, 45.00, '', 'Não'),
(87, 89, 1, 'PED0321-20', 151, 2, 145.00, '', 'Não'),
(88, 90, 1, 'PED0321-21', 143, 1, 2.00, 'TESTE 2, ', 'Não'),
(89, 91, 1, 'PED0321-22', 151, 2, 145.00, '', 'Não'),
(98, 97, 1, 'PED0321-23', 143, 2, 2.00, '', 'Não'),
(99, 97, 1, 'PED0321-23', 145, 1, 15.00, '', 'Não'),
(100, 98, 1, 'PED0321-24', 151, 1, 72.50, '', 'Não'),
(101, 99, 1, 'PED0321-25', 148, 1, 35.00, '', 'Não'),
(104, 102, 1, 'PED0321-26', 143, 1, 1.00, '', 'Não'),
(105, 103, 1, 'PED0321-27', 143, 1, 10.50, 'Hamburger 150g, Queijo Mussrela, Cheddar, Bacon, ', 'Não'),
(106, 104, 1, 'PED0321-28', 148, 2, 70.00, '', 'Não'),
(107, 105, 1, 'PED0321-29', 158, 3, 27.00, 'Ovo, ', 'Não'),
(108, 106, 1, 'PED0321-30', 148, 2, 70.00, '', 'Não'),
(109, 107, 1, 'PED0321-31', 148, 2, 70.00, '', 'Twste'),
(110, 108, 1, 'PED0321-32', 149, 2, 40.00, '', 'Teste de pedido 1237859'),
(111, 110, 1, 'PED0321-34', 143, 1, 2.00, 'Cheddar, ', 'Não'),
(112, 111, 1, 'PED0321-35', 143, 2, 12.00, 'Catupiry, Cheddar, Bacon, ', 'Não'),
(113, 112, 1, 'PED0321-36', 158, 1, 10.00, 'Bacon, ', 'Não'),
(114, 114, 1, 'PED0321-38', 158, 2, 22.00, 'Bacon, Ovo, ', 'Não'),
(115, 115, 1, 'PED0321-39', 158, 1, 8.00, '', 'Não'),
(116, 115, 1, 'PED0321-39', 159, 1, 11.00, 'Ovo, ', 'Não'),
(117, 116, 1, 'PED0421-1', 148, 2, 30.00, '', 'Não'),
(118, 117, 1, 'PED0421-2', 152, 2, 130.00, '', 'Não'),
(119, 118, 1, 'PED0421-3', 170, 1, 30.00, '', 'Não'),
(120, 119, 1, 'PED0421-4', 148, 1, 35.00, '', 'Não'),
(121, 120, 1, 'PED0421-5', 158, 1, 11.00, 'Bacon, Ovo, ', 'Não'),
(122, 120, 1, 'PED0421-5', 143, 3, 21.00, 'Queijo Mussrela, Catupiry, Cheddar, Bacon, ', 'Não'),
(123, 120, 1, 'PED0421-5', 150, 2, 40.00, '', 'Não'),
(124, 121, 1, 'PED0421-6', 158, 1, 8.00, '', 'Não'),
(125, 121, 1, 'PED0421-6', 148, 1, 20.00, '', 'Não'),
(126, 121, 1, 'PED0421-6', 150, 1, 20.00, '', 'Não'),
(127, 122, 1, 'PED0421-7', 170, 1, 25.00, '', 'Não'),
(128, 123, 31, 'PED0421-1', 183, 2, 8.00, '', 'Não'),
(129, 124, 1, 'PED0421-8', 148, 1, 35.00, '', 'Não'),
(130, 127, 1, 'PED0421-11', 169, 2, 32.00, '', 'Não'),
(131, 128, 1, 'PED0421-12', 184, 1, 16.00, 'Presunto, Calabresa, Mussarela, ', 'Não'),
(132, 128, 1, 'PED0421-12', 184, 2, 24.00, '', 'Não'),
(133, 129, 1, 'PED0421-13', 143, 1, 7.00, 'Hamburger 150g, Queijo Mussrela, ', 'Não'),
(134, 129, 1, 'PED0421-13', 170, 1, 39.00, 'Catupiry1, ', 'Não'),
(135, 130, 1, 'PED0421-14', 158, 4, 40.00, 'Bacon, ', 'Não'),
(136, 131, 1, 'PED0421-15', 145, 1, 15.00, '', 'Não'),
(137, 131, 1, 'PED0421-15', 158, 1, 8.00, '', 'Não'),
(138, 131, 1, 'PED0421-15', 170, 1, 38.00, '', 'Não'),
(139, 132, 1, 'PED0421-16', 149, 1, 15.00, '', 'Não'),
(140, 133, 1, 'PED0421-17', 148, 1, 15.00, '', 'Não'),
(141, 136, 1, 'PED0421-20', 185, 1, 1.00, '', 'Não'),
(142, 137, 1, 'PED0421-21', 185, 1, 1.00, '', 'Não'),
(143, 138, 1, 'PED0421-22', 185, 1, 1.00, '', 'Não'),
(144, 139, 1, 'PED0421-23', 185, 1, 1.00, '', 'Não'),
(145, 140, 1, 'PED0421-24', 185, 1, 1.00, '', 'Não'),
(146, 141, 1, 'PED0421-25', 185, 1, 1.00, '', 'Não'),
(147, 142, 1, 'PED0421-26', 185, 1, 1.00, '', 'Não'),
(148, 143, 1, 'PED0421-27', 185, 1, 1.00, '', 'Não'),
(149, 144, 1, 'PED0421-28', 185, 1, 1.00, '', 'Não'),
(150, 145, 1, 'PED0421-29', 184, 1, 12.00, '', 'Não'),
(151, 146, 1, 'PED0421-30', 999, 1, 1.00, '', 'Nenhuma'),
(152, 147, 1, 'PED0421-31', 999, 1, 1.00, '', 'Nenhuma'),
(153, 148, 1, 'PED0421-32', 999, 1, 1.00, '', 'Nenhuma'),
(154, 149, 1, 'PED0421-33', 148, 1, 20.00, '', 'Não'),
(155, 150, 1, 'PED0421-34', 999, 1, 1.00, '', 'Nenhuma'),
(156, 151, 1, 'PED0421-35', 999, 1, 1.00, '', 'Nenhuma'),
(157, 152, 1, 'PED0621-1', 148, 2, 70.00, '', 'Não'),
(158, 1, 1, 'PED0721-1', 158, 3, 30.00, 'Bacon, ', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_relacao_tamanho`
--

CREATE TABLE `ws_relacao_tamanho` (
  `id_relacao` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_tamanho` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_relacao_tamanho`
--

INSERT INTO `ws_relacao_tamanho` (`id_relacao`, `id_user`, `id_item`, `id_tipo`, `id_tamanho`) VALUES
(9, 1, 139, 56, '82,81,80'),
(10, 1, 140, 56, '82,81,80'),
(11, 1, 141, 56, '82,81,80'),
(12, 1, 142, 56, '82,81,80'),
(14, 1, 148, 57, '85,84,83'),
(15, 1, 149, 57, '85,84,83'),
(16, 1, 150, 57, '85,84,83'),
(17, 1, 151, 58, '91'),
(18, 1, 152, 58, '91'),
(19, 1, 153, 58, '91'),
(23, 1, 171, 58, '91'),
(24, 1, 172, 58, '91'),
(25, 1, 173, 58, '91'),
(26, 1, 170, 58, '91'),
(27, 1, 174, 58, '86'),
(28, 31, 182, 64, '92');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_tipo_produto`
--

CREATE TABLE `ws_tipo_produto` (
  `id_tipo_produto` int(11) NOT NULL,
  `nome_tipo_produto` varchar(250) NOT NULL,
  `user_tipo_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_tipo_produto`
--

INSERT INTO `ws_tipo_produto` (`id_tipo_produto`, `nome_tipo_produto`, `user_tipo_produto`) VALUES
(57, 'Copo de Açai', 1),
(58, 'Meio a Meio', 1),
(61, 'P', 1),
(64, 'Pizza', 31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_users`
--

CREATE TABLE `ws_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_lastname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_cpf` varchar(250) NOT NULL,
  `user_telefone` varchar(250) NOT NULL,
  `user_img_perfil` varchar(250) NOT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_registration` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_ultimoacesso` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL DEFAULT 1,
  `user_plano` int(1) NOT NULL,
  `user_status` varchar(255) NOT NULL,
  `user_cont` int(11) NOT NULL,
  `user_nome_plano` varchar(300) NOT NULL,
  `user_dias_plano` int(11) NOT NULL,
  `status_assinatura_plano` varchar(300) NOT NULL,
  `codigo_assinante` varchar(60) NOT NULL,
  `user_data_renova` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_users`
--

INSERT INTO `ws_users` (`user_id`, `user_name`, `user_lastname`, `user_email`, `user_cpf`, `user_telefone`, `user_img_perfil`, `user_password`, `user_registration`, `user_ultimoacesso`, `user_level`, `user_plano`, `user_status`, `user_cont`, `user_nome_plano`, `user_dias_plano`, `status_assinatura_plano`, `codigo_assinante`, `user_data_renova`) VALUES
(1, 'Demo', 'Demoso', 'demo@demo.com', '123.123.123-12', '(11) 99999-8888', 'images/2018/07/cd-img-3.png', '53444f91e698c0c7caa2dbc3bdbf93fc', '2014-02-11 16:14:04', ' Último acesso em: 01/07/2021 20:59 IP: 177.58.193.208 ', 3, 3, '', 0, '', 0, '', '', '0000-00-00'),
(33, 'Teste', 'Teste', 'teste@teste.com', '123.123.122.12', '(11) 99999-8887', '', '53444f91e698c0c7caa2dbc3bdbf93fc', '2021-04-05 22:01:14', ' Último acesso em: 30/06/2021 22:16 IP: 177.58.193.208 ', 3, 1, '', 0, '', 0, '', '', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ateste`
--
ALTER TABLE `ateste`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bairros_delivery`
--
ALTER TABLE `bairros_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner_promocional`
--
ALTER TABLE `banner_promocional`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices para tabela `configuracoes_site`
--
ALTER TABLE `configuracoes_site`
  ADD PRIMARY KEY (`id_config`);

--
-- Índices para tabela `cupom_desconto`
--
ALTER TABLE `cupom_desconto`
  ADD PRIMARY KEY (`id_cupom`);

--
-- Índices para tabela `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id_views`);

--
-- Índices para tabela `ws_adicionais_cat`
--
ALTER TABLE `ws_adicionais_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_adicionais_itens`
--
ALTER TABLE `ws_adicionais_itens`
  ADD PRIMARY KEY (`id_adicionais`);

--
-- Índices para tabela `ws_adicionais_itens_gratis`
--
ALTER TABLE `ws_adicionais_itens_gratis`
  ADD PRIMARY KEY (`id_adicional_gratis`);

--
-- Índices para tabela `ws_admin`
--
ALTER TABLE `ws_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Índices para tabela `ws_cat`
--
ALTER TABLE `ws_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_datas_close`
--
ALTER TABLE `ws_datas_close`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_empresa`
--
ALTER TABLE `ws_empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Índices para tabela `ws_formas_pagamento`
--
ALTER TABLE `ws_formas_pagamento`
  ADD PRIMARY KEY (`id_f_pagamento`);

--
-- Índices para tabela `ws_fuso_horario`
--
ALTER TABLE `ws_fuso_horario`
  ADD PRIMARY KEY (`id_fuso`);

--
-- Índices para tabela `ws_impressora`
--
ALTER TABLE `ws_impressora`
  ADD PRIMARY KEY (`id_impressora`);

--
-- Índices para tabela `ws_itens`
--
ALTER TABLE `ws_itens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_motoboys`
--
ALTER TABLE `ws_motoboys`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_observacoes`
--
ALTER TABLE `ws_observacoes`
  ADD PRIMARY KEY (`id_obs`);

--
-- Índices para tabela `ws_opcao_complemento`
--
ALTER TABLE `ws_opcao_complemento`
  ADD PRIMARY KEY (`id_opcao_complemento`);

--
-- Índices para tabela `ws_opcoes_itens`
--
ALTER TABLE `ws_opcoes_itens`
  ADD PRIMARY KEY (`id_option`);

--
-- Índices para tabela `ws_pedidos`
--
ALTER TABLE `ws_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_pedidos_itens`
--
ALTER TABLE `ws_pedidos_itens`
  ADD PRIMARY KEY (`ID_TABELA`);

--
-- Índices para tabela `ws_relacao_tamanho`
--
ALTER TABLE `ws_relacao_tamanho`
  ADD PRIMARY KEY (`id_relacao`);

--
-- Índices para tabela `ws_tipo_produto`
--
ALTER TABLE `ws_tipo_produto`
  ADD PRIMARY KEY (`id_tipo_produto`);

--
-- Índices para tabela `ws_users`
--
ALTER TABLE `ws_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ateste`
--
ALTER TABLE `ateste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT de tabela `bairros_delivery`
--
ALTER TABLE `bairros_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `banner_promocional`
--
ALTER TABLE `banner_promocional`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `configuracoes_site`
--
ALTER TABLE `configuracoes_site`
  MODIFY `id_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cupom_desconto`
--
ALTER TABLE `cupom_desconto`
  MODIFY `id_cupom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `views`
--
ALTER TABLE `views`
  MODIFY `id_views` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_cat`
--
ALTER TABLE `ws_adicionais_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_itens`
--
ALTER TABLE `ws_adicionais_itens`
  MODIFY `id_adicionais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_itens_gratis`
--
ALTER TABLE `ws_adicionais_itens_gratis`
  MODIFY `id_adicional_gratis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT de tabela `ws_admin`
--
ALTER TABLE `ws_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ws_cat`
--
ALTER TABLE `ws_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de tabela `ws_datas_close`
--
ALTER TABLE `ws_datas_close`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `ws_empresa`
--
ALTER TABLE `ws_empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `ws_formas_pagamento`
--
ALTER TABLE `ws_formas_pagamento`
  MODIFY `id_f_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `ws_fuso_horario`
--
ALTER TABLE `ws_fuso_horario`
  MODIFY `id_fuso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `ws_impressora`
--
ALTER TABLE `ws_impressora`
  MODIFY `id_impressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ws_itens`
--
ALTER TABLE `ws_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de tabela `ws_motoboys`
--
ALTER TABLE `ws_motoboys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `ws_observacoes`
--
ALTER TABLE `ws_observacoes`
  MODIFY `id_obs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ws_opcao_complemento`
--
ALTER TABLE `ws_opcao_complemento`
  MODIFY `id_opcao_complemento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `ws_opcoes_itens`
--
ALTER TABLE `ws_opcoes_itens`
  MODIFY `id_option` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de tabela `ws_pedidos`
--
ALTER TABLE `ws_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ws_pedidos_itens`
--
ALTER TABLE `ws_pedidos_itens`
  MODIFY `ID_TABELA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de tabela `ws_relacao_tamanho`
--
ALTER TABLE `ws_relacao_tamanho`
  MODIFY `id_relacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `ws_tipo_produto`
--
ALTER TABLE `ws_tipo_produto`
  MODIFY `id_tipo_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `ws_users`
--
ALTER TABLE `ws_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
