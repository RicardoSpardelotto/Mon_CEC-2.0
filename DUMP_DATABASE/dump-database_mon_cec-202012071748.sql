-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: database_mon_cec
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

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
-- Table structure for table `comorbidades`
--

DROP TABLE IF EXISTS `comorbidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comorbidades` (
  `codcomo` int(10) NOT NULL AUTO_INCREMENT,
  `desccomor` varchar(255) NOT NULL,
  PRIMARY KEY (`codcomo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comorbidades`
--

LOCK TABLES `comorbidades` WRITE;
/*!40000 ALTER TABLE `comorbidades` DISABLE KEYS */;
INSERT INTO `comorbidades` VALUES (1,'Diabetes'),(2,'Obesidade'),(3,'Hipertensão'),(4,'Tuberculose'),(5,'Câncer'),(6,'Mioma'),(7,'Depressão'),(8,'Anemia'),(9,'Galactorreia'),(10,'Dermatite'),(11,'Varíola'),(12,'Sarampo'),(13,'Malária'),(14,'AIDS'),(15,'Tifo'),(16,'Asma');
/*!40000 ALTER TABLE `comorbidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `pais` varchar(255) NOT NULL,
  `est` char(2) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `comp` varchar(255) DEFAULT NULL,
  `Pacientecodpac` int(10) NOT NULL,
  `num` int(5) DEFAULT NULL,
  `cep` char(8) NOT NULL,
  KEY `FKEndereco525211` (`Pacientecodpac`),
  CONSTRAINT `FKEndereco525211` FOREIGN KEY (`Pacientecodpac`) REFERENCES `paciente` (`codpac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES ('Brasil','SC','Itapiranga','Rua 30 de fevereiro','Centro','Proximo a rua',1,666,'89920123');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especializacao`
--

DROP TABLE IF EXISTS `especializacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especializacao` (
  `codesp` int(8) NOT NULL AUTO_INCREMENT,
  `nomeesp` varchar(255) NOT NULL,
  `instituicao` varchar(255) NOT NULL,
  PRIMARY KEY (`codesp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especializacao`
--

LOCK TABLES `especializacao` WRITE;
/*!40000 ALTER TABLE `especializacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `especializacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especializacao_medico`
--

DROP TABLE IF EXISTS `especializacao_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especializacao_medico` (
  `Especializacaocodesp` int(8) NOT NULL,
  `Medicocodmed` int(8) NOT NULL,
  PRIMARY KEY (`Especializacaocodesp`,`Medicocodmed`),
  KEY `FKEspecializ131278` (`Medicocodmed`),
  CONSTRAINT `FKEspecializ131278` FOREIGN KEY (`Medicocodmed`) REFERENCES `medico` (`codmed`),
  CONSTRAINT `FKEspecializ5741` FOREIGN KEY (`Especializacaocodesp`) REFERENCES `especializacao` (`codesp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especializacao_medico`
--

LOCK TABLES `especializacao_medico` WRITE;
/*!40000 ALTER TABLE `especializacao_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `especializacao_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `codhos` int(8) NOT NULL AUTO_INCREMENT,
  `nomhosp` varchar(255) NOT NULL,
  `telef` varchar(255) NOT NULL,
  `esthos` char(2) NOT NULL,
  `cidhos` varchar(255) NOT NULL,
  `ruahos` varchar(255) NOT NULL,
  PRIMARY KEY (`codhos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'Hospital São Lucas','(49) 3645-0137','SC','Guaraciaba','R. Dom Pedro I');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `codusuario` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`codusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Ricardo Spardelotto','lala12345'),(2,'Luiz Henrique Balensiefer','bebe12345'),(3,'Pablo Lolatto','papa12345');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `codmed` int(8) NOT NULL AUTO_INCREMENT,
  `nomemed` varchar(255) NOT NULL,
  `cpfmed` char(11) DEFAULT NULL,
  PRIMARY KEY (`codmed`),
  UNIQUE KEY `cpfmed` (`cpfmed`),
  UNIQUE KEY `cpfmed_2` (`cpfmed`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Thomas Frist Jr',NULL),(2,'João de Deus',NULL),(3,'Gary K. Michelson',NULL),(4,'José Eduardo Souza',NULL),(5,'José Osmar Medina Pestana',NULL),(6,'Raul Marino Júnior',NULL),(7,'José Pedro da Silva',NULL),(8,'Adriana de Oliveira Melo',NULL),(9,'Antônio de Salles',NULL),(10,'Atos Alves de Sousa',NULL),(11,'José Carlos Pachón Mateos',NULL),(12,'Angelita Habr-Gama',NULL);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `codpac` int(10) NOT NULL AUTO_INCREMENT,
  `nomepac` varchar(255) NOT NULL,
  `cpfpac` varchar(11) NOT NULL,
  `sexpac` enum('M','F') NOT NULL,
  `telpac` varchar(255) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `Hospitalcodhos` int(8) NOT NULL,
  `Medicocodmed` int(8) DEFAULT NULL,
  `datareg` date DEFAULT NULL,
  PRIMARY KEY (`codpac`),
  UNIQUE KEY `cpfpac` (`cpfpac`),
  KEY `FKPaciente924260` (`Medicocodmed`),
  KEY `FKPaciente300502` (`Hospitalcodhos`),
  CONSTRAINT `FKPaciente300502` FOREIGN KEY (`Hospitalcodhos`) REFERENCES `hospital` (`codhos`),
  CONSTRAINT `FKPaciente924260` FOREIGN KEY (`Medicocodmed`) REFERENCES `medico` (`codmed`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Maria Joana','25664575573','F','(83) 66466-7321','1990-12-26',1,1,'2020-12-07');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_comorbidades`
--

DROP TABLE IF EXISTS `paciente_comorbidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente_comorbidades` (
  `Pacientecodpac` int(10) NOT NULL,
  `Comorbidadescodcomo` int(10) NOT NULL,
  PRIMARY KEY (`Pacientecodpac`,`Comorbidadescodcomo`),
  KEY `FKPaciente_C880135` (`Comorbidadescodcomo`),
  CONSTRAINT `FKPaciente_C60719` FOREIGN KEY (`Pacientecodpac`) REFERENCES `paciente` (`codpac`),
  CONSTRAINT `FKPaciente_C880135` FOREIGN KEY (`Comorbidadescodcomo`) REFERENCES `comorbidades` (`codcomo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_comorbidades`
--

LOCK TABLES `paciente_comorbidades` WRITE;
/*!40000 ALTER TABLE `paciente_comorbidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente_comorbidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_sintomas`
--

DROP TABLE IF EXISTS `paciente_sintomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente_sintomas` (
  `Pacientecodpac` int(10) NOT NULL,
  `Sintomascodsint` int(5) NOT NULL,
  `Intsint` int(2) DEFAULT NULL,
  PRIMARY KEY (`Pacientecodpac`,`Sintomascodsint`),
  KEY `FKPaciente_S824946` (`Sintomascodsint`),
  CONSTRAINT `FKPaciente_S516710` FOREIGN KEY (`Pacientecodpac`) REFERENCES `paciente` (`codpac`),
  CONSTRAINT `FKPaciente_S824946` FOREIGN KEY (`Sintomascodsint`) REFERENCES `sintomas` (`codsint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_sintomas`
--

LOCK TABLES `paciente_sintomas` WRITE;
/*!40000 ALTER TABLE `paciente_sintomas` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente_sintomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionario`
--

DROP TABLE IF EXISTS `questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionario` (
  `Pacientecodpac` int(10) NOT NULL,
  `pesopac` decimal(5,2) NOT NULL,
  `altpac` decimal(3,2) NOT NULL,
  `teste` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `bebe` enum('S','N') NOT NULL,
  `fuma` enum('S','N') NOT NULL,
  `relacsex` enum('S','N') NOT NULL,
  `classe` varchar(255) NOT NULL,
  `tipsang` varchar(3) NOT NULL,
  KEY `FKQuestionar555707` (`Pacientecodpac`),
  CONSTRAINT `FKQuestionar555707` FOREIGN KEY (`Pacientecodpac`) REFERENCES `paciente` (`codpac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionario`
--

LOCK TABLES `questionario` WRITE;
/*!40000 ALTER TABLE `questionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sintomas`
--

DROP TABLE IF EXISTS `sintomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sintomas` (
  `codsint` int(5) NOT NULL AUTO_INCREMENT,
  `nomesint` varchar(255) NOT NULL,
  PRIMARY KEY (`codsint`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sintomas`
--

LOCK TABLES `sintomas` WRITE;
/*!40000 ALTER TABLE `sintomas` DISABLE KEYS */;
INSERT INTO `sintomas` VALUES (1,'Tosse'),(2,'Febre'),(3,'Cansaço'),(4,'Dor de garganta'),(5,'Diarreia'),(6,'Conjuntivite'),(7,'Dor de cabeça'),(8,'Perda de paladar'),(9,'Perda de olfato'),(10,'Falta de ar'),(11,'Dor no peito'),(12,'Perda de fala'),(13,'Vômito');
/*!40000 ALTER TABLE `sintomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'database_mon_cec'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 17:48:47
