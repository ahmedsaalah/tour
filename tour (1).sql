-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 29, 2018 at 06:45 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `name` varchar(900) DEFAULT NULL,
  `placeId` int(220) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `name`, `placeId`, `comment`) VALUES
(1, 'AHMED', 1, 'ddddddddd'),
(2, 'AHMED Sokar', 1, 'new comment '),
(3, 'AHMED Sokar', 4, 'alexandriaaaaaaaaaa'),
(4, 'AHMED Sokar', 3, 'Hey... say something!\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `offer_id` int(11) NOT NULL,
  `destination` int(11) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `photo` varchar(200) NOT NULL DEFAULT 'mainluxor.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int(11) NOT NULL,
  `destination` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `star` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `destination`, `description`, `photo`, `star`, `count`) VALUES
(1, 1, 'luxooorr', 'luxor_cnt_30mar10_iStock_b1.jpg', 7, 2),
(2, 1, 'luxor2', 'egypt-luxor-temple-of-deir-al-bahri.jpg', 5, 1),
(3, 2, 'alexxx', 'mainalex.jpg', 3, 4),
(4, 2, 'alex2', 'Alexandria-f-e1449916457531.jpg', 8, 3),
(5, 2, 'alex33', '13_Biblioteca_de_AlejandrC3ADa.jpg', 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `destination` varchar(900) DEFAULT NULL,
  `activities` varchar(900) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `Utype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `email`, `password`, `Utype`) VALUES
(1, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(2, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(3, 'company', 'name', 'admin@company.com', 'company', '2'),
(4, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(5, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(6, 'company', 'name', 'admin@company.com', 'company', '2'),
(7, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(8, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(9, 'company', 'name', 'admin@company.com', 'company', '2'),
(10, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(11, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(12, 'company', 'name', 'admin@company.com', 'company', '2'),
(13, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(14, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(15, 'company', 'name', 'admin@company.com', 'company', '2'),
(16, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(17, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(18, 'company', 'name', 'admin@company.com', 'company', '2'),
(19, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(20, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(21, 'company', 'name', 'admin@company.com', 'company', '2'),
(22, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(23, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(24, 'company', 'name', 'admin@company.com', 'company', '2'),
(25, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(26, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(27, 'company', 'name', 'admin@company.com', 'company', '2'),
(28, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(29, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(30, 'company', 'name', 'admin@company.com', 'company', '2'),
(31, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(32, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(33, 'company', 'name', 'admin@company.com', 'company', '2'),
(34, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(35, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(36, 'company', 'name', 'admin@company.com', 'company', '2'),
(37, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(38, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(39, 'company', 'name', 'admin@company.com', 'company', '2'),
(40, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(41, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(42, 'company', 'name', 'admin@company.com', 'company', '2'),
(43, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(44, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(45, 'company', 'name', 'admin@company.com', 'company', '2'),
(46, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(47, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(48, 'company', 'name', 'admin@company.com', 'company', '2'),
(49, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(50, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(51, 'company', 'name', 'admin@company.com', 'company', '2'),
(52, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(53, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(54, 'company', 'name', 'admin@company.com', 'company', '2'),
(55, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(56, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(57, 'company', 'name', 'admin@company.com', 'company', '2'),
(58, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(59, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(60, 'company', 'name', 'admin@company.com', 'company', '2'),
(61, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(62, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(63, 'company', 'name', 'admin@company.com', 'company', '2'),
(64, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(65, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(66, 'company', 'name', 'admin@company.com', 'company', '2'),
(67, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(68, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(69, 'company', 'name', 'admin@company.com', 'company', '2'),
(70, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(71, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(72, 'company', 'name', 'admin@company.com', 'company', '2'),
(73, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(74, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(75, 'company', 'name', 'admin@company.com', 'company', '2'),
(76, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(77, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(78, 'company', 'name', 'admin@company.com', 'company', '2'),
(79, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(80, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(81, 'company', 'name', 'admin@company.com', 'company', '2'),
(82, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(83, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(84, 'company', 'name', 'admin@company.com', 'company', '2'),
(85, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(86, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(87, 'company', 'name', 'admin@company.com', 'company', '2'),
(88, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(89, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(90, 'company', 'name', 'admin@company.com', 'company', '2'),
(91, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(92, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(93, 'company', 'name', 'admin@company.com', 'company', '2'),
(94, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(95, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(96, 'company', 'name', 'admin@company.com', 'company', '2'),
(97, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(98, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(99, 'company', 'name', 'admin@company.com', 'company', '2'),
(100, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(101, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(102, 'company', 'name', 'admin@company.com', 'company', '2'),
(103, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(104, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(105, 'company', 'name', 'admin@company.com', 'company', '2'),
(106, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(107, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(108, 'company', 'name', 'admin@company.com', 'company', '2'),
(109, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(110, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(111, 'company', 'name', 'admin@company.com', 'company', '2'),
(112, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(113, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(114, 'company', 'name', 'admin@company.com', 'company', '2'),
(115, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(116, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(117, 'company', 'name', 'admin@company.com', 'company', '2'),
(118, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(119, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(120, 'company', 'name', 'admin@company.com', 'company', '2'),
(121, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(122, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(123, 'company', 'name', 'admin@company.com', 'company', '2'),
(124, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(125, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(126, 'company', 'name', 'admin@company.com', 'company', '2'),
(127, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(128, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(129, 'company', 'name', 'admin@company.com', 'company', '2'),
(130, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(131, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(132, 'company', 'name', 'admin@company.com', 'company', '2'),
(133, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(134, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(135, 'company', 'name', 'admin@company.com', 'company', '2'),
(136, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(137, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(138, 'company', 'name', 'admin@company.com', 'company', '2'),
(139, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(140, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(141, 'company', 'name', 'admin@company.com', 'company', '2'),
(142, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(143, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(144, 'company', 'name', 'admin@company.com', 'company', '2'),
(145, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(146, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(147, 'company', 'name', 'admin@company.com', 'company', '2'),
(148, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(149, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(150, 'company', 'name', 'admin@company.com', 'company', '2'),
(151, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(152, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(153, 'company', 'name', 'admin@company.com', 'company', '2'),
(154, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(155, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(156, 'company', 'name', 'admin@company.com', 'company', '2'),
(157, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(158, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(159, 'company', 'name', 'admin@company.com', 'company', '2'),
(160, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(161, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(162, 'company', 'name', 'admin@company.com', 'company', '2'),
(163, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(164, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(165, 'company', 'name', 'admin@company.com', 'company', '2'),
(166, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(167, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(168, 'company', 'name', 'admin@company.com', 'company', '2'),
(169, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(170, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(171, 'company', 'name', 'admin@company.com', 'company', '2'),
(172, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(173, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(174, 'company', 'name', 'admin@company.com', 'company', '2'),
(175, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(176, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(177, 'company', 'name', 'admin@company.com', 'company', '2'),
(178, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(179, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(180, 'company', 'name', 'admin@company.com', 'company', '2'),
(181, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(182, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(183, 'company', 'name', 'admin@company.com', 'company', '2'),
(184, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(185, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(186, 'company', 'name', 'admin@company.com', 'company', '2'),
(187, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(188, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(189, 'company', 'name', 'admin@company.com', 'company', '2'),
(190, 'AHMED', 'Sokar', 'admin@admin.com', 'admin', '0'),
(191, 'AHMED', 'Mohamed', 'user@hotmail.com', 'password', '1'),
(192, 'company', 'name', 'admin@company.com', 'company', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
