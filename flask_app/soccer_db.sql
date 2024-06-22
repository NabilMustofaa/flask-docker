/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - soccer_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `soccer_db`;

/*Table structure for table `article_positions` */

DROP TABLE IF EXISTS `article_positions`;

CREATE TABLE `article_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  KEY `position_id` (`position_id`),
  CONSTRAINT `article_positions_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `article_positions_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `article_positions` */

insert  into `article_positions`(`id`,`article_id`,`position_id`) values 
(5,3,2),
(6,3,2),
(7,3,3),
(8,2,2),
(9,2,5),
(10,2,5),
(111,1,1),
(112,1,6),
(113,1,5);

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `steps` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `articles` */

insert  into `articles`(`id`,`title`,`body`,`steps`,`thumbnail`,`create_date`,`user_id`,`deleted`,`min_age`,`max_age`) values 
(1,'Training For Wings','Update test','Run 500m, Dribble Moves','/uploads/17111802940334.png','2024-03-23',2,0,1,20),
(2,'test','123','123','/uploads/1707223483650@nabil_mustofa_like1.png','2024-02-06',2,0,4,24),
(3,'213123','123123','123123','/uploads/17072234367655_M._Nabil_Mutofa_eventcampus.png','2024-02-06',2,0,1,21);

/*Table structure for table `attributes` */

DROP TABLE IF EXISTS `attributes`;

CREATE TABLE `attributes` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(255) NOT NULL,
  `attribute_display` varchar(255) NOT NULL,
  `attribute_question` varchar(255) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `attributes` */

insert  into `attributes`(`attribute_id`,`attribute_name`,`attribute_display`,`attribute_question`) values 
(29,'movement_acceleration','Movement Acceleration','How would you rate your movement acceleration?'),
(30,'mentality_positioning','Mentality Positioning','How would you rate your mentality positioning?'),
(31,'mentality_interceptions','Mentality Interceptions','How would you rate your mentality interceptions?'),
(32,'mentality_aggression','Mentality Aggression','How would you rate your mentality aggression?'),
(33,'attacking_finishing','Attacking Finishing','How would you rate your attacking finishing?'),
(34,'power_shot_power','Power Shot Power','How would you rate your power shot power?'),
(35,'power_long_shots','Power Long Shots','How would you rate your power long shots?'),
(36,'attacking_volleys','Attacking Volleys','How would you rate your attacking volleys?'),
(37,'mentality_penalties','Mentality Penalties','How would you rate your mentality penalties?'),
(38,'mentality_vision','Mentality Vision','How would you rate your mentality vision?'),
(39,'attacking_crossing','Attacking Crossing','How would you rate your attacking crossing?'),
(40,'skill_fk_accuracy','Skill Free Kick Accuracy','How would you rate your skill free kick accuracy?'),
(41,'attacking_short_passing','Attacking Short Passing','How would you rate your attacking short passing?'),
(42,'skill_long_passing','Skill Long Passing','How would you rate your skill long passing?'),
(43,'skill_curve','Skill Curve','How would you rate your skill curve?'),
(44,'movement_agility','Movement Agility','How would you rate your movement agility?'),
(45,'movement_balance','Movement Balance','How would you rate your movement balance?'),
(46,'movement_reactions','Movement Reactions','How would you rate your movement reactions?'),
(47,'skill_ball_control','Skill Ball Control','How would you rate your skill ball control?'),
(48,'skill_dribbling','Skill Dribbling','How would you rate your skill dribbling?'),
(49,'mentality_composure','Mentality Composure','How would you rate your mentality composure?'),
(50,'attacking_heading_accuracy','Attacking Heading Accuracy','How would you rate your attacking heading accuracy?'),
(51,'defending_marking_awareness','Defending Marking Awareness','How would you rate your defending marking awareness?'),
(52,'defending_standing_tackle','Defending Standing Tackle','How would you rate your defending standing tackle?'),
(53,'defending_sliding_tackle','Defending Sliding Tackle','How would you rate your defending sliding tackle?'),
(54,'power_jumping','Power Jumping','How would you rate your power jumping?'),
(55,'power_stamina','Power Stamina','How would you rate your power stamina?'),
(56,'power_strength','Power Strength','How would you rate your power strength?'),
(57,'movement_sprint_speed','Movement Sprint Speed','How would you rate your movement sprint speed?'),
(58,'weight','wegiht','How would you rate your weight?'),
(59,'height','height','How would you rate your weight?'),
(60,'prefered_foot','Foot Preference','How would you rate your weight?');

/*Table structure for table `player_attributes2` */

DROP TABLE IF EXISTS `player_attributes2`;

CREATE TABLE `player_attributes2` (
  `user_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `prefered_foot` varchar(20) DEFAULT NULL,
  `movement_sprint_speed` int(11) DEFAULT NULL,
  `movement_acceleration` int(11) DEFAULT NULL,
  `mentality_positioning` int(11) DEFAULT NULL,
  `mentality_interceptions` int(11) DEFAULT NULL,
  `mentality_aggression` int(11) DEFAULT NULL,
  `attacking_finishing` int(11) DEFAULT NULL,
  `power_shot_power` int(11) DEFAULT NULL,
  `power_long_shots` int(11) DEFAULT NULL,
  `attacking_volleys` int(11) DEFAULT NULL,
  `mentality_penalties` int(11) DEFAULT NULL,
  `mentality_vision` int(11) DEFAULT NULL,
  `attacking_crossing` int(11) DEFAULT NULL,
  `skill_fk_accuracy` int(11) DEFAULT NULL,
  `attacking_short_passing` int(11) DEFAULT NULL,
  `skill_long_passing` int(11) DEFAULT NULL,
  `skill_curve` int(11) DEFAULT NULL,
  `movement_agility` int(11) DEFAULT NULL,
  `movement_balance` int(11) DEFAULT NULL,
  `movement_reactions` int(11) DEFAULT NULL,
  `skill_ball_control` int(11) DEFAULT NULL,
  `skill_dribbling` int(11) DEFAULT NULL,
  `mentality_composure` float DEFAULT NULL,
  `attacking_heading_accuracy` int(11) DEFAULT NULL,
  `defending_marking_awareness` int(11) DEFAULT NULL,
  `defending_standing_tackle` int(11) DEFAULT NULL,
  `defending_sliding_tackle` int(11) DEFAULT NULL,
  `power_jumping` int(11) DEFAULT NULL,
  `power_stamina` int(11) DEFAULT NULL,
  `power_strength` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `player_attributes2` */

