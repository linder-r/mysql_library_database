CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `library`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author_first_name` varchar(45) DEFAULT NULL,
  `author_last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Eva','Johnson'),(2,'Brandon','Mitchell'),(3,'Olivia','Anderson'),(4,'Jordan','Parker'),(5,'Sophie','Ramirez'),(6,'Caleb','Thompson'),(7,'Isabella','Carter'),(8,'Mason','Davis'),(9,'Ava','Martinez'),(10,'Logan','Nelson'),(11,'Liam','Kim'),(12,'Aya','Nakamura'),(13,'Mateo','Rodriguez'),(14,'Leila','Khan'),(15,'Hugo','Silva'),(16,'Yuki','Takahashi'),(17,'Anya','Petrov'),(18,'Ravi','Patel'),(19,'Elena','Lopez'),(20,'Omar','Al-Farsi'),(21,'Heidi','Nocker'),(22,'Carlo','Marini'),(23,'James','Cook'),(24,'Jean-Paul','Bourdieu'),(25,'Franziska','Kimmel'),(26,'Simone','Beverly'),(27,'Antonio','Romano'),(28,'Sidney','Willson'),(29,'Aleksandra','Pavlona'),(30,'Stanislav','Hajek'),(31,'Drako','Kudela'),(32,'Ozren','Bosco'),(33,'Malina','Kowalski'),(34,'Giorgia','Romano'),(35,'Mira','Dvorak'),(36,'Radovan','Barno');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorship`
--

