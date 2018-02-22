-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 06:06 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `date_added`) VALUES
(1, 'addition', '2018-02-19 13:41:22'),
(2, 'subtraction', '2018-02-19 13:41:22'),
(3, 'multiplication', '2018-02-19 13:41:22'),
(4, 'division', '2018-02-19 13:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `category_id`, `date_added`) VALUES
(1, 'What is the sum of 4 and 6?', '10', 1, '2018-02-19 14:03:18'),
(2, 'What is the sum of 12 and 5?', '17', 1, '2018-02-19 14:03:18'),
(3, 'What is the sum of 1 and 21?', '22', 1, '2018-02-19 14:03:18'),
(4, 'What is the difference between 20 and 8?', '12', 2, '2018-02-19 14:03:18'),
(5, '20 minus 9 is?\r\n', '11', 2, '2018-02-19 14:03:18'),
(6, 'What is the difference between 10 and 8?', '2', 2, '2018-02-19 14:03:18'),
(7, 'What’s 5 times 9?', '45', 3, '2018-02-19 14:03:18'),
(8, 'What’s 9 times 2?', '18', 3, '2018-02-19 14:03:18'),
(9, 'What’s 2 times 9?', '18', 3, '2018-02-19 14:03:18'),
(10, 'How many 3 are there in 15?', '5', 4, '2018-02-19 14:05:03'),
(11, 'How many 3 are there in 30?', '10', 4, '2018-02-19 14:05:03'),
(12, 'How many 5 are there in 30?', '6', 4, '2018-02-19 14:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `question_id`, `answer`, `user`) VALUES
(518, 6, '2', '6'),
(519, 1, '10', '6'),
(520, 12, '6', '6'),
(521, 11, '10', '6'),
(530, 11, 'sa', '7'),
(542, 2, '17', '8'),
(543, 7, '45', '8'),
(544, 10, '5', '8'),
(545, 2, '17', '9'),
(546, 7, '45', '9'),
(547, 10, '5', '9'),
(548, 2, '17', '10'),
(549, 7, '45', '10'),
(550, 10, '5', '10'),
(551, 2, '17', '11'),
(552, 7, '45', '11'),
(553, 10, '5', '11'),
(554, 11, '10', '12'),
(555, 8, '18', '12'),
(556, 4, '12', '12'),
(557, 9, '18', '12'),
(558, 11, '10', '13'),
(559, 8, '18', '13'),
(560, 4, '12', '13'),
(561, 9, '18', '13'),
(562, 11, '10', '14'),
(563, 8, '18', '14'),
(564, 4, '12', '14'),
(565, 9, '18', '14'),
(566, 11, '10', '15'),
(567, 8, '18', '15'),
(568, 4, '12', '15'),
(569, 9, '18', '15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`) VALUES
(13, 'dani', 'irkibby@gmail.com', '0000-00-00 00:00:00'),
(12, 'dani', 'irkibby@gmail.com', '0000-00-00 00:00:00'),
(11, 'minam', 'minam@gmai.com', '0000-00-00 00:00:00'),
(10, 'minam', 'minam@gmai.com', '0000-00-00 00:00:00'),
(9, 'minam', 'minam@gmai.com', '0000-00-00 00:00:00'),
(6, 'ibtesam', 'irkibby@gmail.com', '0000-00-00 00:00:00'),
(7, 'asd', 'sadas', '0000-00-00 00:00:00'),
(8, 'minam', 'minam@gmai.com', '0000-00-00 00:00:00'),
(14, 'dani', 'irkibby@gmail.com', '0000-00-00 00:00:00'),
(15, 'dani', 'irkibby@gmail.com', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_score`
--

CREATE TABLE `user_score` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_score`
--

INSERT INTO `user_score` (`id`, `user_id`, `score`, `created_at`) VALUES
(1, 6, 4, '0000-00-00 00:00:00'),
(2, 7, 0, '0000-00-00 00:00:00'),
(3, 8, 3, '0000-00-00 00:00:00'),
(4, 9, 3, '0000-00-00 00:00:00'),
(5, 10, 3, '0000-00-00 00:00:00'),
(6, 11, 3, '0000-00-00 00:00:00'),
(7, 12, 4, '0000-00-00 00:00:00'),
(8, 13, 4, '0000-00-00 00:00:00'),
(9, 14, 4, '0000-00-00 00:00:00'),
(10, 15, 4, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_score`
--
ALTER TABLE `user_score`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_score`
--
ALTER TABLE `user_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
