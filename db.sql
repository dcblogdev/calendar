-- -------------------------------------------------------------
-- TablePlus 3.3.0(300)
--
-- https://tableplus.com/
--
-- Database: project1
-- Generation Time: 2020-04-08 13:27:19.2880
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` longblob NOT NULL,
  `username` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
('1', 'admin', 'admin');

INSERT INTO `bookings` (`id`, `booking_date`) VALUES
('1', '2020-04-01'),
('2', '2021-03-01');

INSERT INTO `images` (`id`, `image`, `username`) VALUES
('83', 'bd04d8880cabd4b859a36d9bd20cdd3d.jpg', 'Sandy'),
('84', 'great-service-from-courtney.jpg', 'Sandy'),
('85', 'ubereats-banner-black_0.jpg', 'Sandy'),
('86', 'bd04d8880cabd4b859a36d9bd20cdd3d.jpg', 'tutor'),
('87', 'download (1).jpg', 'tutor'),
('88', 'download.jpg', 'tutor'),
('89', 'great-service-from-courtney.jpg', 'tutor'),
('90', 'ubereats-banner-black_0.jpg', 'tutor'),
('91', 'bd04d8880cabd4b859a36d9bd20cdd3d.jpg', 'AMAN'),
('92', 'download (1).jpg', 'AMAN'),
('93', 'download.jpg', 'AMAN'),
('94', 'great-service-from-courtney.jpg', 'AMAN'),
('95', 'ubereats-banner-black_0.jpg', 'AMAN'),
('96', 'bd04d8880cabd4b859a36d9bd20cdd3d.jpg', 'Sandy'),
('97', 'download (1).jpg', 'Sandy'),
('98', 'download.jpg', 'Sandy'),
('99', 'great-service-from-courtney.jpg', 'Sandy'),
('100', 'ubereats-banner-black_0.jpg', 'Sandy'),
('101', 'bd04d8880cabd4b859a36d9bd20cdd3d.jpg', '30342723'),
('102', 'download (1).jpg', '30342723'),
('103', 'download.jpg', '30342723'),
('104', 'great-service-from-courtney.jpg', '30342723'),
('105', 'ubereats-banner-black_0.jpg', '30342723');

INSERT INTO `user` (`id`, `name`, `email`, `password`, `profile`, `photo_url`) VALUES
('1', 'tutor', 'tutor@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1de7.l0smCm5/xWVA8KmFKjfsXjma3jUP2', 'My name is Hisham Khdair. I am a lecturer in Federation University.', 'www.federation.edu.au'),
('3', 'Sandy', 'sandy@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1de7uOIZaYuxu2nO0XopgRL8sKBbEpjkiO', 'My name is Sandy and i am studying in UniSA.', 'https://www.unisa.edu.au/'),
('4', 'AKAL', 'akal@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1deIZJyepMuYLDL8gSQdknXdD9h9JsHQfK', 'Hi my name is Akal and i am studying in University of Adelaide.', 'https://www.adelaide.edu.au/'),
('5', 'Jacob', 'Jacob@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1deyJ08GoTvYHsk/HreD5CPbSlIk/hJ.iK', 'My name is Jacob and i am studying at Marryatville High School.', 'http://www.marryatvillehs.sa.edu.au/'),
('6', 'baljeet', 'baljeet@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1de8Fu7hIHj2R2ZCKGsAXqxC.lMHmccmui', 'Hi my name is baljeet and i am graduated from Federation university.', 'www.federation.edu.au'),
('7', 'Sukhveer', 'sukhveer@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1de8WH.GjPUlwouSdOo.qG4nl9cD1A0ixK', 'My name is Sukhveer Kaur and I am studying in Torrens University.', 'https://www.torrens.edu.au/'),
('8', 'sidhu', 'sidhu@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1d.tJXxJrr1j5g8LWElgU9z00YRcmHTEd6', '', ''),
('12', 'PINK', 'pinksandhu0001@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1deBEM3dVQZoSKdOlsMRKwRUca4qoozlgW', 'vhghjkguguog', 'gugkhlhilih');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;