DROP TABLE IF EXISTS `authorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorship` (
  `authorship_id` int NOT NULL AUTO_INCREMENT,
  `author_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  PRIMARY KEY (`authorship_id`),
  KEY `fk_author_idx` (`author_id`),
  KEY `fk_book_idx` (`book_id`),
  CONSTRAINT `fk_authorship_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_authorship_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorship`
--

LOCK TABLES `authorship` WRITE;
/*!40000 ALTER TABLE `authorship` DISABLE KEYS */;
INSERT INTO `authorship` VALUES (129,19,1),(130,18,2),(131,17,3),(132,2,4),(133,5,5),(134,14,6),(135,34,7),(136,36,8),(137,14,9),(138,24,10),(139,23,11),(140,4,12),(141,4,13),(142,36,14),(143,20,15),(144,29,16),(145,22,17),(146,26,18),(147,7,19),(148,8,20),(149,20,21),(150,33,22),(151,23,23),(152,13,24),(153,12,25),(154,24,26),(155,33,27),(156,35,28),(157,6,29),(158,26,30),(159,34,31),(160,4,32),(161,27,33),(162,30,34),(163,25,35),(164,17,36),(165,8,37),(166,8,38),(167,4,39),(168,33,40),(169,3,41),(170,22,42),(171,28,43),(172,35,44),(173,15,45),(174,14,46),(175,28,47),(176,12,48),(177,9,49),(178,14,50),(179,32,51),(180,37,52),(181,37,53),(182,27,54),(183,25,55),(184,36,56),(185,18,57),(186,37,58),(187,11,59),(188,34,60),(189,10,61),(190,19,62),(191,31,63),(192,22,64),(193,32,65),(194,10,66),(195,31,67),(196,31,68),(197,29,69),(198,4,70),(199,30,71),(200,23,72),(201,4,73),(202,9,74),(203,24,75),(204,37,76),(205,35,77),(206,23,78),(207,21,79),(208,16,80),(209,19,81),(210,23,82),(211,26,83),(212,18,84),(213,31,85),(214,35,86),(215,36,87),(216,13,88),(217,9,89),(218,1,90),(219,28,91),(220,25,92),(221,15,93),(222,16,94),(223,28,95),(224,17,96),(225,34,97),(226,15,98),(227,5,99),(228,18,100),(229,2,101),(230,24,102),(231,4,103),(232,14,104),(233,15,105),(234,2,106),(235,22,107),(236,23,108),(237,36,109),(238,31,110),(239,27,111),(240,27,90),(241,28,83),(242,4,79),(243,11,26),(244,16,87),(245,21,78),(246,4,4),(247,6,39),(248,36,74),(249,29,38),(250,8,38),(251,26,1),(252,15,98),(253,28,50),(254,33,62),(255,15,17),(256,22,9);
/*!40000 ALTER TABLE `authorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_title` varchar(150) DEFAULT NULL,
  `publication_year` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_publisher_idx` (`publisher_id`),
  CONSTRAINT `fk_book_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Echoes of Eternity',2005,1),(2,'Whispers in the Wind',2010,3),(3,'Enchanted Chronicles',2018,2),(4,'Mystical Realms',2008,13),(5,'Celestial Harmony',2015,12),(6,'Secrets of Serenity',2012,8),(7,'Ephemeral Dreams',2007,8),(8,'Beyond the Horizon',2013,8),(9,'Shadows of Destiny',2011,5),(10,'Serenade of Silence',2016,9),(11,'Lost in Labyrinth',2009,2),(12,'Fireside Fables',2017,2),(13,'Starlit Symphony',2006,2),(14,'Whirlwind Wonders',2014,2),(15,'Chronicles of Cosmos',2004,4),(16,'Silent Whispers',2019,5),(17,'Realm of Reflections',2018,6),(18,'Eternal Echo',2016,6),(19,'Journey to Juniper',2010,7),(20,'Sapphire Skies',2005,1),(21,'Enigmatic Enchantments',2013,2),(22,'Echoes from Eden',2017,3),(23,'Harmony in Hues',2008,3),(24,'Whispers of Winter',2014,10),(25,'Astral Awakening',2006,11),(26,'Mystic Mosaic',2011,12),(27,'Evergreen Elegy',2015,13),(28,'Dance of Dimensions',2009,1),(29,'Luminous Legacy',2012,1),(30,'Celestial Canvas',2020,1),(31,'Crimson Chronicles',2014,1),(32,'Whimsical Wanderlust',2019,1),(33,'Moonlit Melodies',2007,2),(34,'Spectra Symphony',2016,3),(35,'Lost Legends of Lirelia',2012,7),(36,'Oracle of Oceans',2018,7),(37,'Echoes in Emerald',2006,9),(38,'Riddles of the Cosmos',2011,9),(39,'Azure Alchemy',2017,10),(40,'Voyage of Vermilion',2013,10),(41,'Not my kind of heaven',2008,11),(42,'Labyrinth of Luminance',2015,12),(43,'Whispers from Wisteria',2009,13),(44,'Mystic Moonlight',2014,7),(45,'Eternal Enigma',2010,6),(46,'Silent Sands Saga',2020,6),(47,'Ethereal Expedition',2016,6),(48,'Chronicles of the Celestials',2013,4),(49,'Infinite Illusions',2005,4),(50,'Melodies of the Midnight Mist',2012,2),(51,'Radiant Reverie',2018,2),(52,'The Hilarious Handbook of Hiccups',2018,2),(53,'Tickle Your Toes: A Tale of Tenacious Tap-Dancing Turtles',2015,2),(54,'Giggles Galore: The Great Clown Caper',2012,3),(55,'The Wacky World of Whoopee Cushions',2019,3),(56,'Silly Socks and Other Fashion Fiascos',2014,4),(57,'Chickens Can\'t Cross the Road: A Poultry Parody',2006,5),(58,'Bumbling Bakers and the Bread Bandits',2011,5),(59,'The Mirthful Misadventures of Mr. Chuckles',2017,5),(60,'Dancing Donkeys and Disco Dolphins',2008,1),(61,'Zany Zebras and the Zipline Zingers',2013,2),(62,'The Great Guffaw Gambit',2010,2),(63,'Funky Farmyard Frolics',2016,3),(64,'Laughing Llamas and Loony Lemurs',2009,1),(65,'Kooky Kettlebell Capers',2014,1),(66,'Whoopee Whales: A Comedy of Oceanic Proportions',2015,2),(67,'Spectacularly Silly Superheroes',2020,2),(68,'The Chuckling Chinchilla Chronicles',2016,3),(69,'Banana Peel Ballet: A Slippery Spectacle',2013,4),(70,'Incredible Inventions of the Inept Inventors',2005,11),(71,'Witty Wombats and the Waffle Wonders',2012,12),(72,'Hysterical History: The Time-Traveling Tumble',2018,11),(73,'Snicker Snails and Jovial Jellyfish',2014,3),(74,'Galactic Giggles: A Space Comedy Extravaganza',2007,3),(75,'The Whimsical Whoopee Cushion Conspiracy',2011,3),(76,'Ridiculous Robots and the Razzle-Dazzle Rebellion',2019,3),(77,'Sassy Squirrels and the Nutty Nutcracker',2008,3),(78,'Ludicrous Leprechauns and the Laughing Lighthouse',2015,4),(79,'Comical Cats: The Purr-fect Prank Patrol',2010,4),(80,'Enchanted Elbows: A Bizarre Ballet of Bending',2013,4),(81,'Loony Lizards and the Lighthearted Lagoon',2017,5),(82,'Shadows in the Back Alley',2018,5),(83,'The Puzzling Poison Plot',2015,5),(84,'Crimson Conspiracy',2012,6),(85,'Fatal Frame-Up',2019,7),(86,'Double-Crossed Shadows',2014,1),(87,'Deadly Deception at Dawn',2006,1),(88,'Whispers of the Underground',2011,2),(89,'The Silent Witness',2017,2),(90,'City of Secrets',2008,2),(91,'Blackmail in Blue',2013,3),(92,'The Great Gravestone Gambit',2010,4),(93,'Foggy Betrayals',2016,4),(94,'The Scent of Suspicion',2009,5),(95,'Shattered Alibis',2014,5),(96,'Dead End Affair',2015,5),(97,'The Vanishing Vengeance',2020,7),(98,'Framed in Fog',2016,6),(99,'Crimson Connection',2013,6),(100,'Intrigue in Ink',2005,8),(101,'Whiskey and Whispers',2012,9),(102,'The Hushed Heist',2018,3),(103,'Fateful Frames',2014,3),(104,'Darkened Alleys',2007,3),(105,'The Whimsical Whodunit',2011,2),(106,'Rogue Robots and the Reckless Robbery',2019,2),(107,'Bloodstains at Twilight',2008,2),(108,'Labyrinth of Lies',2015,2),(109,'The Bizarre Betrayal',2010,2),(110,'Cryptic Chronicles',2013,2),(111,'Devious Disappearances',2017,12);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowing`
--

DROP TABLE IF EXISTS `borrowing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowing` (
  `member_id` int NOT NULL,
  `book_id` int NOT NULL,
  `borrow_date` date DEFAULT (curdate()),
  `due_date` date GENERATED ALWAYS AS ((`borrow_date` + interval 30 day)) VIRTUAL,
  PRIMARY KEY (`member_id`,`book_id`),
  UNIQUE KEY `book_id` (`book_id`),
  CONSTRAINT `fk_borrowing_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_borrowing_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowing`
--

LOCK TABLES `borrowing` WRITE;
/*!40000 ALTER TABLE `borrowing` DISABLE KEYS */;
INSERT INTO `borrowing` (`member_id`, `book_id`, `borrow_date`) VALUES (4,11,'2023-10-18'),(4,99,'2023-09-29'),(7,63,'2023-11-02'),(11,15,'2023-11-13'),(18,51,'2023-12-21'),(19,4,'2023-12-21'),(22,66,'2023-12-21'),(22,101,'2023-12-21'),(29,40,'2023-12-21');
/*!40000 ALTER TABLE `borrowing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee` (
  `fee_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `open_fee` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`fee_id`),
  KEY `constraint_name` (`member_id`),
  CONSTRAINT `constraint_name` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES (1,4,6.50),(2,7,1.50),(3,11,0.50);
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Romance'),(2,'Poetry'),(3,'Science fiction'),(4,'Fantasy'),(5,'Crime fiction'),(6,'Thriller'),(7,'Memoir'),(8,'Arts'),(9,'History'),(10,'Science'),(11,'Philosophy'),(12,'Travel'),(13,'Business'),(14,'Comedy');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_affiliation`
--

DROP TABLE IF EXISTS `genre_affiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_affiliation` (
  `genre_affiliation_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  PRIMARY KEY (`genre_affiliation_id`),
  KEY `fk_book_idx` (`book_id`),
  KEY `fk_genre_idx` (`genre_id`),
  CONSTRAINT `fk_genre_affiliation_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_genre_affiliation_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_affiliation`
--

LOCK TABLES `genre_affiliation` WRITE;
/*!40000 ALTER TABLE `genre_affiliation` DISABLE KEYS */;
INSERT INTO `genre_affiliation` VALUES (120,1,8),(121,2,6),(122,3,12),(123,4,1),(124,5,7),(125,6,12),(126,7,6),(127,8,11),(128,9,5),(129,10,4),(130,11,3),(131,12,10),(132,13,10),(133,14,12),(134,15,13),(135,16,13),(136,17,10),(137,18,8),(138,19,1),(139,20,6),(140,21,4),(141,23,12),(142,24,7),(143,25,3),(144,26,9),(145,27,1),(146,28,7),(147,29,8),(148,30,3),(149,31,3),(150,32,1),(151,33,4),(152,34,3),(153,35,9),(154,36,10),(155,37,3),(156,38,5),(157,39,6),(158,40,9),(159,41,8),(160,42,8),(161,43,6),(162,44,13),(163,45,12),(164,46,3),(165,47,6),(166,48,3),(167,49,13),(168,50,9),(169,51,13),(170,52,11),(171,53,10),(172,54,9),(173,55,10),(174,56,4),(175,57,4),(176,58,2),(177,59,4),(178,60,6),(179,61,4),(180,62,12),(181,63,7),(182,64,9),(183,65,5),(184,66,1),(185,67,9),(186,68,4),(187,69,5),(188,70,10),(189,71,1),(190,72,6),(191,73,5),(192,74,10),(193,75,11),(194,76,3),(195,77,10),(196,78,3),(197,79,11),(198,80,13),(199,81,5),(200,82,2),(201,83,5),(202,84,12),(203,86,6),(204,87,3),(205,88,8),(206,89,7),(207,90,8),(208,91,7),(209,92,8),(210,93,10),(211,94,6),(212,95,6),(213,96,8),(214,97,6),(215,98,13),(216,99,11),(217,100,11),(218,101,1),(219,102,5),(220,103,3),(221,104,4),(222,105,8),(223,106,1),(224,107,4),(225,108,3),(226,109,3),(227,110,10),(228,111,3),(229,105,13),(230,81,3),(231,65,13),(232,56,2),(233,1,10),(234,102,4),(235,82,9),(236,23,4),(237,64,11),(238,33,8),(239,54,8),(240,18,1);
/*!40000 ALTER TABLE `genre_affiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `member_first_name` varchar(45) DEFAULT NULL,
  `member_last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Emma','Johnson','emma.j@example.com','12345','Springfield','1990-05-15'),(2,'Aiden','Miller','aiden.m@example.com','56789','Rivertown','1988-09-22'),(3,'Sophia','Garcia','sophia.g@example.com','45678','Harbor City','1995-03-11'),(4,'Liam','Smith','liam.s@example.com','78901','Meadowville','1987-07-30'),(5,'Olivia','Brown','olivia.b@example.com','23456','Sunset Hills','1992-12-03'),(6,'Noah','Davis','noah.d@example.com','34567','Oceanview','1985-11-18'),(7,'Ava','Wilson','ava.w@example.com','89012','Mountain Vista','1998-04-25'),(8,'Elijah','Taylor','elijah.t@example.com','67890','Lakefront','1993-08-14'),(9,'Isabella','Clark','isabella.c@example.com','56789','Maplewood','1996-06-07'),(10,'Mason','Moore','mason.m@example.com','12345','Pinecrest','1991-01-29'),(11,'Ethan','Jones','ethan.j@example.com','34567','Greenfield','1994-09-08'),(12,'Mia','Gonzalez','mia.g@example.com','89012','Cedarville','1997-02-17'),(13,'Lucas','Hernandez','lucas.h@example.com','23456','Lakeview','1989-06-26'),(14,'Amelia','White','amelia.w@example.com','67890','Highland Park','1996-12-14'),(15,'Jackson','Lopez','jackson.l@example.com','45678','Hillside','1986-04-01'),(16,'Aria','Adams','aria.a@example.com','12345','Riverdale','1999-03-05'),(17,'Carter','Kim','carter.k@example.com','56789','Sunnyvale','1992-07-19'),(18,'Grace','Lee','grace.l@example.com','78901','Silver Springs','1990-10-12'),(19,'Liam','Wang','liam.w@example.com','56789','Evergreen','1998-11-28'),(20,'Ava','Nguyen','ava.n@example.com','23456','Bayside','1991-05-03'),(21,'Owen','Chen','owen.c@example.com','34567','Pleasantville','1987-08-22'),(22,'Zoe','Gupta','zoe.g@example.com','89012','Fairview','1995-01-31'),(23,'Elijah','Ali','elijah.a@example.com','45678','Windsor','1993-04-15'),(24,'Sofia','Kumar','sofia.k@example.com','12345','Brookside','1988-09-10'),(25,'Logan','Park','logan.p@example.com','67890','Meadowlake','1994-06-20'),(26,'Lily','Morales','lily.m@example.com','56789','Lakeside','1997-12-09'),(27,'Mason','Connor','mason.o@example.com','89012','Riverside','1992-02-27'),(28,'Harper','Liu','harper.l@example.com','23456','Silverton','1989-11-08'),(29,'Caleb','Singh','caleb.s@example.com','34567','Golden Grove','1996-03-24'),(30,'Avery','Thakur','avery.t@example.com','78901','Willow Creek','1991-07-11');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Alpha Publishing Group'),(2,'Creative Minds Press'),(3,'Inventive Publications Inc.'),(4,'Mystic Writers Consortium'),(5,'Quixotic Books Ltd.'),(6,'Ephemeral Editions'),(7,'Whispering Pages Co.'),(8,'Illusionary Press'),(9,'Enigma Editions'),(10,'Odyssey Publications'),(11,'Lunar Press'),(12,'Willow Publishers'),(13,'Echo Books');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `book_id` int NOT NULL,
  `member_id` int NOT NULL,
  `reservation_date` date DEFAULT (curdate()),
  PRIMARY KEY (`book_id`,`member_id`),
  KEY `fk_reservation_member` (`member_id`),
  CONSTRAINT `fk_reservation_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_reservation_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,2,'2023-12-21'),(51,4,'2023-12-21'),(66,16,'2023-12-21');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returned_book`
--

DROP TABLE IF EXISTS `returned_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returned_book` (
  `returned_book_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `return_date` date DEFAULT (curdate()),
  `borrow_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`returned_book_id`),
  KEY `fk_returned_book_book` (`book_id`),
  CONSTRAINT `fk_returned_book_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returned_book`
--

LOCK TABLES `returned_book` WRITE;
/*!40000 ALTER TABLE `returned_book` DISABLE KEYS */;
INSERT INTO `returned_book` VALUES (214,16,0,'2020-02-07','2020-01-17','2020-02-16'),(215,21,1,'2021-08-09','2021-07-20','2021-08-19'),(216,18,2,'2022-06-29','2022-06-12','2022-07-12'),(217,30,3,'2023-11-05','2023-10-22','2023-11-21'),(218,25,4,'2021-12-09','2021-11-27','2021-12-27'),(219,25,4,'2022-12-09','2022-10-27','2022-10-27'),(220,3,5,'2021-11-27','2021-11-14','2021-12-14'),(221,9,6,'2022-04-29','2022-04-19','2022-05-19'),(222,3,7,'2022-06-01','2022-05-06','2022-06-05'),(223,6,7,'2023-06-01','2023-05-06','2023-06-05'),(224,24,8,'2022-12-18','2022-11-29','2022-12-29'),(225,12,9,'2021-05-29','2021-05-03','2021-06-02'),(226,16,10,'2021-07-19','2021-07-09','2021-08-08'),(227,19,11,'2020-08-13','2020-03-22','2020-04-21'),(228,21,12,'2021-08-17','2021-07-30','2021-08-29'),(229,16,13,'2023-04-27','2023-04-21','2023-05-21'),(230,1,14,'2020-11-18','2020-10-26','2020-11-25'),(231,25,15,'2023-06-14','2023-05-24','2023-06-23'),(232,25,16,'2023-09-19','2023-09-05','2023-10-05'),(233,9,17,'2022-03-20','2022-02-28','2022-03-30'),(234,9,18,'2020-02-27','2020-02-26','2020-03-27'),(235,18,19,'2023-07-12','2023-06-27','2023-07-27'),(236,12,20,'2020-04-29','2020-04-01','2020-05-01'),(237,5,21,'2022-07-04','2022-06-10','2022-07-10'),(238,6,22,'2020-10-13','2020-09-22','2020-10-22'),(239,21,22,'2021-10-13','2021-09-22','2021-10-22'),(240,21,22,'2022-10-13','2022-09-22','2022-10-22'),(241,21,22,'2023-10-13','2023-09-22','2023-10-22'),(242,17,23,'2023-11-01','2023-10-15','2023-11-14'),(243,14,24,'2023-08-12','2023-07-22','2023-08-21'),(244,1,25,'2022-07-01','2022-06-25','2022-07-25'),(245,10,26,'2020-11-30','2020-11-13','2020-12-13'),(246,11,27,'2023-03-16','2023-02-27','2023-03-29'),(247,2,28,'2021-08-08','2021-07-17','2021-08-16'),(248,11,29,'2021-03-02','2021-02-05','2021-03-07'),(249,21,30,'2020-09-28','2020-09-10','2020-10-10'),(250,20,31,'2021-01-09','2020-12-12','2021-01-11'),(251,5,32,'2022-06-15','2022-06-06','2022-07-06'),(252,66,32,'2023-06-15','2023-06-06','2023-07-06'),(253,11,33,'2023-10-02','2023-09-22','2023-10-22'),(254,21,34,'2022-07-30','2022-07-20','2022-08-19'),(255,25,35,'2021-11-11','2021-05-06','2021-06-05'),(256,16,36,'2022-08-06','2022-07-30','2022-08-29'),(257,21,37,'2020-11-17','2020-10-26','2020-11-25'),(258,21,38,'2021-07-28','2021-07-06','2021-08-05'),(259,7,39,'2020-12-09','2020-11-29','2020-12-29'),(260,14,40,'2023-09-21','2023-08-27','2023-09-26'),(261,17,41,'2022-06-26','2022-05-12','2022-06-11'),(262,1,42,'2023-04-19','2023-03-18','2023-04-17'),(263,20,43,'2021-12-13','2021-11-29','2021-12-29'),(264,5,44,'2020-05-14','2020-05-03','2020-06-02'),(265,5,45,'2022-12-10','2022-11-22','2022-12-22'),(266,23,46,'2020-08-01','2020-07-12','2020-08-11'),(267,2,47,'2023-07-21','2023-06-28','2023-07-28'),(268,28,48,'2022-12-22','2022-11-25','2022-12-25'),(269,18,49,'2022-04-03','2022-03-14','2022-04-13'),(270,18,49,'2023-10-03','2023-03-14','2023-04-13'),(271,12,50,'2020-07-08','2020-06-28','2020-07-28'),(272,6,51,'2021-11-26','2021-11-22','2021-12-22'),(273,30,52,'2021-05-15','2021-04-24','2021-05-24'),(274,5,53,'2020-11-04','2020-10-10','2020-11-09'),(275,75,53,'2021-12-14','2021-10-10','2021-11-09'),(276,4,54,'2021-05-31','2021-05-01','2021-05-31'),(277,13,55,'2021-12-21','2021-12-05','2022-01-04'),(278,17,56,'2021-12-22','2021-12-06','2022-01-05'),(279,21,57,'2021-01-05','2021-01-02','2021-02-01'),(280,25,58,'2020-11-12','2020-10-27','2020-11-26'),(281,14,59,'2021-08-21','2021-07-21','2021-08-20'),(282,9,60,'2022-10-07','2022-09-28','2022-10-28'),(283,8,61,'2022-07-08','2022-06-17','2022-07-17'),(284,14,62,'2020-10-24','2020-10-10','2020-11-09'),(285,29,63,'2020-07-10','2020-06-24','2020-07-24'),(286,22,64,'2023-01-22','2023-01-12','2023-02-11'),(287,5,53,'2020-11-04','2020-10-10','2020-11-09'),(288,25,53,'2022-01-04','2021-10-10','2021-11-09'),(289,20,66,'2021-04-28','2021-03-29','2021-04-28'),(290,16,67,'2021-11-21','2021-10-21','2021-11-20'),(291,23,68,'2023-10-19','2023-10-06','2023-11-05'),(292,8,69,'2023-05-04','2023-04-10','2023-05-10'),(293,19,70,'2022-06-08','2022-05-18','2022-06-17'),(294,29,71,'2020-08-03','2020-07-23','2020-08-22'),(295,9,72,'2022-12-03','2022-11-23','2022-12-23'),(296,12,73,'2022-06-14','2022-06-07','2022-07-07'),(297,22,74,'2022-11-11','2022-11-09','2022-12-09'),(298,5,75,'2022-07-18','2022-07-10','2022-08-09'),(299,25,76,'2023-12-02','2023-11-14','2023-12-14'),(300,3,77,'2023-11-24','2023-11-23','2023-12-23'),(301,27,78,'2020-07-31','2020-07-13','2020-08-12'),(302,29,79,'2021-01-04','2020-12-15','2021-01-14'),(303,23,80,'2020-11-13','2020-11-06','2020-12-06'),(304,28,81,'2022-09-02','2022-08-20','2022-09-19'),(305,14,82,'2021-01-11','2020-12-21','2021-01-20'),(306,18,83,'2020-02-01','2020-01-24','2020-02-23'),(307,30,83,'2021-03-01','2021-01-24','2021-02-23'),(308,3,84,'2020-01-31','2020-01-28','2020-02-27'),(309,23,85,'2021-09-26','2021-09-25','2021-10-25'),(310,12,86,'2020-07-21','2020-07-08','2020-08-07'),(311,24,87,'2023-11-01','2023-10-24','2023-11-23'),(312,24,88,'2022-07-17','2022-07-01','2022-07-31'),(313,18,89,'2023-04-07','2023-03-18','2023-04-17'),(314,7,90,'2021-08-25','2021-07-02','2021-08-01'),(315,2,91,'2020-08-01','2020-06-15','2020-07-15'),(316,12,92,'2020-11-24','2020-11-07','2020-12-07'),(317,20,93,'2020-11-21','2020-04-03','2020-05-03'),(318,14,94,'2023-05-28','2023-05-22','2023-06-21'),(319,5,95,'2020-10-29','2020-10-18','2020-11-17'),(320,21,96,'2023-05-12','2023-04-12','2023-05-12'),(321,1,97,'2020-11-25','2020-11-15','2020-12-15'),(322,25,98,'2023-08-29','2023-08-27','2023-09-26'),(323,16,99,'2020-04-01','2020-03-13','2020-04-12'),(324,16,110,'2021-04-01','2021-03-13','2021-04-12'),(325,16,110,'2022-06-01','2022-04-13','2022-05-13'),(326,16,110,'2023-06-02','2023-03-13','2023-04-12');
/*!40000 ALTER TABLE `returned_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-10 13:21:56
