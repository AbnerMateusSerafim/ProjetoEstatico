-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: serafim_db
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `id_usuario` int(1) NOT NULL,
  `nome_completo` tinytext DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `num_celular` bigint(11) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Abner','abner@gmail.com',47992388164,'132654789'),(2,'Gabriel','gabriel@gmail.com',11995632857,'123456');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destaque`
--

DROP TABLE IF EXISTS `destaque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destaque` (
  `id_destaque` int(2) NOT NULL,
  `valor` float DEFAULT NULL,
  `id_produto` int(3) DEFAULT NULL,
  `desconto` int(5) DEFAULT NULL,
  `nome` tinytext DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_destaque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destaque`
--

LOCK TABLES `destaque` WRITE;
/*!40000 ALTER TABLE `destaque` DISABLE KEYS */;
INSERT INTO `destaque` VALUES (1,36789.5,1,NULL,'SUPER mitsubishi asx 2007 QUEIMANDO PEDRADA','esse carro é sinistro, muito bom, multimedia, ar quente queimando tudo, etc');
/*!40000 ALTER TABLE `destaque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id_marca` int(2) NOT NULL,
  `nome_marca` tinytext DEFAULT NULL,
  `descr_marca` varchar(100) DEFAULT NULL,
  `cnpj` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'renault','carro forte parudo bonito e preço bom',16861815323),(2,'la fontaine','o carro é maneiro igual a um leão',696844681332),(3,'mitsubishi','carros de luxo',987654321123);
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id_produto` int(3) NOT NULL,
  `id_usuario` int(1) DEFAULT NULL,
  `id_marca` int(2) DEFAULT NULL,
  `id_status` int(1) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `modelo` text DEFAULT NULL,
  `url_foto` varchar(300) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL,
  `registrado_em` date DEFAULT NULL,
  `final_placa` varchar(2) DEFAULT NULL,
  `cor` tinytext DEFAULT NULL,
  `obs` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,3,1,36789.5,'mitsubishi asx 2007','https://s2.glbimg.com/3cbcYz2Vy0qQG2-_y87RARlVnVM=/0x0:620x413/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_cf9d035bf26b4646b105bd958f32089d/internal_photos/bs/2020/2/9/kUgT73SAawl5udid0DPA/2019-03-30-f-.jpg',2007,'2021-06-28','12','vermelho',NULL),(2,2,2,2,22891,'peugeout 208','https://s2.glbimg.com/yOEumqhOHlJpZ5Vm9scVL4q6c2U=/e.glbimg.com/og/ed/f/original/2021/05/07/capa_foguete_china.jpg',2005,'2021-06-28','65','roxo','vidro eletrico, chave reserva, direção elétrica');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id_status` int(1) NOT NULL,
  `nome_status` tinytext DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `disponibilidade` tinytext DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'A venda','esta belezinha está esperando por você de portas abertas!','disponivel'),(2,'No mecanico','era essa peça que você queria?','indisponivel'),(3,'Quase vendido','têm pessoas de olho nesse carro, tome cuidado e compre logo!','disponivel'),(4,'Vendido','Alguém já teve a sorte de levar essa belezinha pra casa','indisponivel');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-28 21:43:35
