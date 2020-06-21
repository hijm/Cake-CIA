-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: CIABOLO
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bairros`
--

DROP TABLE IF EXISTS `bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairros` (
  `bairro` varchar(100) NOT NULL DEFAULT '',
  `cidade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bairro`),
  KEY `cidade` (`cidade`),
  CONSTRAINT `bairros_ibfk_1` FOREIGN KEY (`cidade`) REFERENCES `cidades` (`cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairros`
--

LOCK TABLES `bairros` WRITE;
/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
INSERT INTO `bairros` VALUES ('Abraão',NULL),('Açores',NULL),('Agronômica',NULL),('Alto Ribeirão',NULL),('Alto Ribeirão Leste',NULL),('Armação',NULL),('Autódromo',NULL),('Balneário',NULL),('Barra da Lagoa',NULL),('Barra do Sambaqui',NULL),('Base Aérea',NULL),('Bom Abrigo',NULL),('Cachoeira do Bom Jesus',NULL),('Cachoeira do Bom Jesus Leste',NULL),('Cacupé',NULL),('Caiacanga',NULL),('Caieira',NULL),('Campeche Central',NULL),('Campeche Leste',NULL),('Campeche Norte',NULL),('Campeche Sul',NULL),('Canasvieiras',NULL),('Canto',NULL),('Canto da Lagoa',NULL),('Canto do Lamim',NULL),('Canto dos Araçás',NULL),('Capivari',NULL),('Capoeiras',NULL),('Carianos',NULL),('Centro',NULL),('Coloninha',NULL),('Coqueiros',NULL),('Córrego Grande',NULL),('Costeira do Pirajubaé',NULL),('Costeira do Ribeirão',NULL),('Daniela',NULL),('Dunas da Lagoa',NULL),('Estreito',NULL),('Forte',NULL),('Ingleses Centro',NULL),('Ingleses Norte',NULL),('Ingleses Sul',NULL),('Itacorubi',NULL),('Itaguaçu',NULL),('Jardim Atlântico',NULL),('João Paulo',NULL),('José Mendes',NULL),('Jurere Leste',NULL),('Jurere Oeste',NULL),('Lagoa',NULL),('Lagoa Pequena',NULL),('Lagoinha do Norte',NULL),('Moenda',NULL),('Monte Cristo',NULL),('Monte Verde',NULL),('Morro das Pedras',NULL),('Pantanal',NULL),('Pântano do Sul',NULL),('Pedregal',NULL),('Pedrita',NULL),('Ponta das Canas',NULL),('Porto da Lagoa',NULL),('Praia Brava',NULL),('Praia Mole',NULL),('Ratones',NULL),('Recanto dos Açores',NULL),('Ressacada',NULL),('Retiro',NULL),('Ribeirão da Ilha',NULL),('Rio Tavares Central',NULL),('Rio Tavares do Norte',NULL),('Rio Vermelho',NULL),('Saco dos Limões',NULL),('Saco Grande',NULL),('Sambaqui',NULL),('Santa Mônica',NULL),('Santinho',NULL),('Santo Antônio',NULL),('Tapera',NULL),('Tapera da Base',NULL),('Trindade',NULL),('Vargem de Fora',NULL),('Vargem do Bom Jesus',NULL),('Vargem Grande',NULL),('Vargem Pequena',NULL);
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `datefield` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES ('2014-01-01'),('2014-01-02'),('2014-01-03'),('2014-01-04'),('2014-01-05'),('2014-01-06'),('2014-01-07'),('2014-01-08'),('2014-01-09'),('2014-01-10'),('2014-01-11'),('2014-01-12'),('2014-01-13'),('2014-01-14'),('2014-01-15'),('2014-01-16'),('2014-01-17'),('2014-01-18'),('2014-01-19'),('2014-01-20'),('2014-01-21'),('2014-01-22'),('2014-01-23'),('2014-01-24'),('2014-01-25'),('2014-01-26'),('2014-01-27'),('2014-01-28'),('2014-01-29'),('2014-01-30'),('2014-01-31'),('2014-02-01'),('2014-02-02'),('2014-02-03'),('2014-02-04'),('2014-02-05'),('2014-02-06'),('2014-02-07'),('2014-02-08'),('2014-02-09'),('2014-02-10'),('2014-02-11'),('2014-02-12'),('2014-02-13'),('2014-02-14'),('2014-02-15'),('2014-02-16'),('2014-02-17'),('2014-02-18'),('2014-02-19'),('2014-02-20'),('2014-02-21'),('2014-02-22'),('2014-02-23'),('2014-02-24'),('2014-02-25'),('2014-02-26'),('2014-02-27'),('2014-02-28'),('2014-03-01'),('2014-03-02'),('2014-03-03'),('2014-03-04'),('2014-03-05'),('2014-03-06'),('2014-03-07'),('2014-03-08'),('2014-03-09'),('2014-03-10'),('2014-03-11'),('2014-03-12'),('2014-03-13'),('2014-03-14'),('2014-03-15'),('2014-03-16'),('2014-03-17'),('2014-03-18'),('2014-03-19'),('2014-03-20'),('2014-03-21'),('2014-03-22'),('2014-03-23'),('2014-03-24'),('2014-03-25'),('2014-03-26'),('2014-03-27'),('2014-03-28'),('2014-03-29'),('2014-03-30'),('2014-03-31'),('2014-04-01'),('2014-04-02'),('2014-04-03'),('2014-04-04'),('2014-04-05'),('2014-04-06'),('2014-04-07'),('2014-04-08'),('2014-04-09'),('2014-04-10'),('2014-04-11'),('2014-04-12'),('2014-04-13'),('2014-04-14'),('2014-04-15'),('2014-04-16'),('2014-04-17'),('2014-04-18'),('2014-04-19'),('2014-04-20'),('2014-04-21'),('2014-04-22'),('2014-04-23'),('2014-04-24'),('2014-04-25'),('2014-04-26'),('2014-04-27'),('2014-04-28'),('2014-04-29'),('2014-04-30'),('2014-05-01'),('2014-05-02'),('2014-05-03'),('2014-05-04'),('2014-05-05'),('2014-05-06'),('2014-05-07'),('2014-05-08'),('2014-05-09'),('2014-05-10'),('2014-05-11'),('2014-05-12'),('2014-05-13'),('2014-05-14'),('2014-05-15'),('2014-05-16'),('2014-05-17'),('2014-05-18'),('2014-05-19'),('2014-05-20'),('2014-05-21'),('2014-05-22'),('2014-05-23'),('2014-05-24'),('2014-05-25'),('2014-05-26'),('2014-05-27'),('2014-05-28'),('2014-05-29'),('2014-05-30'),('2014-05-31'),('2014-06-01'),('2014-06-02'),('2014-06-03'),('2014-06-04'),('2014-06-05'),('2014-06-06'),('2014-06-07'),('2014-06-08'),('2014-06-09'),('2014-06-10'),('2014-06-11'),('2014-06-12'),('2014-06-13'),('2014-06-14'),('2014-06-15'),('2014-06-16'),('2014-06-17'),('2014-06-18'),('2014-06-19'),('2014-06-20'),('2014-06-21'),('2014-06-22'),('2014-06-23'),('2014-06-24'),('2014-06-25'),('2014-06-26'),('2014-06-27'),('2014-06-28'),('2014-06-29'),('2014-06-30'),('2014-07-01'),('2014-07-02'),('2014-07-03'),('2014-07-04'),('2014-07-05'),('2014-07-06'),('2014-07-07'),('2014-07-08'),('2014-07-09'),('2014-07-10'),('2014-07-11'),('2014-07-12'),('2014-07-13'),('2014-07-14'),('2014-07-15'),('2014-07-16'),('2014-07-17'),('2014-07-18'),('2014-07-19'),('2014-07-20'),('2014-07-21'),('2014-07-22'),('2014-07-23'),('2014-07-24'),('2014-07-25'),('2014-07-26'),('2014-07-27'),('2014-07-28'),('2014-07-29'),('2014-07-30'),('2014-07-31'),('2014-08-01'),('2014-08-02'),('2014-08-03'),('2014-08-04'),('2014-08-05'),('2014-08-06'),('2014-08-07'),('2014-08-08'),('2014-08-09'),('2014-08-10'),('2014-08-11'),('2014-08-12'),('2014-08-13'),('2014-08-14'),('2014-08-15'),('2014-08-16'),('2014-08-17'),('2014-08-18'),('2014-08-19'),('2014-08-20'),('2014-08-21'),('2014-08-22'),('2014-08-23'),('2014-08-24'),('2014-08-25'),('2014-08-26'),('2014-08-27'),('2014-08-28'),('2014-08-29'),('2014-08-30'),('2014-08-31'),('2014-09-01'),('2014-09-02'),('2014-09-03'),('2014-09-04'),('2014-09-05'),('2014-09-06'),('2014-09-07'),('2014-09-08'),('2014-09-09'),('2014-09-10'),('2014-09-11'),('2014-09-12'),('2014-09-13'),('2014-09-14'),('2014-09-15'),('2014-09-16'),('2014-09-17'),('2014-09-18'),('2014-09-19'),('2014-09-20'),('2014-09-21'),('2014-09-22'),('2014-09-23'),('2014-09-24'),('2014-09-25'),('2014-09-26'),('2014-09-27'),('2014-09-28'),('2014-09-29'),('2014-09-30'),('2014-10-01'),('2014-10-02'),('2014-10-03'),('2014-10-04'),('2014-10-05'),('2014-10-06'),('2014-10-07'),('2014-10-08'),('2014-10-09'),('2014-10-10'),('2014-10-11'),('2014-10-12'),('2014-10-13'),('2014-10-14'),('2014-10-15'),('2014-10-16'),('2014-10-17'),('2014-10-18'),('2014-10-19'),('2014-10-20'),('2014-10-21'),('2014-10-22'),('2014-10-23'),('2014-10-24'),('2014-10-25'),('2014-10-26'),('2014-10-27'),('2014-10-28'),('2014-10-29'),('2014-10-30'),('2014-10-31'),('2014-11-01'),('2014-11-02'),('2014-11-03'),('2014-11-04'),('2014-11-05'),('2014-11-06'),('2014-11-07'),('2014-11-08'),('2014-11-09'),('2014-11-10'),('2014-11-11'),('2014-11-12'),('2014-11-13'),('2014-11-14'),('2014-11-15'),('2014-11-16'),('2014-11-17'),('2014-11-18'),('2014-11-19'),('2014-11-20'),('2014-11-21'),('2014-11-22'),('2014-11-23'),('2014-11-24'),('2014-11-25'),('2014-11-26'),('2014-11-27'),('2014-11-28'),('2014-11-29'),('2014-11-30'),('2014-12-01'),('2014-12-02'),('2014-12-03'),('2014-12-04'),('2014-12-05'),('2014-12-06'),('2014-12-07'),('2014-12-08'),('2014-12-09'),('2014-12-10'),('2014-12-11'),('2014-12-12'),('2014-12-13'),('2014-12-14'),('2014-12-15'),('2014-12-16'),('2014-12-17'),('2014-12-18'),('2014-12-19'),('2014-12-20'),('2014-12-21'),('2014-12-22'),('2014-12-23'),('2014-12-24'),('2014-12-25'),('2014-12-26'),('2014-12-27'),('2014-12-28'),('2014-12-29'),('2014-12-30');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `tipo` varchar(20) NOT NULL,
  PRIMARY KEY (`tipo`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES ('Doce'),('Salgado'),('Servico');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `cidade` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomecontato` varchar(255) NOT NULL,
  `endcontato` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `fone` varchar(15) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nomecontato` (`nomecontato`),
  KEY `bairro` (`bairro`),
  KEY `cidade` (`cidade`),
  CONSTRAINT `contatos_ibfk_1` FOREIGN KEY (`bairro`) REFERENCES `bairros` (`bairro`) ON UPDATE CASCADE,
  CONSTRAINT `contatos_ibfk_2` FOREIGN KEY (`cidade`) REFERENCES `cidades` (`cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ATUALIZA_DEVEDORES_CONTATOS` AFTER INSERT ON `contatos`
FOR EACH ROW 
BEGIN


insert into valor_devido 
(Cliente , Valor_Devido) values (new.nomecontato ,'');

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `Categoria_e` varchar(20) NOT NULL,
  `NomeProduto_e` varchar(255) NOT NULL DEFAULT '',
  `Unidade_e` varchar(20) NOT NULL,
  `Quantidade` decimal(6,3) NOT NULL,
  PRIMARY KEY (`NomeProduto_e`),
  CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`NomeProduto_e`) REFERENCES `produto` (`NomeProduto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES ('Salgado','Beringela Parmegiana','Kilos',0.000),('Doce','Bolo Banana Car. 1/2','Unidade',0.000),('Doce','Bolo Banana Caramelizada','Unidade',0.000),('Doce','Bolo de Banana','Unidade',0.000),('Doce','Bolo de Café','Unidade',0.000),('Doce','Bolo de Cenoura','Unidade',0.000),('Doce','Bolo de Cenoura G','Unidade',0.000),('Doce','Bolo de Coco','Unidade',0.000),('Doce','Bolo de Festa','Kilos',0.000),('Doce','Bolo de Fubá','Unidade',0.000),('Doce','Bolo de Fubá G','Unidade',0.000),('Doce','Bolo de Laranja','Unidade',0.000),('Doce','Bolo de Laranja G','Unidade',0.000),('Doce','Bolo de Limão','Unidade',0.000),('Doce','Bolo de Limão G','Unidade',0.000),('Doce','Bolo de Maçã','Unidade',0.000),('Doce','Bolo de Maracujá','Unidade',0.000),('Doce','Bolo de Maracujá G','Unidade',0.000),('Doce','Bolo de Milho','Unidade',0.000),('Doce','Bolo de Milho G','Unidade',0.000),('Doce','Bolo de Pote','Unidade',0.000),('Doce','Bolo G - revenda','Unidade',0.000),('Doce','Bolo Integral','Unidade',0.000),('Doce','Bolo Integral (P)','Unidade',0.000),('Doce','Bolo Nega Maluca','Unidade',0.000),('Doce','Bolo Nega Maluca G','Unidade',0.000),('Doce','Brownie forma','Unidade',0.000),('Doce','Brownie unid','Unidade',0.000),('Doce','Calda','Unidade',0.000),('Salgado','Carne Louca','Kilos',0.000),('Doce','Delícia Crocante','Unidade',0.000),('Salgado','Empadão','Kilos',0.000),('Servico','Entrega','Unidade',0.000),('Doce','Fatia de Bolo','Unidade',0.000),('Salgado','Frango Desfiado','Kilos',0.000),('Salgado','Frango Empanado','Kilos',0.000),('Salgado','Kibe','Kilos',0.000),('Salgado','Panqueca de Carne','Unidade',0.000),('Salgado','Panqueca de Frango','Unidade',0.000),('Salgado','Pão de Metro','Unidade',0.000),('Salgado','Patê Sardela','Kilos',0.000),('Salgado','Quiche de Palmito','Unidade',0.000),('Salgado','Rocambole de Carne','Kilos',0.000),('Doce','Torta Mousse Morango','Unidade',0.000);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_del_producao`
--

DROP TABLE IF EXISTS `log_del_producao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_del_producao` (
  `NomeProd` varchar(255) DEFAULT NULL,
  `Quantidade` decimal(6,3) DEFAULT NULL,
  `DataHora` datetime DEFAULT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_del_producao`
