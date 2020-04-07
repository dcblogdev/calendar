-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2020 at 08:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `booking_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_date`) VALUES
(1, '2020-04-01'),
(2, '2021-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` longblob NOT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `username`) VALUES
(83, 0x62643034643838383063616264346238353961333664396264323063646433642e6a7067, 'Sandy'),
(84, 0x67726561742d736572766963652d66726f6d2d636f7572746e65792e6a7067, 'Sandy'),
(85, 0x75626572656174732d62616e6e65722d626c61636b5f302e6a7067, 'Sandy'),
(86, 0x62643034643838383063616264346238353961333664396264323063646433642e6a7067, 'tutor'),
(87, 0x646f776e6c6f6164202831292e6a7067, 'tutor'),
(88, 0x646f776e6c6f61642e6a7067, 'tutor'),
(89, 0x67726561742d736572766963652d66726f6d2d636f7572746e65792e6a7067, 'tutor'),
(90, 0x75626572656174732d62616e6e65722d626c61636b5f302e6a7067, 'tutor'),
(91, 0x62643034643838383063616264346238353961333664396264323063646433642e6a7067, 'AMAN'),
(92, 0x646f776e6c6f6164202831292e6a7067, 'AMAN'),
(93, 0x646f776e6c6f61642e6a7067, 'AMAN'),
(94, 0x67726561742d736572766963652d66726f6d2d636f7572746e65792e6a7067, 'AMAN'),
(95, 0x75626572656174732d62616e6e65722d626c61636b5f302e6a7067, 'AMAN'),
(96, 0x62643034643838383063616264346238353961333664396264323063646433642e6a7067, 'Sandy'),
(97, 0x646f776e6c6f6164202831292e6a7067, 'Sandy'),
(98, 0x646f776e6c6f61642e6a7067, 'Sandy'),
(99, 0x67726561742d736572766963652d66726f6d2d636f7572746e65792e6a7067, 'Sandy'),
(100, 0x75626572656174732d62616e6e65722d626c61636b5f302e6a7067, 'Sandy'),
(101, 0x62643034643838383063616264346238353961333664396264323063646433642e6a7067, '30342723'),
(102, 0x646f776e6c6f6164202831292e6a7067, '30342723'),
(103, 0x646f776e6c6f61642e6a7067, '30342723'),
(104, 0x67726561742d736572766963652d66726f6d2d636f7572746e65792e6a7067, '30342723'),
(105, 0x75626572656174732d62616e6e65722d626c61636b5f302e6a7067, '30342723');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `profile`, `photo_url`) VALUES
(1, 'tutor', 'tutor@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1de7.l0smCm5/xWVA8KmFKjfsXjma3jUP2', 'My name is Hisham Khdair. I am a lecturer in Federation University.', 'www.federation.edu.au'),
(3, 'Sandy', 'sandy@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1de7uOIZaYuxu2nO0XopgRL8sKBbEpjkiO', 'My name is Sandy and i am studying in UniSA.', 'https://www.unisa.edu.au/'),
(4, 'AKAL', 'akal@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1deIZJyepMuYLDL8gSQdknXdD9h9JsHQfK', 'Hi my name is Akal and i am studying in University of Adelaide.', 'https://www.adelaide.edu.au/'),
(5, 'Jacob', 'Jacob@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1deyJ08GoTvYHsk/HreD5CPbSlIk/hJ.iK', 'My name is Jacob and i am studying at Marryatville High School.', 'http://www.marryatvillehs.sa.edu.au/'),
(6, 'baljeet', 'baljeet@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1de8Fu7hIHj2R2ZCKGsAXqxC.lMHmccmui', 'Hi my name is baljeet and i am graduated from Federation university.', 'www.federation.edu.au'),
(7, 'Sukhveer', 'sukhveer@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1de8WH.GjPUlwouSdOo.qG4nl9cD1A0ixK', 'My name is Sukhveer Kaur and I am studying in Torrens University.', 'https://www.torrens.edu.au/'),
(8, 'sidhu', 'sidhu@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1d.tJXxJrr1j5g8LWElgU9z00YRcmHTEd6', '', ''),
(12, 'PINK', 'pinksandhu0001@gmail.com', '$2y$10$MTIzcmVibXVuIHRuZWR1deBEM3dVQZoSKdOlsMRKwRUca4qoozlgW', 'vhghjkguguog', 'gugkhlhilih');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