insert  into `player_attributes2`(`user_id`,`id`,`created_date`,`height`,`weight`,`prefered_foot`,`movement_sprint_speed`,`movement_acceleration`,`mentality_positioning`,`mentality_interceptions`,`mentality_aggression`,`attacking_finishing`,`power_shot_power`,`power_long_shots`,`attacking_volleys`,`mentality_penalties`,`mentality_vision`,`attacking_crossing`,`skill_fk_accuracy`,`attacking_short_passing`,`skill_long_passing`,`skill_curve`,`movement_agility`,`movement_balance`,`movement_reactions`,`skill_ball_control`,`skill_dribbling`,`mentality_composure`,`attacking_heading_accuracy`,`defending_marking_awareness`,`defending_standing_tackle`,`defending_sliding_tackle`,`power_jumping`,`power_stamina`,`power_strength`) values 
(1,1,'2024-02-06 19:31:01',70,60,'left',39,72,38,66,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,72,70,53,0,0,0,57),
(1,2,'2024-02-18 15:29:35',156,126,'right',39,72,38,66,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,72,70,53,0,0,0,57),
(1,3,'2024-02-18 15:33:52',156,126,'right',39,72,38,66,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,72,70,53,0,0,0,57),
(1,4,'2024-02-18 18:26:01',156,126,'right',39,72,38,66,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,72,70,53,0,0,0,57);

/*Table structure for table `player_positions` */

DROP TABLE IF EXISTS `player_positions`;

