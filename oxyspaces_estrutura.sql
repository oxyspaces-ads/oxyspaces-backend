-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: 10.90.60.30    Database: oxyspaces
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `codigo` bigint(20) NOT NULL,
  `comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt_avaliacao` datetime(6) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL,
  `reccreateon` datetime(6) DEFAULT NULL,
  `fk_codigo_reserva` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FKn6fvdepgely4d1w9uhum3ghy` (`fk_codigo_reserva`),
  CONSTRAINT `FKn6fvdepgely4d1w9uhum3ghy` FOREIGN KEY (`fk_codigo_reserva`) REFERENCES `reserva` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id` bigint(20) NOT NULL,
  `nome_usuario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `espaco_id` bigint(20) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnupbutklkeewr0iq7rjg531tc` (`espaco_id`),
  KEY `FKixspmid2pb85o8ypsd20jakxg` (`usuario_id`),
  CONSTRAINT `FKixspmid2pb85o8ypsd20jakxg` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`codigo`),
  CONSTRAINT `FKnupbutklkeewr0iq7rjg531tc` FOREIGN KEY (`espaco_id`) REFERENCES `espaco` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `denuncia`
--

DROP TABLE IF EXISTS `denuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `denuncia` (
  `id` bigint(20) NOT NULL,
  `addtional_info` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_happened` date DEFAULT NULL,
  `description` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `depoimento`
--

DROP TABLE IF EXISTS `depoimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depoimento` (
  `id` bigint(20) NOT NULL,
  `data_depoimento` date DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome_usuario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2yfjiyot6sgdbbw20swh9e2ci` (`usuario_id`),
  CONSTRAINT `FK2yfjiyot6sgdbbw20swh9e2ci` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `espaco`
--

DROP TABLE IF EXISTS `espaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `espaco` (
  `codigo` bigint(20) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `contato` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt_fim` datetime(6) NOT NULL,
  `dt_inicio` datetime(6) NOT NULL,
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reccreateon` datetime(6) DEFAULT NULL,
  `tamanho_da_sala` int(11) DEFAULT NULL,
  `valor` double NOT NULL,
  `wifi` bit(1) DEFAULT NULL,
  `id_loja` bigint(20) DEFAULT NULL,
  `fk_codigo_tipo_espaco` bigint(20) DEFAULT NULL,
  `id_proprietario` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FKhjwt9931642gyyxrdpbkvascw` (`fk_codigo_tipo_espaco`),
  KEY `FK8lyellqtalqevqf35bagnkeia` (`id_loja`),
  KEY `fk_espaco_user_login_loja` (`id_proprietario`),
  CONSTRAINT `FK8lyellqtalqevqf35bagnkeia` FOREIGN KEY (`id_loja`) REFERENCES `loja` (`id`),
  CONSTRAINT `FKhjwt9931642gyyxrdpbkvascw` FOREIGN KEY (`fk_codigo_tipo_espaco`) REFERENCES `tipo_espaco` (`codigo`),
  CONSTRAINT `fk_espaco_user_login_loja` FOREIGN KEY (`id_proprietario`) REFERENCES `users_login_loja` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imagem`
--

DROP TABLE IF EXISTS `imagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagem` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `espaco_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp4g988ykg45m2n421vnr8ub9f` (`espaco_id`),
  CONSTRAINT `FKp4g988ykg45m2n421vnr8ub9f` FOREIGN KEY (`espaco_id`) REFERENCES `espaco` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `incremental`
--

DROP TABLE IF EXISTS `incremental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incremental` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loja`
--

DROP TABLE IF EXISTS `loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contato` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_create_on` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdvppnfy7n2l69je1m7a069fsj` (`user_id`),
  CONSTRAINT `FKdvppnfy7n2l69je1m7a069fsj` FOREIGN KEY (`user_id`) REFERENCES `users_login_loja` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_fim` datetime(6) DEFAULT NULL,
  `dt_inicio` datetime(6) DEFAULT NULL,
  `reccreateon` datetime(6) DEFAULT NULL,
  `reservation_status` bit(1) NOT NULL,
  `fk_codigo_espaco` bigint(20) DEFAULT NULL,
  `fk_status_reserva` bigint(20) DEFAULT NULL,
  `fk_codigo_usuario_login` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FKtam7kenub45qyqrfpojeyinx2` (`fk_codigo_espaco`),
  KEY `FK6p8cmpvl0bneli6iomcr4fdyp` (`fk_status_reserva`),
  KEY `FKh0c23h4omm4tgtkwxqaxkxu14` (`fk_codigo_usuario_login`),
  CONSTRAINT `FK6p8cmpvl0bneli6iomcr4fdyp` FOREIGN KEY (`fk_status_reserva`) REFERENCES `status_reserva` (`codigo`),
  CONSTRAINT `FKh0c23h4omm4tgtkwxqaxkxu14` FOREIGN KEY (`fk_codigo_usuario_login`) REFERENCES `users_login_loja` (`user_id`),
  CONSTRAINT `FKtam7kenub45qyqrfpojeyinx2` FOREIGN KEY (`fk_codigo_espaco`) REFERENCES `espaco` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reserva_espaco`
--

DROP TABLE IF EXISTS `reserva_espaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_espaco` (
  `codigo` bigint(20) NOT NULL,
  `fk_codigo_espaco` bigint(20) DEFAULT NULL,
  `fk_codigo_reserva` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FKpf053rkq8filtiavmix81cv76` (`fk_codigo_espaco`),
  KEY `FKk02daho2ckqpu2a933to47w5u` (`fk_codigo_reserva`),
  CONSTRAINT `FKk02daho2ckqpu2a933to47w5u` FOREIGN KEY (`fk_codigo_reserva`) REFERENCES `reserva` (`codigo`),
  CONSTRAINT `FKpf053rkq8filtiavmix81cv76` FOREIGN KEY (`fk_codigo_espaco`) REFERENCES `espaco` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status_reserva`
--

DROP TABLE IF EXISTS `status_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_reserva` (
  `codigo` bigint(20) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reccreateon` datetime(6) DEFAULT NULL,
  `reservation_status` bit(1) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_espaco`
--

DROP TABLE IF EXISTS `tipo_espaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_espaco` (
  `codigo` bigint(20) NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reccreateon` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuario` (
  `codigo` bigint(20) NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reccreateon` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_login`
--

DROP TABLE IF EXISTS `users_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_login` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` bit(1) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_verified` bit(1) DEFAULT NULL,
  `role` enum('ADMIN','PROPRIETARIO','USER') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_login_loja`
--

DROP TABLE IF EXISTS `users_login_loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_login_loja` (
  `user_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` bit(1) DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_verified` bit(1) DEFAULT NULL,
  `role` enum('ADMIN','PROPRIETARIO','USER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_uuid` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `codigo` bigint(20) NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reccreateon` datetime(6) DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_codigo_tipo_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK4hj4hmiy7l32ph1c1f2h84hnr` (`fk_codigo_tipo_usuario`),
  CONSTRAINT `FK4hj4hmiy7l32ph1c1f2h84hnr` FOREIGN KEY (`fk_codigo_tipo_usuario`) REFERENCES `tipo_usuario` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'oxyspaces'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-03 22:13:15
