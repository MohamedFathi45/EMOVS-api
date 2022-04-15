-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2022 at 04:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Emovs_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `member_image_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `name`, `member_image_path`) VALUES
(14, 'Dwayne Johnson', 'Dwayne Johnson.jpg'),
(15, 'Will Smith', 'Will Smith.jpg'),
(16, 'Leonardo Dicaprio', 'Leonardo Dicaprio.jpeg'),
(17, 'Sandra Bullock', 'Sandra Bullock.jpg'),
(18, 'Woody Harrelson', 'Woody Harrelson.jpg'),
(19, 'Daniel Radcliffe', 'Daniel Radcliffe.jpg'),
(20, 'Emma Stone', 'Emma Stone.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `usr_id` bigint(20) NOT NULL,
  `general_show_id` bigint(20) NOT NULL,
  `session_id` bigint(20) NOT NULL,
  `episode_id` bigint(20) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `usr_id`, `general_show_id`, `session_id`, `episode_id`, `comment`, `date`) VALUES
(1, 9, 7, 1, 1, 'gyklpi', '2020-08-01 03:01:14'),
(2, 9, 7, 1, 1, 'gg', '2020-08-01 03:02:32'),
(3, 9, 7, 1, 1, 'k', '2020-08-01 03:02:39'),
(4, 9, 7, 1, 1, 'k', '2020-08-01 03:02:40'),
(5, 9, 7, 1, 1, 'cfhhr', '2020-08-01 03:02:44'),
(6, 9, 7, 1, 1, 'ggjkko', '2020-08-01 03:02:49'),
(7, 9, 7, 1, 1, 'o', '2020-08-01 03:02:52'),
(8, 9, 7, 1, 1, 'g', '2020-08-01 03:02:53'),
(9, 9, 7, 1, 1, 'u', '2020-08-01 03:02:55'),
(10, 9, 7, 1, 1, 'i', '2020-08-01 03:02:58'),
(11, 10, 7, 1, 1, 'tgt', '2020-08-02 04:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id` bigint(20) NOT NULL,
  `show_id` bigint(20) NOT NULL,
  `session_id` bigint(20) NOT NULL,
  `episode_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`id`, `show_id`, `session_id`, `episode_number`) VALUES
(1, 7, 1, 1),
(2, 7, 2, 1),
(3, 7, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `general_shows`
--

CREATE TABLE `general_shows` (
  `id` bigint(20) NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `general_show_name` varchar(27) NOT NULL,
  `poster_path` varchar(70) NOT NULL,
  `description` varchar(90) NOT NULL DEFAULT '.',
  `year_of_production` int(11) NOT NULL DEFAULT 0,
  `country` varchar(10) NOT NULL,
  `ratting` int(11) NOT NULL DEFAULT 0,
  `num_of_voters` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_shows`
--