CREATE TABLE `player_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `player_attributes_id` int(11) NOT NULL,
  `position_1` int(11) DEFAULT NULL,
  `position_2` int(11) DEFAULT NULL,
  `position_3` int(11) DEFAULT NULL,
  `player_alike1` varchar(255) DEFAULT NULL,
  `player_alike2` varchar(255) DEFAULT NULL,
  `player_alike3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `player_positions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `player_positions` */

insert  into `player_positions`(`id`,`user_id`,`player_attributes_id`,`position_1`,`position_2`,`position_3`,`player_alike1`,`player_alike2`,`player_alike3`,`created_at`) values 
(1,17,1,1,5,6,'Faustino Marcos Alberto Rojo','Sergio Ramos García','Samuel Yves Umtiti','2024-02-06 19:31:02'),
(2,18,2,1,5,6,'Faustino Marcos Alberto Rojo','Sergio Ramos García','Samuel Yves Umtiti','2024-02-18 15:29:35'),
(3,18,3,1,5,6,'Faustino Marcos Alberto Rojo','Sergio Ramos García','Samuel Yves Umtiti','2024-02-18 15:33:52'),
(4,18,4,1,5,6,'Faustino Marcos Alberto Rojo','Sergio Ramos García','Samuel Yves Umtiti','2024-02-18 18:26:01'),
(5,18,5,1,5,6,'Faustino Marcos Alberto Rojo','Sergio Ramos García','Samuel Yves Umtiti','2024-02-18 18:33:19'),
(6,18,6,5,6,1,'Faustino Marcos Alberto Rojo','Sergio Ramos García','Samuel Yves Umtiti','2024-02-18 18:38:12'),
(7,18,7,5,6,1,'Faustino Marcos Alberto Rojo','Sergio Ramos García','Samuel Yves Umtiti','2024-02-18 18:47:39'),
(8,28,8,1,2,3,'Hans Hateboer','Alex Sandro Lobo Silva','Ricardo Domingos Barbosa Pereira','2024-03-02 08:59:53'),
(9,29,9,9,11,13,'Sergio Germán Romero','Claudio Andrés Bravo Muñoz','André Onana','2024-03-02 09:32:42');

/*Table structure for table `players` */

DROP TABLE IF EXISTS `players`;

CREATE TABLE `players` (
  `user_id` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `thumbnail` text DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `players` */

insert  into `players`(`user_id`,`birth_date`,`thumbnail`) values 
(1,'2005-05-09','/uploads/1711178959255IMG_20210617_132237_(4).jpg'),
(17,'2023-09-01',NULL),
(19,'2024-02-13',NULL),
(28,'2020-06-12','/uploads/17093446501442659497988.jpeg'),
(29,'1978-10-19','/uploads/17093593198224.png'),
(30,'2024-02-25','/uploads/17093820617591474309.png'),
(31,'2024-02-25','/uploads/17093821038151474309.png'),
(32,'2024-03-03','/uploads/17093822200564.png');

/*Table structure for table `positions` */

DROP TABLE IF EXISTS `positions`;

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `positions` */

insert  into `positions`(`id`,`name`) values 
(1,'RWB'),
(2,'LWB'),
(3,'RB'),
(4,'LB'),
(5,'CB'),
(6,'CDM'),
(7,'LM'),
(8,'RM'),
(9,'LW'),
(10,'RW'),
(11,'CF'),
(13,'ST');

/*Table structure for table `user_articles` */

DROP TABLE IF EXISTS `user_articles`;

CREATE TABLE `user_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `user_articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_articles_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_articles` */

insert  into `user_articles`(`id`,`user_id`,`article_id`,`status`) values 
(1,1,1,'1');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`name`,`email`,`phone`,`status`) values 
(1,'user','$2b$12$vtAl4m5ND6EHHPGe0esHeeoksublaLQ.Jdp/knQ9Qvt2/ULZ.miqC',1,'user','user@gmail.com','0857-4896-9806',1),
(2,'admin','$2b$12$vtAl4m5ND6EHHPGe0esHeeoksublaLQ.Jdp/knQ9Qvt2/ULZ.miqC',2,'admin','admin@gmail.com','082011633046',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
