-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2025 at 12:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('NXerLnWqjG4zhjjCPnv0', 'N16cigYzM91MM0wJaaLD', 'uOYS8aYsgjC3ILI3skC5', '8cJtgE96ABSfLoYpsvIZ', 'Terbaiklahh', '2025-01-09'),
('7Fuq3FpbWzpSR8ngFhvy', 'N16cigYzM91MM0wJaaLD', 'I3eCHr8eiFWBrrHkigMI', '8cJtgE96ABSfLoYpsvIZ', 'sljfskhfgdwdhj', '2025-01-10'),
('5fXdayogJkWw9eEa0IOM', 'swPakVrqzlR5UXyTXQOu', 'I3eCHr8eiFWBrrHkigMI', '8cJtgE96ABSfLoYpsvIZ', 'mantapp', '2025-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `number`, `message`) VALUES
('Fareed', 'user1@gmail.com', 114045282, 'Hiii');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('N16cigYzM91MM0wJaaLD', '8cJtgE96ABSfLoYpsvIZ', 'XufUVacHhQ2rIjyQIYIT', 'Introduction to cybersecurity', 'The need for cybersecurity professionals continues to grow. CBT Nuggets trainer Keith Barker explains why security is more important than ever, and how to enter the burgeoning career field.', 'VjC3wW27QzLK730vlVuI.mp4', 'FadBWinmXhbfa6ggjP69.jpg', '2025-01-09', 'active'),
('WXoCqNjCDGhRRwX7huln', '8cJtgE96ABSfLoYpsvIZ', 'XufUVacHhQ2rIjyQIYIT', 'Basic of CyberSecurity', 'Learn more about why cyber security is  more important than ever.', 'XKtz72PL1g55QQdjLpk6.mp4', '4m9shlI5QMHVX90K2yLe.jpg', '2025-01-09', 'active'),
('swPakVrqzlR5UXyTXQOu', '8cJtgE96ABSfLoYpsvIZ', 'XufUVacHhQ2rIjyQIYIT', 'Cyber Hygiene', 'Cyber hygiene—practices for ensuring the safe handling of data—is essential now that modern workplaces are hotbeds of digital solutions and big data sets.', 'eHavOgb6OOPVTXFJKScg.mp4', 'WZncNGVFjkEUZ53DlV3X.png', '2025-01-13', 'active'),
('Vd2C1KvPOqGou0LE39MJ', '8cJtgE96ABSfLoYpsvIZ', 'GJEdnqoQWilZhYYGEkFA', 'Operating System Security', 'Knows about Operating System', 'kf5s8jy4aKoFrYGXC83C.mp4', 'QQlMQ7FplKoBTDIGoSYG.png', '2025-01-13', 'active'),
('P6YNTRg4CJAuSgeGNclD', '8cJtgE96ABSfLoYpsvIZ', 'GJEdnqoQWilZhYYGEkFA', 'Introduction to Cryptography', 'Basic encryption and decryption principles\r\n', 'PsOMwG30RG5NpJ375Yrk.mp4', 'NcX0hi7LrKKUGJqqxEyE.webp', '2025-01-13', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('uOYS8aYsgjC3ILI3skC5', '8cJtgE96ABSfLoYpsvIZ', 'N16cigYzM91MM0wJaaLD'),
('I3eCHr8eiFWBrrHkigMI', '8cJtgE96ABSfLoYpsvIZ', 'N16cigYzM91MM0wJaaLD'),
('I3eCHr8eiFWBrrHkigMI', '8cJtgE96ABSfLoYpsvIZ', 'WXoCqNjCDGhRRwX7huln');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('XufUVacHhQ2rIjyQIYIT', '8cJtgE96ABSfLoYpsvIZ', 'Beginner Level - CyberSecurity', 'Beginner', 'tx7ejEWpAq58goC5eo0n.jpg', '2025-01-09', 'active'),
('GJEdnqoQWilZhYYGEkFA', '8cJtgE96ABSfLoYpsvIZ', 'Novice Level - CyberSecurity', 'Novice', 'QvnmlKfZlBgUclA8fAvZ.webp', '2025-01-13', 'active'),
('89O0BulcNPgCa1ZH1nee', '8cJtgE96ABSfLoYpsvIZ', 'Intermediate Level - CyberSecurity', 'Intermediate Level', 'esBVOoQJRa6eqIbtoZf1.webp', '2025-01-13', 'active'),
('GOpuRcomSyaUgnDNJMOm', '8cJtgE96ABSfLoYpsvIZ', 'Expert Level - CyberSecurity', 'Expert', 'B0XfQGnIuacjzwzFTVlw.jpg', '2025-01-13', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('8cJtgE96ABSfLoYpsvIZ', 'Adam', 'teacher', 'admin1@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '4iyZ4uu1Q8hfvieY9MlK.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('I3eCHr8eiFWBrrHkigMI', 'Fareed', 'fareedezani0@gmail.c', '7c222fb2927d828af22f592134e8932480637c0d', 'jNtkfAUPmzUoYH3Gl5zJ.jpg'),
('uOYS8aYsgjC3ILI3skC5', 'user1', 'user1@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'MLFJGoMgF8mm0knPqyic.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