--

LOCK TABLES `log_del_producao` WRITE;
/*!40000 ALTER TABLE `log_del_producao` DISABLE KEYS */;
INSERT INTO `log_del_producao` VALUES ('Empadão',2.500,'2014-09-06 00:00:00','Ro','191.191.68.194'),('Bolo Nega Maluca',2.000,'2014-09-25 00:00:00','Fla','189.4.102.211');
/*!40000 ALTER TABLE `log_del_producao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_login`
--

DROP TABLE IF EXISTS `log_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_login` (
  `usuario` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_login`
--

LOCK TABLES `log_login` WRITE;
/*!40000 ALTER TABLE `log_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producao`
--

DROP TABLE IF EXISTS `producao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producao` (
  `Categoria_p` varchar(20) NOT NULL,
  `NomeProduto_p` varchar(255) DEFAULT NULL,
  `Unidade_p` varchar(20) NOT NULL,
  `Quantidade` decimal(6,3) NOT NULL,
  `DataHora` datetime DEFAULT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `prod_p` (`NomeProduto_p`),
  KEY `uni_p` (`Unidade_p`),
  CONSTRAINT `producao_ibfk_2` FOREIGN KEY (`Unidade_p`) REFERENCES `unidade` (`unid`),
  CONSTRAINT `producao_ibfk_5` FOREIGN KEY (`NomeProduto_p`) REFERENCES `produto` (`NomeProduto`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producao`
--

LOCK TABLES `producao` WRITE;
/*!40000 ALTER TABLE `producao` DISABLE KEYS */;
INSERT INTO `producao` VALUES ('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-07-02 00:00:00','Fla',1),('Doce','Bolo de Coco','Unidade',2.000,'2014-07-02 00:00:00','Fla',2),('Doce','Bolo de Limão','Unidade',2.000,'2014-07-02 00:00:00','Fla',3),('Doce','Bolo de Laranja','Unidade',2.000,'2014-07-03 00:00:00','Fla',4),('Doce','Bolo Banana Caramelizada','Unidade',1.000,'2014-07-03 00:00:00','Ro',5),('Salgado','Panqueca de Frango','Unidade',31.000,'2014-07-03 00:00:00','Ro',6),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-07-09 00:00:00','Ro',7),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-07-11 00:00:00','Fla',8),('Doce','Bolo de Milho','Unidade',2.000,'2014-07-11 00:00:00','Fla',9),('Salgado','Frango Empanado','Kilos',0.800,'2014-07-11 00:00:00','Ro',10),('Doce','Brownie forma','Unidade',1.000,'2014-07-12 00:00:00','Fla',11),('Doce','Bolo de Fubá','Unidade',2.000,'2014-07-12 00:00:00','Ro',12),('Doce','Bolo Nega Maluca','Unidade',4.000,'2014-07-15 00:00:00','Ro',13),('Salgado','Panqueca de Carne','Unidade',12.000,'2014-07-16 00:00:00','Ro',14),('Salgado','Panqueca de Frango','Unidade',12.000,'2014-07-16 00:00:00','Ro',15),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-07-16 00:00:00','Fla',16),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-07-16 00:00:00','Fla',17),('Doce','Bolo de Festa','Kilos',1.000,'2014-07-16 00:00:00','Ro',18),('Doce','Bolo Nega Maluca','Unidade',4.000,'2014-07-17 00:00:00','Ro',19),('Doce','Bolo de Cenoura','Unidade',2.000,'2014-07-17 00:00:00','Fla',20),('Doce','Torta Mousse Morango','Unidade',1.000,'2014-07-17 00:00:00','Fla',21),('Salgado','Quiche de Palmito','Unidade',1.000,'2014-07-17 00:00:00','Ro',22),('Salgado','Frango Desfiado','Kilos',1.000,'2014-07-17 00:00:00','Ro',24),('Salgado','Frango Empanado','Kilos',0.785,'2014-07-17 00:00:00','Ro',25),('Doce','Bolo de Milho G','Unidade',1.000,'2014-07-18 00:00:00','Fla',31),('Doce','Bolo Nega Maluca G','Unidade',3.000,'2014-07-18 00:00:00','Ro',32),('Doce','Bolo de Cenoura G','Unidade',2.000,'2014-07-18 00:00:00','Fla',33),('Doce','Bolo de Laranja G','Unidade',1.000,'2014-07-18 00:00:00','Fla',34),('Doce','Bolo de Fubá G','Unidade',2.000,'2014-07-18 00:00:00','Ro',35),('Doce','Bolo de Festa','Kilos',1.000,'2014-07-19 00:00:00','Fla',36),('Doce','Bolo Nega Maluca G','Unidade',2.000,'2014-07-19 00:00:00','Fla',37),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-07-22 00:00:00','Ro',38),('Doce','Bolo de Laranja','Unidade',2.000,'2014-07-22 00:00:00','Fla',39),('Doce','Bolo de Cenoura','Unidade',2.000,'2014-07-22 00:00:00','Fla',40),('Doce','Bolo de Milho','Unidade',2.000,'2014-07-22 00:00:00','Fla',41),('Doce','Torta Mousse Morango','Unidade',1.000,'2014-07-23 00:00:00','Fla',42),('Doce','Bolo de Festa','Kilos',2.750,'2014-07-23 00:00:00','Ro',43),('Doce','Bolo de Laranja','Unidade',2.000,'2014-07-25 00:00:00','Fla',44),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-07-25 00:00:00','Ro',45),('Doce','Bolo de Cenoura','Unidade',2.000,'2014-07-26 00:00:00','Ro',46),('Salgado','Empadão','Kilos',1.875,'2014-07-17 00:00:00','Ro',47),('Doce','Bolo Nega Maluca G','Unidade',1.000,'2014-07-18 00:00:00','Ro',48),('Doce','Bolo de Laranja','Unidade',1.000,'2014-06-30 00:00:00','Fla',49),('Doce','Bolo de Café','Unidade',1.000,'2014-06-30 00:00:00','Ro',50),('Doce','Bolo Nega Maluca','Unidade',4.000,'2014-07-30 00:00:00','Ro',51),('Doce','Bolo de Fubá','Unidade',1.000,'2014-07-31 00:00:00','Ro',52),('Doce','Bolo de Laranja','Unidade',1.000,'2014-07-03 00:00:00','Fla',53),('Doce','Bolo de Cenoura','Unidade',1.000,'2014-07-03 00:00:00','Fla',54),('Doce','Bolo Nega Maluca','Unidade',1.000,'2014-07-03 00:00:00','Ro',55),('Doce','Bolo Nega Maluca','Unidade',1.000,'2014-07-03 00:00:00','Ro',56),('Doce','Bolo de Cenoura','Unidade',2.000,'2014-08-01 00:00:00','Fla',57),('Doce','Bolo de Laranja','Unidade',2.000,'2014-08-06 00:00:00','Fla',58),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-06 00:00:00','Fla',59),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-06 00:00:00','Ro',60),('Salgado','Frango Desfiado','Kilos',0.700,'2014-08-06 00:00:00','Ro',61),('Doce','Bolo de Coco','Unidade',2.000,'2014-08-07 00:00:00','Fla',62),('Salgado','Panqueca de Carne','Unidade',18.000,'2014-08-07 00:00:00','Ro',63),('Salgado','Panqueca de Frango','Unidade',12.000,'2014-08-07 00:00:00','Ro',64),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-07 00:00:00','Ro',65),('Doce','Bolo de Festa','Kilos',1.650,'2014-08-08 00:00:00','Fla',66),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-09 00:00:00','Ro',67),('Doce','Bolo Banana Caramelizada','Unidade',1.000,'2014-08-09 00:00:00','Ro',68),('Salgado','Beringela Parmegiana','Kilos',1.500,'2014-08-13 00:00:00','Ro',69),('Doce','Delícia Crocante','Unidade',1.000,'2014-08-13 00:00:00','Fla',70),('Salgado','Frango Empanado','Kilos',1.000,'2014-08-14 00:00:00','Ro',71),('Salgado','Frango Empanado','Kilos',0.520,'2014-08-14 00:00:00','Ro',72),('Salgado','Patê Sardela','Kilos',0.200,'2014-08-13 00:00:00','Ro',73),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-15 00:00:00','Fla',74),('Doce','Bolo de Limão','Unidade',2.000,'2014-08-16 00:00:00','Fla',75),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-18 00:00:00','Ro',76),('Doce','Bolo de Cenoura','Unidade',2.000,'2014-08-18 00:00:00','Ro',77),('Doce','Bolo Integral','Unidade',1.000,'2014-08-19 00:00:00','Fla',78),('Salgado','Panqueca de Carne','Unidade',24.000,'2014-08-21 00:00:00','Fla',79),('Salgado','Panqueca de Frango','Unidade',6.000,'2014-08-21 00:00:00','Fla',80),('Doce','Bolo de Festa','Kilos',4.600,'2014-08-19 00:00:00','Fla',81),('Salgado','Empadão','Kilos',4.000,'2014-08-19 00:00:00','Ro',82),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-22 00:00:00','Ro',83),('Salgado','Frango Empanado','Kilos',0.850,'2014-08-22 00:00:00','Ro',84),('Doce','Delícia Crocante','Unidade',1.000,'2014-08-23 00:00:00','Fla',85),('Doce','Bolo de Pote','Unidade',57.000,'2014-08-22 00:00:00','Fla',86),('Doce','Fatia de Bolo','Unidade',84.000,'2014-08-22 00:00:00','Ro',87),('Doce','Bolo Nega Maluca G','Unidade',2.000,'2014-08-22 00:00:00','Ro',88),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-27 00:00:00','Fla',89),('Doce','Bolo de Pote','Unidade',3.000,'2014-08-27 00:00:00','Fla',90),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-08-28 00:00:00','Ro',91),('Salgado','Frango Empanado','Kilos',2.200,'2014-08-28 00:00:00','Ro',92),('Salgado','Panqueca de Carne','Unidade',18.000,'2014-08-28 00:00:00','Fla',93),('Salgado','Panqueca de Frango','Unidade',6.000,'2014-08-28 00:00:00','Ro',94),('Doce','Bolo de Pote','Unidade',57.000,'2014-08-28 00:00:00','Fla',95),('Doce','Bolo de Pote','Unidade',17.000,'2014-08-29 00:00:00','Fla',96),('Doce','Delícia Crocante','Unidade',1.000,'2014-09-01 00:00:00','Fla',97),('Doce','Bolo de Pote','Unidade',21.000,'2014-09-02 00:00:00','Ro',98),('Doce','Bolo de Pote','Unidade',11.000,'2014-09-02 00:00:00','Fla',99),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-09-04 00:00:00','Fla',100),('Doce','Bolo de Pote','Unidade',14.000,'2014-09-04 00:00:00','Fla',101),('Doce','Bolo Integral (P)','Unidade',2.000,'2014-09-04 00:00:00','Fla',102),('Doce','Bolo de Festa','Kilos',2.500,'2014-09-06 00:00:00','Fla',103),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-09-05 00:00:00','Ro',105),('Salgado','Empadão','Kilos',2.000,'2014-09-06 00:00:00','Ro',106),('Doce','Bolo de Pote','Unidade',15.000,'2014-09-05 00:00:00','Fla',107),('Doce','Bolo de Pote','Unidade',14.000,'2014-09-05 00:00:00','Fla',108),('Salgado','Beringela Parmegiana','Kilos',1.000,'2014-09-05 00:00:00','Ro',109),('Salgado','Frango Desfiado','Kilos',0.740,'2014-09-05 00:00:00','Ro',110),('Doce','Bolo de Pote','Unidade',5.000,'2014-09-08 00:00:00','Fla',111),('Doce','Bolo de Pote','Unidade',5.000,'2014-09-08 00:00:00','Ro',112),('Doce','Bolo de Pote','Unidade',8.000,'2014-09-08 00:00:00','Fla',113),('Doce','Bolo de Pote','Unidade',7.000,'2014-09-08 00:00:00','Ro',114),('Salgado','Panqueca de Carne','Unidade',6.000,'2014-09-10 00:00:00','Fla',115),('Salgado','Panqueca de Frango','Unidade',6.000,'2014-09-10 00:00:00','Ro',116),('Doce','Bolo de Pote','Unidade',13.000,'2014-09-11 00:00:00','Fla',117),('Doce','Bolo de Pote','Unidade',13.000,'2014-09-11 00:00:00','Ro',118),('Salgado','Frango Empanado','Kilos',1.100,'2014-09-11 00:00:00','Ro',119),('Doce','Bolo Banana Caramelizada','Unidade',1.000,'2014-09-12 00:00:00','Ro',120),('Doce','Bolo Banana Caramelizada','Unidade',2.000,'2014-09-13 00:00:00','Fla',121),('Doce','Bolo Banana Car. 1/2','Unidade',2.000,'2014-09-12 00:00:00','Ro',122),('Doce','Bolo de Pote','Unidade',5.000,'2014-09-12 00:00:00','Ro',123),('Doce','Bolo de Pote','Unidade',5.000,'2014-09-12 00:00:00','Fla',124),('Salgado','Panqueca de Carne','Unidade',42.000,'2014-09-12 00:00:00','Fla',125),('Salgado','Panqueca de Frango','Unidade',3.000,'2014-09-12 00:00:00','Ro',126),('Salgado','Frango Empanado','Kilos',0.800,'2014-09-12 00:00:00','Ro',127),('Doce','Bolo de Festa','Kilos',1.000,'2014-09-12 00:00:00','Ro',128),('Salgado','Empadão','Kilos',1.500,'2014-09-13 00:00:00','Ro',129),('Doce','Bolo de Pote','Unidade',10.000,'2014-09-12 00:00:00','Ro',130),('Doce','Bolo de Pote','Unidade',10.000,'2014-09-12 00:00:00','Fla',131),('Doce','Bolo de Laranja','Unidade',2.000,'2014-09-12 00:00:00','Fla',132),('Doce','Bolo de Pote','Unidade',10.000,'2014-09-18 00:00:00','Ro',133),('Doce','Bolo de Cenoura','Unidade',1.000,'2014-09-18 00:00:00','Ro',134),('Doce','Bolo de Pote','Unidade',2.000,'2014-09-18 00:00:00','Ro',135),('Salgado','Carne Louca','Kilos',0.500,'2014-09-19 00:00:00','Ro',136),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-09-19 00:00:00','Fla',137),('Salgado','Panqueca de Carne','Unidade',12.000,'2014-09-19 00:00:00','Ro',138),('Salgado','Frango Empanado','Kilos',0.650,'2014-09-19 00:00:00','Ro',139),('Salgado','Empadão','Kilos',1.900,'2014-09-20 00:00:00','Ro',140),('Doce','Bolo de Festa','Kilos',2.350,'2014-09-21 00:00:00','Fla',141),('Doce','Bolo de Pote','Unidade',2.000,'2014-09-18 00:00:00','Ro',142),('Doce','Bolo de Pote','Unidade',4.000,'2014-09-18 00:00:00','Ro',143),('Doce','Bolo Banana Caramelizada','Unidade',1.000,'2014-09-23 00:00:00','Ro',144),('Doce','Bolo de Cenoura','Unidade',1.000,'2014-09-25 00:00:00','Ro',145),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-09-25 00:00:00','Fla',146),('Doce','Bolo de Festa','Kilos',1.300,'2014-09-26 00:00:00','Fla',148),('Salgado','Pão de Metro','Unidade',5.000,'2014-10-04 00:00:00','Fla',149),('Doce','Bolo de Limão G','Unidade',1.000,'2014-10-04 00:00:00','Fla',150),('Salgado','Empadão','Kilos',1.600,'2014-10-04 00:00:00','Ro',151),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-10-06 00:00:00','Fla',152),('Doce','Bolo de Laranja','Unidade',2.000,'2014-10-06 00:00:00','Ro',153),('Doce','Bolo de Laranja','Unidade',2.000,'2014-10-06 00:00:00','Ro',154),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-10-06 00:00:00','Fla',155),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-10-08 00:00:00','Ro',156),('Doce','Bolo de Festa','Kilos',2.700,'2014-10-08 00:00:00','Fla',157),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-10-08 00:00:00','Ro',158),('Salgado','Pão de Metro','Unidade',2.000,'2014-10-10 00:00:00','Ro',159),('Salgado','Frango Empanado','Kilos',0.550,'2014-10-10 00:00:00','Ro',160),('Doce','Bolo de Festa','Kilos',2.100,'2014-10-18 00:00:00','Fla',161),('Salgado','Panqueca de Carne','Unidade',12.000,'2014-10-16 00:00:00','Ro',162),('Salgado','Panqueca de Frango','Unidade',12.000,'2014-10-16 00:00:00','Ro',163),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-10-15 00:00:00','Ro',164),('Salgado','Frango Empanado','Kilos',0.700,'2014-10-23 00:00:00','Ro',165),('Doce','Bolo de Pote','Unidade',35.000,'2014-10-23 00:00:00','Ro',166),('Salgado','Panqueca de Carne','Unidade',48.000,'2014-10-23 00:00:00','Fla',167),('Salgado','Panqueca de Frango','Unidade',35.000,'2014-10-23 00:00:00','Fla',168),('Doce','Bolo G - revenda','Unidade',2.000,'2014-10-23 00:00:00','Fla',169),('Doce','Bolo Nega Maluca','Unidade',2.000,'2014-10-23 00:00:00','Ro',170);
/*!40000 ALTER TABLE `producao` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ATUALIZA_ESTOQUE_DE_PROD` AFTER INSERT ON `producao`
FOR EACH ROW 
BEGIN
UPDATE estoque 
SET Categoria_e = new.Categoria_p ,
NomeProduto_e = new.NomeProduto_p ,
Unidade_e = new.Unidade_p ,
Quantidade =   Quantidade + new.Quantidade 
WHERE NomeProduto_e=new.NomeProduto_p
;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ATUALIZA_ESTOQUE_DE_PRODUCAO_REMOVIDA` AFTER DELETE ON `producao`
FOR EACH ROW BEGIN
UPDATE estoque 
SET Quantidade = Quantidade - old.Quantidade WHERE NomeProduto_e=old.NomeProduto_p;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `Categoria_c` varchar(20) NOT NULL,
  `NomeProduto` varchar(255) NOT NULL DEFAULT '',
  `Preco` decimal(5,2) NOT NULL,
  `Unidade` varchar(20) NOT NULL,
  `FotoProduto` mediumblob,
  UNIQUE KEY `NomeProduto` (`NomeProduto`),
  KEY `cat_ind` (`Categoria_c`),
  KEY `uni_ind` (`Unidade`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`Categoria_c`) REFERENCES `categoria` (`tipo`) ON UPDATE CASCADE,
  CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`Unidade`) REFERENCES `unidade` (`unid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES ('Salgado','Beringela Parmegiana',30.00,'Kilos',''),('Doce','Bolo Banana Car. 1/2',15.00,'Unidade',''),('Doce','Bolo Banana Caramelizada',30.00,'Unidade',''),('Doce','Bolo de Banana',12.00,'Unidade',''),('Doce','Bolo de Café ',12.00,'Unidade',''),('Doce','Bolo de Cenoura',12.00,'Unidade',''),('Doce','Bolo de Cenoura G',26.00,'Unidade',''),('Doce','Bolo de Coco',12.00,'Unidade',''),('Doce','Bolo de Festa',40.00,'Kilos',''),('Doce','Bolo de Fubá',12.00,'Unidade',''),('Doce','Bolo de Fubá G',26.00,'Unidade',''),('Doce','Bolo de Laranja',12.00,'Unidade',''),('Doce','Bolo de Laranja G',26.00,'Unidade',''),('Doce','Bolo de Limão',12.00,'Unidade',''),('Doce','Bolo de Limão G',26.00,'Unidade',''),('Doce','Bolo de Maçã',12.00,'Unidade',''),('Doce','Bolo de Maracujá',12.00,'Unidade',''),('Doce','Bolo de Maracujá G',26.00,'Unidade',''),('Doce','Bolo de Milho',15.00,'Unidade',''),('Doce','Bolo de Milho G',26.00,'Unidade',''),('Doce','Bolo de Pote',6.00,'Unidade',''),('Salgado','Bolo de Teste',10.00,'Kilos',''),('Doce','Bolo G - revenda',22.00,'Unidade',''),('Doce','Bolo Integral',26.00,'Unidade',''),('Doce','Bolo Integral (P)',15.00,'Unidade',''),('Doce','Bolo Nega Maluca',12.00,'Unidade',''),('Doce','Bolo Nega Maluca G',26.00,'Unidade',''),('Doce','Brownie forma',50.00,'Unidade',''),('Doce','Brownie unid',2.50,'Unidade',''),('Doce','Calda',3.00,'Unidade',''),('Salgado','Carne Louca',40.00,'Kilos',''),('Doce','Delícia Crocante',35.00,'Unidade',''),('Salgado','Empadão',40.00,'Kilos',''),('Servico','Entrega',8.00,'Unidade',''),('Doce','Fatia de Bolo',4.00,'Unidade',''),('Salgado','Frango Desfiado',35.00,'Kilos',''),('Salgado','Frango Empanado',35.00,'Kilos',''),('Salgado','Kibe',45.00,'Kilos',''),('Salgado','Panqueca de Carne',2.50,'Unidade',''),('Salgado','Panqueca de Frango',2.50,'Unidade',''),('Salgado','Pão de Metro',27.00,'Unidade',''),('Salgado','Patê Sardela',35.00,'Kilos',''),('Salgado','Quiche de Palmito',40.00,'Unidade',''),('Salgado','Rocambole de Carne',45.00,'Kilos',''),('Doce','Torta Mousse Morango',40.00,'Unidade','');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ATUALIZA_ESTOQUE_DE_PRODUTO` AFTER INSERT ON `produto`
FOR EACH ROW 
BEGIN


insert into estoque 
(Categoria_e , NomeProduto_e , Unidade_e) values (new.Categoria_c ,
 new.NomeProduto ,
 new.Unidade )
;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recebimento`
--

DROP TABLE IF EXISTS `recebimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recebimento` (
  `Recebedor` varchar(255) NOT NULL,
  `Cliente` varchar(255) NOT NULL,
  `Valor_Recebido` decimal(5,2) NOT NULL,
  `DataHora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recebimento`
--

LOCK TABLES `recebimento` WRITE;
/*!40000 ALTER TABLE `recebimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `recebimento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ATUALIZA_VALOR_DEVIDO` BEFORE INSERT ON `recebimento`
FOR EACH ROW BEGIN
UPDATE valor_devido set  Valor_Devido=Valor_Devido-new.Valor_Recebido where valor_devido.Cliente=new.Cliente;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `retirada`
--

DROP TABLE IF EXISTS `retirada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retirada` (
  `RetiraId` int(11) NOT NULL AUTO_INCREMENT,
  `Responsavel` varchar(255) NOT NULL,
  `Cliente` varchar(255) NOT NULL,
  `Categoria_r` varchar(20) NOT NULL,
  `NomeProduto_r` varchar(255) NOT NULL,
  `Preco` decimal(5,2) NOT NULL,
  `Unidade_r` varchar(20) NOT NULL,
  `Quantidade` decimal(6,3) NOT NULL,
  `Total` decimal(5,2) NOT NULL,
  `DataHora` datetime DEFAULT NULL,
  `Motivo` varchar(255) NOT NULL,
  PRIMARY KEY (`RetiraId`),
  KEY `Cliente` (`Cliente`),
  KEY `Responsavel` (`Responsavel`),
  KEY `NomeProduto_r` (`NomeProduto_r`),
  CONSTRAINT `retirada_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `contatos` (`nomecontato`) ON UPDATE CASCADE,
  CONSTRAINT `retirada_ibfk_2` FOREIGN KEY (`Responsavel`) REFERENCES `contatos` (`nomecontato`) ON UPDATE CASCADE,
  CONSTRAINT `retirada_ibfk_3` FOREIGN KEY (`NomeProduto_r`) REFERENCES `produto` (`NomeProduto`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retirada`
--

LOCK TABLES `retirada` WRITE;
/*!40000 ALTER TABLE `retirada` DISABLE KEYS */;
/*!40000 ALTER TABLE `retirada` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ATUALIZA_ESTOQUE_DE_RETIRADA BEFORE INSERT ON retirada
FOR EACH ROW 
BEGIN

SET new.Total = new.Quantidade * new.Preco;
UPDATE estoque 
SET Categoria_e = new.Categoria_r ,
NomeProduto_e = new.NomeProduto_r ,
Unidade_e = new.Unidade_r ,
Quantidade =   Quantidade - new.Quantidade 
WHERE NomeProduto_e=new.NomeProduto_r
;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `unidade`
--

DROP TABLE IF EXISTS `unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidade` (
  `unid` varchar(20) NOT NULL,
  PRIMARY KEY (`unid`),
  UNIQUE KEY `unid` (`unid`),
  UNIQUE KEY `unid_2` (`unid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade`
--

LOCK TABLES `unidade` WRITE;
/*!40000 ALTER TABLE `unidade` DISABLE KEYS */;
INSERT INTO `unidade` VALUES ('Kilos'),('Pedaco'),('Unidade');
/*!40000 ALTER TABLE `unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valor_devido`
--

DROP TABLE IF EXISTS `valor_devido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valor_devido` (
  `Cliente` varchar(255) NOT NULL DEFAULT '',
  `Valor_Devido` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Cliente`),
  CONSTRAINT `valor_devido_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `contatos` (`nomecontato`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valor_devido`
--

LOCK TABLES `valor_devido` WRITE;
/*!40000 ALTER TABLE `valor_devido` DISABLE KEYS */;
/*!40000 ALTER TABLE `valor_devido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda` (
  `VendaId` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(255) NOT NULL,
  `Categoria_v` varchar(20) NOT NULL,
  `NomeProduto_v` varchar(255) DEFAULT NULL,
  `Preco` decimal(5,2) NOT NULL,
  `Unidade_v` varchar(20) NOT NULL,
  `Quantidade` decimal(6,3) NOT NULL,
  `Total` decimal(5,2) NOT NULL,
  `Valor_Recebido` decimal(5,2) NOT NULL,
  `DataHora` datetime DEFAULT NULL,
  `calda` tinyint(1) DEFAULT NULL,
  `entrega` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`VendaId`),
  KEY `cat_v` (`NomeProduto_v`),
  KEY `uni_v` (`Unidade_v`),
  KEY `Cliente` (`Cliente`),
  CONSTRAINT `venda_ibfk_3` FOREIGN KEY (`Unidade_v`) REFERENCES `unidade` (`unid`),
  CONSTRAINT `venda_ibfk_4` FOREIGN KEY (`NomeProduto_v`) REFERENCES `produto` (`NomeProduto`) ON UPDATE CASCADE,
  CONSTRAINT `venda_ibfk_5` FOREIGN KEY (`Cliente`) REFERENCES `contatos` (`nomecontato`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ATUALIZA_PRECO_VENDA` BEFORE INSERT ON `venda`
FOR EACH ROW BEGIN


IF(new.calda = 1) AND (new.entrega = 1) THEN
           SET new.Total = new.Quantidade * new.Preco + (select Preco from produto where NomeProduto='Calda') + (select Preco from produto where NomeProduto='Entrega');
                ELSEIF(new.calda = 1) AND (new.entrega = 0) THEN
                        SET new.Total = new.Quantidade * new.Preco + (select Preco from produto where NomeProduto='Calda') ;
                ELSEIF(new.calda = 0) AND (new.entrega = 1) THEN
                        SET new.Total = new.Quantidade * new.Preco + (select Preco from produto where NomeProduto='Entrega') ;
                ELSEIF(new.calda = 0) AND (new.entrega = 0) THEN
                        SET new.Total = new.Quantidade * new.Preco ;
END IF;

update valor_devido set Cliente=new.Cliente , Valor_Devido=(Valor_Devido + new.Total - new.Valor_Recebido) where Cliente=new.Cliente;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ATUALIZA_ESTOQUE_DE_VENDA AFTER INSERT ON venda
FOR EACH ROW 
BEGIN


UPDATE estoque 
SET Categoria_e = new.Categoria_v ,
NomeProduto_e = new.NomeProduto_v ,
Unidade_e = new.Unidade_v ,
Quantidade =   Quantidade - new.Quantidade 
WHERE NomeProduto_e=new.NomeProduto_v
;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ATUALIZA_TABELAS_DE_VENDA_REMOVIDA BEFORE DELETE ON venda
FOR EACH ROW 
BEGIN

UPDATE estoque 
SET Quantidade = old.Quantidade + Quantidade WHERE NomeProduto_e=old.NomeProduto_v;
UPDATE valor_devido 
SET Valor_Devido = Valor_Devido - old.Total + old.Valor_Recebido where Cliente=old.Cliente;


end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-28 14:05:02