INSERT INTO `general_shows` (`id`, `cat_id`, `general_show_name`, `poster_path`, `description`, `year_of_production`, `country`, `ratting`, `num_of_voters`) VALUES
(1, 2, 'Avengres', 'avengers_endgame.jpg', '.', 0, 'US', 11, 3),
(2, 2, 'Gone Girl', 'gone_girl.jpg', '.', 0, 'US', 5, 1),
(3, 2, 'Instant Family', 'instant_family.jpg', '.', 0, 'US', 0, 0),
(4, 2, 'Iteawon Class', 'iteawon_class.jpg', '.', 0, 'US', 0, 0),
(5, 2, 'Inception', 'inception.jpg', '.', 0, 'US', 0, 0),
(6, 2, 'Interstellar', 'interstellar.jpg', '.', 0, 'US', 0, 0),
(7, 1, 'Late Late Show', 'late_late_show.jpg', '.', 0, 'US', 4, 1),
(8, 3, 'Burn The Stage', 'burn_the_Stage.jpg', '.', 0, 'US', 0, 0),
(9, 1, 'BTS RUN', 'bts_run.jpg', '.', 0, 'Koria', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_screen_shows`
--

CREATE TABLE `main_screen_shows` (
  `id` int(11) NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `general_show_id` bigint(20) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_screen_shows`
--

INSERT INTO `main_screen_shows` (`id`, `cat_id`, `general_show_id`, `priority`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 2, 5, 1),
(4, 2, 3, 1),
(5, 2, 6, 1),
(6, 2, 4, 1),
(7, 1, 7, 1),
(8, 3, 8, 1),
(9, 1, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `non_series_link`
--

CREATE TABLE `non_series_link` (
  `server_id` bigint(20) NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `general_show_id` bigint(20) NOT NULL,
  `link` varchar(150) NOT NULL DEFAULT 'non',
  `downloading_link` varchar(255) NOT NULL DEFAULT 'non',
  `quality` enum('144','240','360','480','720','1080','multiple') NOT NULL DEFAULT 'multiple'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `non_series_link`
--

INSERT INTO `non_series_link` (`server_id`, `cat_id`, `general_show_id`, `link`, `downloading_link`, `quality`) VALUES
(2, 2, 1, 'link to movies Stream', 'non', '720'),
(1, 2, 1, 'links', 'non', '720'),
(2, 2, 1, 'link', 'non', '720');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `usr_id` bigint(20) NOT NULL,
  `general_show_id` bigint(20) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `usr_id`, `general_show_id`, `comment`, `date`) VALUES
(1, 9, 1, 'Good Movie', '2020-07-17 12:04:39'),
(2, 9, 7, 'the show is great', '2020-07-18 15:02:09'),
(3, 9, 1, 'second comment', '2020-07-18 15:20:56'),
(4, 9, 1, 'ghhjjj', '2020-07-24 21:17:32'),
(5, 9, 1, 'sdxxxxxxxx', '2020-07-24 21:20:43'),
(6, 9, 1, 'clllllllllkk', '2020-07-24 21:21:03'),
(7, 9, 1, 'ggvvvvjoppppppp', '2020-07-24 21:21:17'),
(8, 9, 2, 'hi mohamed', '2020-07-24 21:24:00'),
(9, 9, 9, 'first comment', '2020-07-24 21:43:29'),
(11, 9, 6, 'first comment', '2020-07-28 20:21:22'),
(12, 10, 1, 'dggfgggg', '2020-08-02 04:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `series_categories`
--

CREATE TABLE `series_categories` (
  `id` bigint(20) NOT NULL,
  `type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series_categories`
--

INSERT INTO `series_categories` (`id`, `type`) VALUES
(1, 'tv_shows'),
(2, 'reality'),
(3, 'docutmemtary'),
(4, 'entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `series_link`
--

CREATE TABLE `series_link` (
  `server_id` bigint(20) NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `general_show_id` bigint(20) NOT NULL,
  `session_id` bigint(20) NOT NULL,
  `episode_id` bigint(20) NOT NULL,
  `link` varchar(150) NOT NULL DEFAULT 'non',
  `downloading_link` varchar(255) NOT NULL DEFAULT 'non',
  `quality` enum('144','240','360','480','720','1080','multiple') NOT NULL DEFAULT 'multiple'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series_link`
--

INSERT INTO `series_link` (`server_id`, `cat_id`, `general_show_id`, `session_id`, `episode_id`, `link`, `downloading_link`, `quality`) VALUES
(1, 1, 7, 1, 1, 'https://drive.google.com/file/d/12p8yGhBuvzxIQwcoCbvi2uZapGOsoMGW/view?fbclid=IwAR1VyCyjJz-qVE09e6cC3S8kwn4HQ1VmfDqeL-B92kETaR41C9kkTeafoNs', 'non', 'multiple'),
(2, 1, 7, 1, 1, 'non', 'non', 'multiple');

-- --------------------------------------------------------

--
-- Table structure for table `series_type_matching`
--

CREATE TABLE `series_type_matching` (
  `show_id` bigint(20) NOT NULL,
  `series_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series_type_matching`
--

INSERT INTO `series_type_matching` (`show_id`, `series_type_id`) VALUES
(7, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `id` bigint(20) NOT NULL,
  `server_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`id`, `server_name`) VALUES
(1, 'Google drive'),
(2, 'Emovs server');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` bigint(20) NOT NULL,
  `show_id` bigint(20) NOT NULL,
  `session_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `show_id`, `session_number`) VALUES
(1, 7, 1),
(2, 7, 2),
(3, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `showsCategories`
--

CREATE TABLE `showsCategories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showsCategories`
--

INSERT INTO `showsCategories` (`id`, `name`) VALUES
(1, 'tv_shows'),
(2, 'movies'),
(3, 'dvds');

-- --------------------------------------------------------

--
-- Table structure for table `show_actor_mapping`
--

CREATE TABLE `show_actor_mapping` (
  `show_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `show_actor_mapping`
--

INSERT INTO `show_actor_mapping` (`show_id`, `member_id`) VALUES
(5, 16),
(5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `show_tags`
--

CREATE TABLE `show_tags` (
  `show_id` bigint(20) NOT NULL,
  `tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `show_tags`
--

INSERT INTO `show_tags` (`show_id`, `tag`) VALUES
(1, 'drama'),
(1, 'action'),
(1, 'SFI'),
(1, 'aaaaaaaaaaaaaaaaa'),
(9, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_accounts`
--

CREATE TABLE `social_media_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `link` varchar(200) NOT NULL DEFAULT 'https://www.google.com/'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media_accounts`
--

INSERT INTO `social_media_accounts` (`id`, `name`, `link`) VALUES
(1, 'FaceBook', 'https://www.facebook.com/'),
(2, 'Twitter', 'https://twitter.com/explore'),
(3, 'Youtube', 'https://www.youtube.com/'),
(4, 'Instagram', 'https://www.instagram.com/');

-- --------------------------------------------------------

--
-- Table structure for table `usr`
--

CREATE TABLE `usr` (
  `id` bigint(20) NOT NULL,
  `email` varchar(70) NOT NULL,
  `usr_name` varchar(40) NOT NULL,
  `photo_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usr`
--

INSERT INTO `usr` (`id`, `email`, `usr_name`, `photo_url`) VALUES
(9, 'sharksmardo@gmail.com', 'Mohamed Fathi', 'https://lh3.googleusercontent.com/a-/AOh14GibgQEIvwKwNTqdCNvLynPfM25_Ybw06ProaudXVw=s96-c'),
(10, 'nohaf0561@gmail.com', 'noha fathy', 'https://lh3.googleusercontent.com/a-/AOh14GjfBStIQ-m8GiRDPFZqrVmSar0kah_ZDlru-6ZXrw=s96-c'),
(11, 'shhurani1998@gmail.com', 'Shahed Subs', 'https://lh3.googleusercontent.com/a-/AOh14GgG9mTc9NQWZDxu_dGEbe1-E52A7BIjsKT8YDkB5A=s96-c'),
(12, 'sharks0123456@gmail.com', 'AhMeD FaThY', 'https://lh6.googleusercontent.com/-d6juqVN-tdY/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckz8Nx_a4vOuegS95iJtXvsZ4TuBA/s96-c/photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usr_history`
--

CREATE TABLE `usr_history` (
  `usr_id` bigint(20) NOT NULL,
  `general_show_id` bigint(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usr_history`
--

INSERT INTO `usr_history` (`usr_id`, `general_show_id`, `date`) VALUES
(9, 1, '2020-08-09 04:43:20'),
(9, 2, '2020-08-09 04:43:34'),
(9, 3, '2020-08-02 03:45:04'),
(9, 4, '2020-08-09 04:43:49'),
(9, 5, '2020-08-08 00:23:33'),
(9, 6, '2020-07-28 20:21:53'),
(9, 7, '2020-08-08 00:24:30'),
(9, 8, '2020-08-04 00:57:26'),
(9, 9, '2020-08-09 04:43:25'),
(10, 1, '2020-08-02 04:07:11'),
(10, 2, '2020-08-02 04:05:52'),
(10, 7, '2020-08-02 04:00:55'),
(10, 9, '2020-08-02 04:05:04'),
(11, 1, '2020-08-08 00:16:46'),
(11, 2, '2020-08-03 20:47:22'),
(11, 7, '2020-08-03 20:48:47'),
(11, 8, '2020-08-08 00:17:37'),
(11, 9, '2020-08-08 00:16:16'),
(12, 1, '2020-08-08 00:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `usr_list`
--

CREATE TABLE `usr_list` (
  `usr_id` bigint(20) NOT NULL,
  `general_show_id` bigint(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usr_list`
--

INSERT INTO `usr_list` (`usr_id`, `general_show_id`, `date`) VALUES
(9, 1, '2020-07-28 20:30:53'),
(9, 7, '2020-08-04 00:57:12'),
(9, 9, '2020-08-08 00:01:58'),
(10, 9, '2020-08-02 04:03:10'),
(11, 9, '2020-08-08 00:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `usr_ratting`
--

CREATE TABLE `usr_ratting` (
  `usr_id` bigint(20) NOT NULL,
  `general_show_id` bigint(20) NOT NULL,
  `ratting` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usr_ratting`
--

INSERT INTO `usr_ratting` (`usr_id`, `general_show_id`, `ratting`) VALUES
(9, 1, 5),
(9, 7, 4),
(9, 9, 5),
(11, 1, 3),
(11, 2, 5),
(11, 9, 5),
(12, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `number` int(11) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`number`, `link`) VALUES
(1, 'google.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usr_id` (`usr_id`),
  ADD KEY `comments_ibfk_2` (`session_id`),
  ADD KEY `comments_ibfk_3` (`general_show_id`),
  ADD KEY `comments_ibfk_4` (`episode_id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_ibfk_1` (`session_id`),
  ADD KEY `episode_ibfk_2` (`show_id`);

--
-- Indexes for table `general_shows`
--
ALTER TABLE `general_shows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);
ALTER TABLE `general_shows` ADD FULLTEXT KEY `general_show_name` (`general_show_name`);

--
-- Indexes for table `main_screen_shows`
--
ALTER TABLE `main_screen_shows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `main_screen_shows_ibfk_2` (`general_show_id`);

--
-- Indexes for table `non_series_link`
--
ALTER TABLE `non_series_link`
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `video_streaming_link_ibfk_2` (`general_show_id`),
  ADD KEY `video_streaming_link_ibfk_3` (`server_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_show_id` (`general_show_id`),
  ADD KEY `comments_ibfk_2` (`usr_id`);

--
-- Indexes for table `series_categories`
--
ALTER TABLE `series_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series_link`
--
ALTER TABLE `series_link`
  ADD KEY `series_link_ibfk_1` (`server_id`),
  ADD KEY `series_link_ibfk_2` (`cat_id`),
  ADD KEY `series_link_ibfk_3` (`session_id`),
  ADD KEY `series_link_ibfk_4` (`episode_id`),
  ADD KEY `series_link_ibfk_5` (`general_show_id`);

--
-- Indexes for table `series_type_matching`
--
ALTER TABLE `series_type_matching`
  ADD KEY `show_id` (`show_id`),
  ADD KEY `series_type_matching_ibfk_2` (`series_type_id`);

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `showsCategories`
--
ALTER TABLE `showsCategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_actor_mapping`
--
ALTER TABLE `show_actor_mapping`
  ADD KEY `membre_show_mapping_ibfk_1` (`member_id`),
  ADD KEY `membre_show_mapping_ibfk_2` (`show_id`);

--
-- Indexes for table `show_tags`
--
ALTER TABLE `show_tags`
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `social_media_accounts`
--
ALTER TABLE `social_media_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usr_history`
--
ALTER TABLE `usr_history`
  ADD PRIMARY KEY (`usr_id`,`general_show_id`),
  ADD KEY `general_show_id` (`general_show_id`);

--
-- Indexes for table `usr_list`
--
ALTER TABLE `usr_list`
  ADD PRIMARY KEY (`usr_id`,`general_show_id`),
  ADD KEY `general_show_id` (`general_show_id`);

--
-- Indexes for table `usr_ratting`
--
ALTER TABLE `usr_ratting`
  ADD PRIMARY KEY (`usr_id`,`general_show_id`),
  ADD KEY `general_show_id` (`general_show_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_shows`
--
ALTER TABLE `general_shows`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_screen_shows`
--
ALTER TABLE `main_screen_shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `series_categories`
--
ALTER TABLE `series_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `showsCategories`
--
ALTER TABLE `showsCategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `social_media_accounts`
--
ALTER TABLE `social_media_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usr`
--
ALTER TABLE `usr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`general_show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_4` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `episode_ibfk_2` FOREIGN KEY (`show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `general_shows`
--
ALTER TABLE `general_shows`
  ADD CONSTRAINT `general_shows_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `showsCategories` (`id`);

--
-- Constraints for table `main_screen_shows`
--
ALTER TABLE `main_screen_shows`
  ADD CONSTRAINT `main_screen_shows_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `showsCategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `main_screen_shows_ibfk_2` FOREIGN KEY (`general_show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `non_series_link`
--
ALTER TABLE `non_series_link`
  ADD CONSTRAINT `non_series_link_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `showsCategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `non_series_link_ibfk_2` FOREIGN KEY (`general_show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `non_series_link_ibfk_3` FOREIGN KEY (`server_id`) REFERENCES `server` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`general_show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `series_link`
--
ALTER TABLE `series_link`
  ADD CONSTRAINT `series_link_ibfk_1` FOREIGN KEY (`server_id`) REFERENCES `server` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `series_link_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `showsCategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `series_link_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `series_link_ibfk_4` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `series_link_ibfk_5` FOREIGN KEY (`general_show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `series_type_matching`
--
ALTER TABLE `series_type_matching`
  ADD CONSTRAINT `series_type_matching_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `series_type_matching_ibfk_2` FOREIGN KEY (`series_type_id`) REFERENCES `series_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `show_actor_mapping`
--
ALTER TABLE `show_actor_mapping`
  ADD CONSTRAINT `show_actor_mapping_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `show_actor_mapping_ibfk_2` FOREIGN KEY (`show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `show_tags`
--
ALTER TABLE `show_tags`
  ADD CONSTRAINT `show_tags_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usr_history`
--
ALTER TABLE `usr_history`
  ADD CONSTRAINT `usr_history_ibfk_1` FOREIGN KEY (`general_show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_history_ibfk_2` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usr_list`
--
ALTER TABLE `usr_list`
  ADD CONSTRAINT `usr_list_ibfk_1` FOREIGN KEY (`general_show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_list_ibfk_2` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usr_ratting`
--
ALTER TABLE `usr_ratting`
  ADD CONSTRAINT `usr_ratting_ibfk_1` FOREIGN KEY (`general_show_id`) REFERENCES `general_shows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_ratting_ibfk_2` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
