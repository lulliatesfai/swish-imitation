-- -------------------------------------------------------------
-- TablePlus 5.3.6(496)
--
-- https://tableplus.com/
--
-- Database: slutprojekt_databaser
-- Generation Time: 2023-06-02 20:30:38.4850
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  `account_number` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`user_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `recipient_id` int NOT NULL,
  `transaction_date` date NOT NULL,
  `recipient_account_number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `social_security_number` int DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `accounts` (`id`, `user_id`, `balance`, `account_number`) VALUES
(2, 15, 21700, 2),
(3, 3, 22300, 3);

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `recipient_id`, `transaction_date`, `recipient_account_number`) VALUES
(1, 3, 400, 15, '2023-06-02', 2),
(2, 15, 100, 3, '2023-06-02', 2);

INSERT INTO `users` (`id`, `name`, `social_security_number`, `password`, `created`) VALUES
(2, 'Sara', 20011129, 'sara123', '2023-02-02 00:00:00'),
(3, 'Max', 19991129, 'max123', '2021-10-25 00:00:00'),
(4, 'Lwam', 19980413, 'lwam123', '2022-08-09 00:00:00'),
(5, 'Frank', 19620925, '74545a702eb5383f4646d321e09c6b9de41098bb5f952d5c904fb6187c5b3c33b9463e7eeffbff76cdc5bb30a0c4e08c', '2000-11-12 00:00:00'),
(6, 'Fiona', 19890219, 'f40716cedb627697c9ef42a9f13a5529ede2247abbeaf28ee28b814fa9864dac924b7e023f4d2633c6777f9c3060dddd', '2020-01-20 00:00:00'),
(7, 'Sebastian', 20010627, 'ec3d801e3f39aa428582fd09d80cfa26efb6f3c20a4ad89ede080291939328e22b16bd081caf3149a67df32931ab25b8', '2010-03-18 00:00:00'),
(8, 'Alexander', 19911004, '5da1b7bb92e8dd79663996d503f6ad0423888b84ceda7974817a3cbdd1193a1d07b970d8701e6828da57a0d21c4fa99c', '2023-12-12 00:00:00'),
(9, 'Deborah', 20041007, '26e2e520462eb8dba442b3975c54e8f3d316253be00dd407b17f9e2b311a185f29d6fb4423bb28ac51a27871f38472d4', '2022-03-08 00:00:00'),
(10, 'Karl', 20050629, '1dbfa15d2451f7ced429dcd7e13f1d8a56d82bdf239f8cdae715bdda886c95b8441f946a636f4f2c39400f53de5db8dc', '2021-07-07 00:00:00'),
(11, 'Simon', 19970129, 'c2cafd815541a160d844c8f37ecf1d6ce0189a482a79fe0599c1e33faf24a913a55758b6e298a75bf17bfcc5738e99d1', '2023-11-29 00:00:00'),
(12, 'Aina', 20021218, 'fd210501422344b206389482634edb1b57462f3cc02c2f52013a43809a10a30d6cfdddb2aebe16b89e1aa6be38649444', '2023-06-01 00:00:00'),
(15, 'Lullia', 20021129, 'ded93390627ec685cbe33f78890f39aada3448e51662860f284908565f82639c4add954cf2381f74b09e998354322bd8', '2023-06-01 00:00:00'),
(16, 'Sarah', 20010911, '4eb1ced9cc83d2c241d5d88b3a800a67eb3cb1bd9864f8a5556f36d0fc15dcb6012c958dc2a021e80b04b6659534f5a4', '2023-06-02 00:00:00');




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;