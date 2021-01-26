-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: edu
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
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `save_file_name` varchar(255) NOT NULL COMMENT '서버에 저장되는 영어 이름파일\n',
  `real_file_name` varchar(255) DEFAULT NULL COMMENT '우리pc에 저장되는 한글파일명 ',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  PRIMARY KEY (`save_file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
INSERT INTO `tbl_attach` VALUES ('46bfb16c-a507-45c1-bed2-fa500214a686.jpg','cat-4218424_1920.jpg',2,'2021-01-13 06:39:25'),('533cf3ec-0744-42b5-8baf-35fd7313a25b.jpg','slide_03.jpg',2,'2021-01-13 06:39:25');
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물일련번호, AI(Auto Increament)일련번호를 자동증가기능',
  `board_type` varchar(45) DEFAULT NULL COMMENT '게시판 타입:tbl_board_type테이블의 값을 가져다 사',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물제목',
  `content` text DEFAULT NULL COMMENT '게시물내용',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글조회수',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'gallery','1번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:21:06','2020-12-23 03:21:06'),(2,'gallery','2번째 게시물 입니다.수정112','게시물 내용 입니다.수정','admin',90,0,'2020-12-23 03:45:58','2021-01-25 00:34:57'),(3,'notice','3번째123 게시물 입니다.','게시물 내용 입니다.','admin',14,0,'2020-12-23 03:45:58','2021-01-25 02:13:51'),(4,'gallery','4번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(5,'gallery','5번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(6,'gallery','6번째 게시----------물 입니다.','게시물 내용 입니다.','admin',4,0,'2020-12-23 03:45:58','2021-01-25 00:33:28'),(7,'gallery','7번째 게시물 입니다.갤러리로 이동','게시물 내용 입니다.','admin',3,0,'2020-12-23 03:45:58','2021-01-25 02:14:14'),(8,'notice','8번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(9,'notice','9번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(10,'notice','10번째 게시물 입니다.','게시물 내용 입니다.','admin',43,10,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(11,'notice','11번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(12,'notice','12번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(13,'notice','13번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(14,'notice','14번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(15,'notice','15번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(16,'notice','16번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(17,'notice','17번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(18,'notice','18번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(19,'notice','19번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(20,'notice','20번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(21,'notice','21번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(22,'notice','22번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(23,'notice','23번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(24,'notice','24번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(25,'notice','25번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(26,'notice','26번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(27,'notice','27번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(28,'notice','28번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(29,'notice','29번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(30,'notice','30번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(31,'notice','31번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(32,'notice','32번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(33,'notice','33번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(34,'notice','34번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(35,'notice','35번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(36,'notice','36번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(37,'notice','37번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(38,'notice','38번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(39,'notice','39번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(40,'notice','40번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(41,'notice','41번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(42,'notice','42번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(43,'notice','43번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(44,'notice','44번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(45,'notice','45번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(46,'notice','46번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(47,'notice','47번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(48,'notice','48번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(49,'notice','49번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(50,'notice','50번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(51,'notice','51번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(52,'notice','52번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(53,'notice','53번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(54,'notice','54번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(55,'notice','55번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(56,'notice','56번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(57,'notice','57번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(58,'notice','58번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(59,'notice','59번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(60,'notice','60번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(61,'notice','61번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(62,'notice','62번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(63,'notice','63번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(64,'notice','64번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(65,'notice','65번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(66,'notice','66번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(67,'notice','67번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(68,'notice','68번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(69,'notice','69번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(70,'notice','70번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(71,'notice','71번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(72,'notice','72번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(73,'notice','73번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(74,'notice','74번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(75,'notice','75번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(76,'notice','76번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(77,'notice','77번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(78,'notice','78번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(79,'notice','79번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(80,'notice','80번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(81,'notice','81번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(82,'notice','82번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(83,'notice','83번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(84,'notice','84번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(85,'notice','85번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(86,'notice','86번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(87,'notice','87번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(88,'notice','88번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(89,'notice','89번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(90,'notice','90번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(91,'notice','91번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(92,'notice','92번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(93,'notice','93번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(94,'notice','94번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(95,'notice','95번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(96,'notice','96번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(97,'notice','97번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(98,'notice','98번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(99,'notice','99번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(100,'notice','100번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(101,'notice','101번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(102,'notice','102번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(103,'notice','103번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(104,'notice','104번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(105,'notice','105번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(106,'notice','106번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(107,'notice','107번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(108,'notice','108번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(109,'notice','109번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(110,'notice','110번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:58','2020-12-23 03:45:58'),(126,'test','테스트의테스트','<p>테테테테텟걸 걸걸유고걸<br></p>','효',2,0,'2021-01-26 01:11:08','2021-01-26 01:11:08');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board_type`
--

DROP TABLE IF EXISTS `tbl_board_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board_type` (
  `board_type` varchar(45) NOT NULL COMMENT '게시판 타입:notice,gallery,qna',
  `board_name` varchar(45) DEFAULT NULL COMMENT '게시판 이름',
  `board_sun` int(11) DEFAULT NULL COMMENT '게시판 순서',
  PRIMARY KEY (`board_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판생성:게시판 타입생성';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board_type`
--

LOCK TABLES `tbl_board_type` WRITE;
/*!40000 ALTER TABLE `tbl_board_type` DISABLE KEYS */;
INSERT INTO `tbl_board_type` VALUES ('gallery','겔러리',2),('notice','공지사항',1),('test','테스트',3);
/*!40000 ALTER TABLE `tbl_board_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름',
  `email` varchar(255) DEFAULT NULL COMMENT '회원 이메일',
  `point` int(11) DEFAULT 0 COMMENT '회원 적립포인트',
  `enabled` int(1) DEFAULT 1 COMMENT '인증값(Authentication),활동 가능한 회원 여부, 0 로그인불가능, 1 로그인가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값(Authority),2가지 레벨, ROLE_ADMIN(관리자), ROLE_USER(사용자)',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자,1970부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일자',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','최고관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:03:08','2021-01-22 05:35:25'),('dummy_10','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_100','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_101','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_102','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_103','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_104','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_105','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_106','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_107','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_108','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_109','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_11','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_110','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_12','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_13','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_14','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_15','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_16','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_17','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_18','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_19','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_2','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','홍길동','admin@abc.com',0,1,'ROLE_USER','2020-12-23 03:42:28','2020-12-23 05:11:52'),('dummy_20','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_21','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_22','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_23','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_24','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_25','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_26','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_27','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_28','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_29','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_3','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_30','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_31','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_32','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_33','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_34','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_35','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_36','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_37','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_38','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_39','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_4','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_40','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_41','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_42','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_43','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_44','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_45','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_46','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_47','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_48','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_49','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_5','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_50','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_51','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_52','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_53','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_54','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_55','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_56','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_57','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_58','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_59','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_6','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_60','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_61','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_62','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_63','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_64','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_65','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_66','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_67','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_68','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_69','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_7','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_70','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_71','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_72','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_73','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_74','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_75','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_76','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_77','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_78','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_79','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_8','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_80','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_81','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_82','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_83','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_84','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_85','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_86','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_87','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_88','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_89','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_9','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_90','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_91','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_92','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_93','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_94','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_95','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_96','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_97','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_98','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28'),('dummy_99','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:28','2020-12-23 03:42:28');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번호',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글내용',
  `replyer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='댓글관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
INSERT INTO `tbl_reply` VALUES (1,10,'수정 댓글테스트','관리자','2021-01-05 00:26:43','2021-01-07 06:24:27'),(2,10,'수정 댓글 테스트','adsf','2021-01-05 07:30:14','2021-01-06 01:42:31'),(3,10,'afda','ads','2021-01-06 08:03:02','2021-01-06 08:03:02'),(4,10,'dsaf','sdf','2021-01-06 08:03:02','2021-01-06 08:03:02'),(5,10,'asf','sdf','2021-01-06 08:03:02','2021-01-06 08:03:02'),(6,10,'asf','asf','2021-01-06 08:03:02','2021-01-06 08:03:02'),(7,10,'fas','sdfsdf','2021-01-06 08:03:02','2021-01-06 08:03:02'),(8,10,'ffas',NULL,'2021-01-06 08:03:02','2021-01-06 08:03:02'),(9,10,'1','as','2021-01-06 08:03:02','2021-01-06 08:03:02'),(10,10,'546','13','2021-01-06 08:03:02','2021-01-06 08:03:02');
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
	declare cnt int default 2;
    delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    INSERT INTO tbl_board(bno,title,content,writer)
    VALUES
    (cnt, concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin');
    set cnt = cnt + 1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels) 
		VALUES 
		(concat('dummy_',cnt) , '1234', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN');
        set cnt = cnt + 1;
    end while;
END ;;
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

-- Dump completed on 2021-01-26 15:55:57
