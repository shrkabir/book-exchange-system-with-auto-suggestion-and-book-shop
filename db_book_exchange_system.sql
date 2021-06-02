-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 06:27 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_book_exchange_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'Books', '<p>All types of books.</p>', 1, NULL, NULL),
(2, 'Stationary', '<p>All type of stationary.</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `centraldatas`
--

CREATE TABLE `centraldatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `book_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcondition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reqbook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reqauthor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reqgenre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `centraldatas`
--

INSERT INTO `centraldatas` (`id`, `customer_id`, `book_name`, `author`, `genre`, `bcondition`, `reqbook`, `reqauthor`, `reqgenre`, `available`, `created_at`, `updated_at`) VALUES
(1, 9, 'Programming in ANSI C', 'Balaguruswamy', 'cse', 'old', 'Calculus', 'Howard Anton', 'math', 0, '2019-12-07 11:18:45', '2019-12-07 11:18:45'),
(2, 9, 'Programming in C', 'Stephen G. Kochan', 'cse', 'old', 'The Java Programming Language', 'James Gosling, Ken Arnold, David Holmes', 'cse', 0, '2019-12-07 11:19:44', '2019-12-07 11:19:44'),
(3, 9, 'Infinite Powers: How Calculus Reveals the Secrets of the Universe', 'Steven Strogatz', 'math', 'old', 'Neuro-linguistic Programming For Dummies', 'Romilla Ready , Kate Burton', 'science', 0, '2019-12-07 11:21:04', '2019-12-10 08:30:38'),
(4, 9, 'Inferno', 'Dan Brown', 'detective', 'old', 'Origin', 'Dan Brown', 'detective', 0, '2019-12-07 11:22:24', '2019-12-07 11:22:24'),
(5, 8, 'Calculus', 'howard anton', 'math', 'old', 'Object Oriented Programming With C Plus Plus', 'Balaguruswamy', 'cse', 0, '2019-12-07 11:29:31', '2019-12-11 00:28:06'),
(6, 8, 'Android Programming - Unleashed', 'B. M. Harwani', 'cse', 'old', 'The Java Programming Language', 'James Gosling, Ken Arnold, David Holmes', 'cse', 0, '2019-12-07 11:30:26', '2019-12-07 11:30:26'),
(7, 8, 'Math with Bad Drawings: Illuminating the Ideas That Shape Our Reality', 'Ben Orlin', 'math', 'old', 'The C++ Programming Language', 'Bjarne Stroustrup', 'cse', 0, '2019-12-07 11:31:10', '2019-12-07 11:31:10'),
(8, 7, 'Programming in C', 'Stephen G. Kochan', 'cse', 'old', 'The Java Programming Language', 'James Gosling, Ken Arnold, David Holmes', 'cse', 0, '2019-12-07 11:32:54', '2019-12-09 14:00:38'),
(9, 7, 'Object Oriented Programming With C Plus Plus', 'Balaguruswamy', 'cse', 'old', 'Calculus', 'Howard Anton', 'math', 0, '2019-12-07 11:33:58', '2019-12-11 00:28:06'),
(12, 7, 'computer architecture and organization', 'john p hayes', 'cse', 'old', 'Operating System Concepts', 'Avi Silberschatz', 'cse', 0, '2019-12-10 07:00:13', '2019-12-10 07:00:13'),
(13, 8, 'Infinite Powers: How Calculus Reveals the Secrets of the Universe', 'Steven Strogatz', 'math', 'old', 'Introduction to Java programming', 'Y. Daniel Liang', 'cse', 0, '2019-12-10 07:04:48', '2019-12-10 07:04:48'),
(16, 9, 'Math with Bad Drawings: Illuminating the Ideas That Shape Our Reality', 'Ben Orlin', 'math', 'old', 'Republic', 'Plato', 'historical', 0, '2019-12-11 00:02:56', '2019-12-11 00:02:56'),
(17, 10, 'Everything You Need to Ace Math in One Big Fat Notebook: The Complete Middle School Study Guide', 'Workman Publishing , Ouida Newton', 'math', 'old', 'Android Programming - Unleashed', 'B. M. Harwani', 'cse', 0, '2019-12-13 06:32:45', '2019-12-13 06:32:45'),
(18, 10, 'Logitica: Learn Logic and Math Together', 'Neelabh Kumar', 'math', 'old', 'Lost in Math: How Beauty Leads Physics Astray Hardcover', 'Sabine Hossenfelder', 'math', 0, '2019-12-13 06:33:44', '2019-12-13 06:33:44'),
(19, 10, 'Through the Window', 'Julian Barnes', 'fiction', 'old', 'Talking It Over', 'Julian Barnes', 'fiction', 0, '2019-12-13 06:35:26', '2019-12-13 06:35:26'),
(20, 10, 'The Sense of An Ending', 'Julian Barnes', 'fiction', 'old', 'History of the World in 10 1/2 Chapters', 'Julian Barnes', 'historical', 0, '2019-12-13 06:37:13', '2019-12-13 06:37:13'),
(21, 10, 'Levels of Life', 'Julian Barnes', 'detective', 'old', 'Inferno', 'Dan Brown', 'detective', 0, '2019-12-13 06:39:50', '2019-12-13 06:39:50'),
(22, 10, 'The Story of Success', 'Malcolm Gladwell', 'other', 'old', 'The Last Lecture: Lessons In Living', 'Randy Pausch', 'other', 0, '2019-12-13 06:50:43', '2019-12-13 06:50:43'),
(23, 10, 'The Laws Of Human Nature', 'Robert Greene', 'science', 'old', 'And the Mountains Echoed', 'Khaled Hossein', 'fiction', 0, '2019-12-13 06:52:10', '2019-12-13 06:52:10'),
(24, 11, 'And the Mountains Echoed', 'Khaled Hossein', 'fiction', 'old', 'The Laws Of Human Nature', 'Robert Greene', 'other', 0, '2019-12-13 06:56:19', '2019-12-13 06:56:19'),
(25, 11, 'Aleph', 'Paulo Coelho', 'fiction', 'old', 'Nothing Last Forever', 'Sidney Sheldon', 'detective', 0, '2019-12-13 06:57:48', '2019-12-13 06:57:48'),
(26, 11, 'Nothing Last Forever', 'Veronica Roth', 'drama', 'old', 'Master of the Game The Ultimate Blockbuster', 'Sidney Sheldon', 'detective', 0, '2019-12-13 07:01:01', '2019-12-13 07:01:01'),
(27, 11, 'Rage of Angels', 'Sidney Sheldon', 'detective', 'old', 'Will Grayson', 'John Green, David Levithan', 'fiction', 0, '2019-12-13 07:02:29', '2019-12-13 07:02:29'),
(28, 12, 'Cards on the Table', 'Agatha Christie', 'fiction', 'old', 'Heroes of Olympus The Son of Neptune', 'Rick Riordan', 'fiction', 0, '2019-12-13 07:04:04', '2019-12-13 07:04:04'),
(29, 12, '13 Reasons Why If You are Listening, You are Too Late', 'Jay Asher', 'fiction', 'old', 'The Devil and Miss Prym', 'Paulo Coelho', 'fiction', 0, '2019-12-13 07:05:04', '2019-12-13 07:05:04'),
(30, 12, 'Mein Kampf My Struggle', 'Adolf Hitler', 'political', 'old', 'The Righteous Mind: Why Good People Are Divided by Politics and Religion', 'Jonathan Haidt', 'political', 0, '2019-12-13 07:08:05', '2019-12-13 07:08:05'),
(31, 12, 'Drift: The Unmooring of American Military Power', 'Rachel Maddow', 'political', 'old', 'Say Nothing: A True Story of Murder and Memory in Northern Ireland', 'Patrick Radden Keefe', 'political', 0, '2019-12-13 07:09:06', '2019-12-13 07:09:06'),
(32, 12, '12 Rules for Life: An Antidote to Chaos', 'Jordan B. Peterson', 'other', 'old', 'I Heard You Paint Houses: Frank \"The Irishman\" Sheeran & Closing the Case on Jimmy Hoffa', 'Charles Brandt', 'other', 0, '2019-12-13 07:10:54', '2019-12-13 07:10:54'),
(33, 14, 'Talking to Strangers: What We Should Know about the People We Don\'t Know', 'Malcolm Gladwell', 'other', 'old', 'Mein Kampf My Struggle', 'Adolf Hitler', 'political', 0, '2019-12-13 07:19:14', '2019-12-13 07:19:14'),
(34, 14, 'Say Nothing: A True Story of Murder and Memory in Northern Ireland', 'Patrick Radden Keefe', 'political', 'old', 'The Righteous Mind: Why Good People Are Divided by Politics and Religion', 'Jonathan Haidt', 'political', 0, '2019-12-13 07:21:45', '2019-12-13 07:21:45'),
(35, 14, 'Heroes of Olympus The Son of Neptune', 'Rick Riordan', 'fiction', 'old', '13 Reasons Why If You are Listening, You are Too Late', 'Asher', 'fiction', 0, '2019-12-13 07:23:47', '2019-12-13 07:23:47'),
(36, 14, 'Will Grayson', 'John Green, David Levithan', 'fiction', 'old', 'Cards on the Table', 'Agatha Christie', 'detective', 0, '2019-12-13 07:25:54', '2019-12-13 07:25:54'),
(37, 14, 'Aleph', 'Paulo Coelho', 'fiction', 'old', 'Nothing Last Forever', 'Sidney Sheldon', 'detective', 0, '2019-12-13 08:00:42', '2019-12-13 08:00:42'),
(38, 14, 'The Laws Of Human Nature', 'Robert Greene', 'other', 'old', 'The Last Lecture: Lessons In Living', 'Randy Pausch', 'other', 0, '2019-12-13 08:01:58', '2019-12-13 08:01:58'),
(39, 13, 'Origin', 'Dan Brown', 'detective', 'old', 'Cards on the Table', 'Agatha Christie', 'detective', 0, '2019-12-13 08:03:23', '2019-12-13 08:03:23'),
(40, 13, 'The Greatest Salesman in the World', 'OG Mandino', 'other', 'old', 'Rage of Angels', 'Sidney Sheldon', 'detective', 0, '2019-12-13 08:05:06', '2019-12-13 08:05:06'),
(43, 15, 'The Java Programming Language', 'James Gosling, Ken Arnold, David Holmes', 'cse', 'old', 'Math with Bad Drawings: Illuminating the Ideas That Shape Our Reality', 'Ben Orlin', 'math', 0, '2019-12-13 08:47:01', '2019-12-13 08:47:01'),
(44, 15, 'Logitica: Learn Logic and Math Together', 'Neelabh Kumar', 'math', 'old', 'Infinite Powers: How Calculus Reveals the Secrets of the Universe', 'Steven Strogatz', 'math', 0, '2019-12-13 10:47:56', '2019-12-13 10:47:56'),
(47, 10, 'Numerical Methods for Scientists and Engineers', 'Richard Hamming', 'engineering', 'old', 'Basic VLSI Design', 'Douglas A. Pucknell and Kamran Eshraghian', 'cse', 0, '2019-12-15 12:36:38', '2019-12-15 12:36:38'),
(50, 10, 'Fundamentals of Database Systems', 'Ramez Elmasri', 'cse', 'old', 'Discrete mathematical structures', 'Bernard Kolman', 'cse', 0, '2019-12-15 12:59:45', '2019-12-15 12:59:45'),
(51, 18, 'Digital Logic and Computer Design', 'M. Morris Mano', 'cse', 'new', 'University Physics', 'Hugh D. Young', 'physics', 0, '2019-12-15 13:06:05', '2019-12-15 13:06:05'),
(52, 19, 'Introduction to solid state physics', 'Charles Kittel', 'physics', 'new', 'Chemistry: The Central Science', 'H. Eugene LeMay Jr. and Theodore L. Brown', 'chemistry', 0, '2019-12-15 13:13:39', '2019-12-15 13:13:39'),
(53, 20, 'Chemistry: The Central Science', 'H. Eugene LeMay Jr. and Theodore L. Brown', 'chemistry', 'new', 'Chemistry in Focus: A Molecular View of Our World', 'Nivaldo J. Tro', 'chemistry', 0, '2019-12-15 13:18:19', '2019-12-15 13:18:19'),
(54, 19, 'Many-particle physics', 'Gerald D Mahan', 'physics', 'old', 'Theoretical Nuclear Physics', 'John Markus Blatt and Victor Weisskopf', 'physics', 0, '2019-12-15 13:26:00', '2019-12-15 13:26:00'),
(55, 21, 'Pather Panchali', 'Bibhutibhushan Bandyopadhyay', 'drama', 'old', 'Lalsalu', 'Syed Waliullah', 'drama', 0, '2019-12-15 13:38:43', '2019-12-15 13:38:43'),
(56, 22, 'Lalsalu', 'Syed Waliullah', 'drama', 'old', 'Devdas', 'Sarat Chandra Chattopadhyay', 'drama', 0, '2019-12-15 13:44:14', '2019-12-15 13:44:14'),
(57, 23, 'Real and Complex Analysis', 'Walter Rudin', 'math', 'old', 'An Introduction to the Theory of Numbers', 'G. H. Hardy', 'math', 0, '2019-12-15 13:48:32', '2019-12-15 13:48:32'),
(58, 23, 'University Physics', 'Hugh D. Young', 'physics', 'old', 'Foundations of Electromagnetic Theory', 'Frederick J. Milford and John R. Reitz', 'physics', 0, '2019-12-15 14:00:36', '2019-12-15 14:00:36'),
(59, 24, 'Organic Chemistry as a Second Language', 'David Klein', 'chemistry', 'new', 'New System of Chemical Philosophy', 'John Dalton', 'chemistry', 0, '2019-12-15 14:08:54', '2019-12-15 14:08:54'),
(60, 24, 'Chemical Applications of Group Theory', 'F. Albert Cotton', 'chemistry', 'old', 'Fundamentals of Physics', 'David Halliday, Jearl Walker, and Robert Resnick', 'physics', 0, '2019-12-15 14:10:42', '2019-12-15 14:10:42'),
(61, 24, 'Molecules at an Exhibition', 'John Emsley', 'chemistry', 'old', 'Physical Chemistry', 'Peter Atkins', 'chemistry', 0, '2019-12-15 14:12:08', '2019-12-15 14:12:08'),
(62, 25, 'Physical Chemistry', 'Peter Atkins', 'chemistry', 'old', 'Chemistry of the elements', 'Norman Greenwood', 'chemistry', 0, '2019-12-15 14:14:51', '2019-12-15 14:14:51'),
(63, 26, 'Semiconductor physics and devices', 'Donald A. Neamen', 'eee', 'old', 'Practical Power System Protection', 'L. G. Hewitson, Mark Brown, and Ramesh Balakrishnan', 'eee', 0, '2019-12-15 14:20:05', '2019-12-15 14:20:05'),
(64, 26, 'Course of Theoretical Physics', 'Evgeny Lifshitz and Lev Landau', 'physics', 'old', 'Power Distribution System Reliability: Practical Methods and Applications', 'Ali Chowdhury and D. Koval', 'eee', 0, '2019-12-15 14:21:39', '2019-12-15 14:21:39'),
(65, 27, 'Electromagnetic Waves and Radiating Systems', 'Edward Conrad Jordan and Keith G. Balmain', 'eee', 'new', 'Semiconductor physics and devices', 'Donald A. Neamen', 'eee', 0, '2019-12-15 14:24:16', '2019-12-15 14:24:16'),
(66, 28, 'Kalbela', 'Samareśa Majumadāra', 'drama', 'old', 'Manav Zameen', 'Shirshendu Mukhopadhyay', 'drama', 0, '2019-12-15 14:31:30', '2019-12-15 14:31:30'),
(67, 28, 'Pather Panchali', 'Bibhutibhushan Bandyopadhyay', 'drama', 'old', 'Lalsalu', 'Syed Waliullah', 'drama', 0, '2019-12-15 14:38:07', '2019-12-15 14:38:07'),
(68, 29, 'We Are Not Ourselves: A Novel', 'Matthew Thomas', 'drama', 'old', 'The Gene: An Intimate History', 'Siddhartha Mukherjee', 'drama', 0, '2019-12-15 14:43:01', '2019-12-15 14:43:01'),
(69, 30, 'Advanced Programming in the Unix Environment', 'W. Richard Stevens', 'cse', 'new', 'Software Engineering: A Practitioner\'s Approach', 'Roger S. Pressman', 'cse', 0, '2019-12-15 18:27:13', '2019-12-15 18:27:13'),
(70, 30, 'Civil Engineering Formulas', 'Tyler Gregory Hicks', 'civil', 'old', 'Introduction to solid state physics', 'Charles Kittel', 'physics', 0, '2019-12-15 18:31:49', '2019-12-15 18:31:49'),
(71, 31, 'The History of the Decline and Fall of the Roman Empire: 5', 'Edward Gibbon', 'historical', 'old', 'The History of England from the Accession of James the Second', 'Thomas Babington Macaulay', 'historical', 0, '2019-12-15 18:36:04', '2019-12-15 18:36:04'),
(72, 32, 'The History of England from the Accession of James the Second', 'Thomas Babington Macaulay', 'historical', 'old', 'A history of Russia', 'John Lawrence and Nicholas V. Riasanovsky', 'historical', 0, '2019-12-15 18:41:16', '2019-12-15 18:41:16'),
(73, 33, 'Calculus on Manifolds', 'Michael Spivak', 'math', 'old', 'Linear algebra done right', 'Sheldon Axler', 'math', 0, '2019-12-15 18:46:19', '2019-12-15 18:46:19'),
(74, 33, 'Differential Equations and Their Applications: An Introduction to Applied Mathematics', 'Martin Braun', 'math', 'old', 'Many-particle physics', 'Gerald D Mahan', 'physics', 0, '2019-12-15 18:48:30', '2019-12-15 18:48:30'),
(75, 33, 'Theoretical Nuclear Physics', 'John Markus Blatt and Victor Weisskopf', 'physics', 'old', 'Lectures on theoretical physics', 'Arnold Sommerfeld', 'physics', 0, '2019-12-15 18:52:52', '2019-12-15 18:52:52'),
(76, 34, 'Machinery\'s Handbook', 'Erik Oberg and Franklin D. Jones', 'mechanical', 'old', 'The Principles of Quantum Mechanics', 'Paul Dirac', 'physics', 0, '2019-12-15 18:56:14', '2019-12-15 18:56:14'),
(77, 34, 'University Physics', 'Hugh D. Young', 'physics', 'old', 'Methods of Quantum Field Theory in Statistical Physics', 'Alexei Alexeyevich Abrikosov, I. E. Dzyaloshinski, and Lev Gor\'kov', 'physics', 0, '2019-12-15 18:57:46', '2019-12-15 18:57:46'),
(78, 35, 'Methods of Quantum Field Theory in Statistical Physics', 'Alexei Alexeyevich Abrikosov, I. E. Dzyaloshinski, and Lev Gor\'kov', 'physics', 'old', 'Mathematics for physical chemistry', 'Donald A. McQuarrie', 'chemistry', 0, '2019-12-15 19:01:29', '2019-12-15 19:01:29'),
(79, 35, 'Black Holes and Time Warps', 'Kip Thorne', 'physics', 'old', 'Quantum Physics of Atoms, Molecules, Solids, Nuclei, and Particles', 'Robert Martin Eisberg and Robert Resnick', 'physics', 0, '2019-12-15 19:03:08', '2019-12-15 19:03:08'),
(80, 36, 'Solid State Electronic Devices', 'Ben G. Streetman and Sanjay Banerjee', 'eee', 'old', 'Semiconductor physics and devices', 'Donald A. Neamen', 'eee', 0, '2019-12-15 19:06:55', '2019-12-15 19:06:55'),
(81, 36, 'Electric machines', 'Mulukutla S Sarma', 'eee', 'old', 'Transmission and Distribution Electrical Engineering', 'Brian Hardy and Colin Bayliss', 'eee', 0, '2019-12-15 19:08:25', '2019-12-15 19:08:25'),
(82, 36, 'Power Distribution System Reliability: Practical Methods and Applications', 'Ali Chowdhury and D. Koval', 'eee', 'old', 'Electromagnetic Waves and Radiating Systems', 'Edward Conrad Jordan and Keith G. Balmain', 'eee', 0, '2019-12-15 19:09:38', '2019-12-15 19:09:38'),
(83, 37, 'Fundamentals of artificial neural networks', 'Mohamad H. Hassoun', 'cse', 'old', 'Artificial Intelligence: A Modern Approach', 'Peter Norvig and Stuart J. Russell', 'cse', 0, '2019-12-15 19:17:20', '2019-12-15 19:17:20'),
(84, 37, 'Pattern Classification', 'David G. Stork, Peter E. Hart, and Richard O. Duda', 'cse', 'old', 'Speech and Language Processing', 'Daniel Jurafsky and James H. Martin', 'cse', 0, '2019-12-15 19:19:06', '2019-12-15 19:19:06'),
(85, 37, 'Digital Systems: Principles and Applications', 'Ronald J Tocci', 'cse', 'old', 'Discrete mathematical structures', 'Bernard Kolman', 'cse', 0, '2019-12-15 19:20:35', '2019-12-15 19:20:35'),
(86, 38, 'Fundamentals of artificial neural networks', 'Mohamad H. Hassoun', 'cse', 'new', 'Digital Systems: Principles and Applications', 'Ronald J Tocci', 'cse', 0, '2019-12-15 19:23:27', '2019-12-15 19:23:27'),
(87, 39, 'Applying UML and patterns', 'Craig Larman', 'cse', 'old', 'Software Engineering: A Practitioner\'s Approach', 'Roger S. Pressman', 'cse', 0, '2019-12-15 19:26:49', '2019-12-15 19:26:49'),
(88, 39, 'Practical Algorithms for Image Analysis with CD-ROM', 'Lawrence O\'Gorman, Michael J. Sammon, and Michael Seul', 'cse', 'old', 'Database Systems: A Practical Approach to Design, Implementation, and Management', 'Carolyn E. Begg and Thomas M. Connolly', 'cse', 0, '2019-12-15 19:28:56', '2019-12-15 19:28:56'),
(89, 39, 'Bioinformatics', 'Pierre Baldi', 'cse', 'old', 'Fundamentals of Physics', 'David Halliday, Jearl Walker, and Robert Resnick', 'physics', 0, '2019-12-15 19:31:09', '2019-12-15 19:31:09'),
(90, 39, 'Theory of modeling and simulation', 'Bernard P. Zeigler', 'cse', 'old', 'Principles of Interactive Computer Graphics', 'William Newman', 'cse', 0, '2019-12-15 19:32:42', '2019-12-15 19:32:42'),
(91, 40, 'Fundamentals of Physics', 'David Halliday, Jearl Walker, and Robert Resnick', 'physics', 'new', 'Practical Algorithms for Image Analysis with CD-ROM', 'Lawrence O\'Gorman, Michael J. Sammon, and Michael Seul', 'cse', 0, '2019-12-15 19:37:05', '2019-12-15 19:37:05'),
(92, 41, 'The Casual Vacancy', 'J. K. Rowling', 'drama', 'old', 'The Burgess Boys', 'Elizabeth Strout', 'drama', 0, '2019-12-15 19:42:57', '2019-12-15 19:42:57'),
(93, 41, 'Boy, Snow, Bird', 'Helen Oyeyemi', 'drama', 'old', 'The Cuckoo\'s Calling', 'J. K. Rowling', 'drama', 0, '2019-12-15 19:44:30', '2019-12-15 19:44:30'),
(94, 41, 'Slade House', 'David Mitchell', 'drama', 'old', 'We Are Not Ourselves: A Novel', 'Matthew Thomas', 'drama', 0, '2019-12-15 19:46:56', '2019-12-15 19:46:56'),
(95, 42, 'The Casual Vacancy', 'J. K. Rowling', 'drama', 'old', 'The Orchardist', 'Amanda Coplin', 'drama', 0, '2019-12-15 19:50:33', '2019-12-15 19:50:33'),
(96, 42, 'The Circle', 'Dave Eggers', 'drama', 'old', 'The History of the Decline and Fall of the Roman Empire: 5', 'Edward Gibbon', 'historical', 0, '2019-12-15 19:52:51', '2019-12-15 19:52:51'),
(97, 43, 'The Cuckoo\'s Calling', 'J. K. Rowling', 'drama', 'old', 'A People\'s History of the United States', 'Howard Zinn', 'historical', 0, '2019-12-15 19:57:09', '2019-12-15 19:57:09'),
(98, 43, 'We Are Not Ourselves: A Novel', 'Matthew Thomas', 'drama', 'old', 'The Diary of a Young Girl', 'Anne Frank', 'drama', 0, '2019-12-15 19:59:07', '2019-12-15 19:59:07'),
(99, 44, 'The Diary of a Young Girl', 'Anne Frank', 'drama', 'old', 'The History of England from the Accession of James the Second', 'Thomas Babington Macaulay', 'historical', 0, '2019-12-15 20:03:44', '2019-12-15 20:03:44'),
(100, 45, 'A People\'s History of the United States', 'Howard Zinn', 'historical', 'old', 'Slade House', 'David Mitchell', 'drama', 0, '2019-12-15 20:07:46', '2019-12-15 20:07:46'),
(101, 45, 'Understanding digital signal processing', 'Richard G. Lyons', 'cse', 'old', 'The Image Processing Handbook', 'John C. Russ', 'cse', 0, '2019-12-15 20:11:18', '2019-12-15 20:11:18'),
(102, 46, 'The Circle', 'Dave Eggers', 'drama', 'old', 'The fall of Rome', 'Bryan Ward-Perkins', 'historical', 0, '2019-12-15 20:15:27', '2019-12-15 20:15:27'),
(103, 47, 'Field and wave electromagnetics', 'David K. Cheng', 'eee', 'old', 'Semiconductor physics and devices', 'Donald A. Neamen', 'eee', 0, '2019-12-15 20:19:16', '2019-12-15 20:19:16'),
(104, 48, 'transmission and distribution electrical engineering', 'Brian Hardy and Colin Bayliss', 'eee', 'old', 'Reliability Evaluation of Engineering Systems', 'Roy Billinton', 'eee', 0, '2019-12-15 20:22:55', '2019-12-15 20:22:55'),
(105, 49, 'Concrete Technology: Theory and Practice', 'M. S. Shetty', 'civil', 'old', 'Dynamics of Structures', 'Anil Kumar Chopra', 'civil', 1, '2019-12-15 21:00:03', '2019-12-15 22:35:18'),
(106, 49, 'Principles of Foundation Engineering', 'Braja M Das', 'civil', 'old', 'Steel Structures: Design and Practice', 'N. Subramanian', 'civil', 0, '2019-12-15 21:01:37', '2019-12-15 21:01:37'),
(107, 50, 'Reliability Evaluation of Engineering Systems', 'Roy Billinton', 'civil', 'old', 'A mathematical introduction to logic', 'Herbert Enderton', 'math', 0, '2019-12-15 21:04:45', '2019-12-15 21:04:45'),
(108, 51, 'Principles of mathematical analysis', 'Walter Rudin', 'math', 'old', 'An Introduction to the Theory of Numbers', 'G. H. Hardy', 'math', 0, '2019-12-15 21:07:33', '2019-12-15 21:07:33'),
(109, 51, 'A First Course in Complex Analysis with Applications', 'Dennis G. Zill and Patrick Shanahan', 'math', 'old', 'Visual Complex Analysis', 'Tristan Needham', 'math', 0, '2019-12-15 21:11:02', '2019-12-15 21:11:02'),
(110, 51, 'Modern Quantum Mechanics', 'J. J. Sakurai', 'physics', 'old', 'Real and Complex Analysis', 'Walter Rudin', 'math', 0, '2019-12-15 21:13:30', '2019-12-15 21:13:30'),
(111, 52, 'E: The Story of a Number', 'Eli Maor', 'math', 'old', 'What Is Mathematics?', 'Herbert Robbins and Richard Courant', 'math', 0, '2019-12-15 21:17:04', '2019-12-15 21:17:04'),
(112, 52, 'Seveneves', 'Neal Stephenson', 'drama', 'old', 'Organic Chemistry as a Second Language', 'David Klein', 'chemistry', 0, '2019-12-15 21:20:22', '2019-12-15 21:20:22'),
(113, 53, 'Software Engineering: A Practitioner\'s Approach', 'Roger S. Pressman', 'cse', 'old', 'Electrodynamics of continuous media', 'Lev Landau', 'physics', 0, '2019-12-15 21:24:50', '2019-12-15 21:24:50'),
(114, 53, 'Introduction to Topology and Modern Analysis', 'George F. Simmons', 'math', 'old', 'Mathematical Methods: For Students of Physics and Related Fields', 'Sadri Hassani', 'math', 0, '2019-12-15 21:26:41', '2019-12-15 21:26:41'),
(115, 53, 'Precalculus Mathematics in a Nutshell: Geometry, Algebra, Trigonometry', 'George F. Simmons', 'math', 'new', 'Fundamentals of Physics', 'David Halliday, Jearl Walker, and Robert Resnick', 'physics', 0, '2019-12-15 21:28:18', '2019-12-15 21:28:18'),
(116, 53, 'New System of Chemical Philosophy', 'John Dalton', 'chemistry', 'old', 'Molecules at an Exhibition', 'John Emsley', 'chemistry', 0, '2019-12-15 21:30:05', '2019-12-15 21:30:05'),
(117, 54, 'The Interestings', 'Meg Wolitzer', 'drama', 'old', 'Let Me Be Frank With You', 'Richard Ford', 'drama', 0, '2019-12-15 21:35:33', '2019-12-15 21:35:33'),
(118, 54, 'A Tale for the Time Being', 'Ruth Ozeki', 'drama', 'new', 'Sycamore Row', 'John Grisham', 'drama', 0, '2019-12-15 21:37:57', '2019-12-15 21:37:57'),
(119, 54, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'drama', 'old', 'Pather Panchali', 'Bibhutibhushan Bandyopadhyay', 'drama', 0, '2019-12-15 21:41:32', '2019-12-15 21:41:32'),
(120, 55, 'Data & Computer Communications', 'William Stallings', 'cse', 'old', 'Object Oriented Programming With C Plus Plus', 'Balaguruswamy', 'cse', 0, '2019-12-15 21:45:52', '2019-12-15 21:45:52'),
(121, 55, 'The Art of Computer Programming', 'Donald Knuth', 'cse', 'old', 'Microelectronics', 'Jacob Millman', 'cse', 0, '2019-12-15 21:47:49', '2019-12-15 21:47:49'),
(122, 56, 'Civil Engineering: A Very Short Introduction', 'David Wood', 'civil', 'old', 'Logitica: Learn Logic and Math Together', 'Neelabh Kumar', 'math', 0, '2019-12-15 21:52:44', '2019-12-15 21:52:44'),
(123, 57, 'The Art of Computer Programming', 'Donald Knuth', 'math', 'old', 'Calculus on Manifolds', 'Michael Spivak', 'math', 0, '2019-12-15 21:56:51', '2019-12-15 21:56:51'),
(124, 58, 'Surveying and Levelling', 'N. N. Basak', 'civil', 'old', 'Formulas for Stress and Strain', 'Richard G. Budynas', 'civil', 0, '2019-12-15 22:25:13', '2019-12-15 22:25:13'),
(125, 58, 'Standard Handbook for Civil Engineers', 'Frederick Merritt, Jonathan T. Ricketts, and M. Loftin', 'civil', 'old', 'Semiconductor physics and devices', 'Donald A. Neamen', 'eee', 0, '2019-12-15 22:27:51', '2019-12-15 22:27:51'),
(126, 59, 'Surveying', 'B.C. Punmia', 'civil', 'old', 'Concrete Technology: Theory and Practice', 'M. S. Shetty', 'civil', 1, '2019-12-15 22:34:43', '2019-12-15 22:35:18'),
(127, 59, 'Basic Civil Engineering', 'Satheesh Gopi', 'civil', 'old', 'Civil Engineering: (Objective Type)', 'Dr. P. Jaya Rami Reddy', 'civil', 0, '2019-12-15 22:38:17', '2019-12-15 22:38:17'),
(128, 59, 'Pipefitters Blue Book', 'W. V. Graves', 'civil', 'old', 'Concrete Technology: Theory and Practice', 'M. S. Shetty', 'civil', 0, '2019-12-15 22:39:57', '2019-12-15 22:39:57'),
(129, 60, 'Concrete Technology: Theory and Practice', 'M. S. Shetty', 'civil', 'old', 'Design of wood structures', 'Donald Breyer', 'civil', 0, '2019-12-15 22:42:13', '2019-12-15 22:42:13'),
(130, 60, 'The Emperor of All Maladies', 'Siddhartha Mukherjee', 'drama', 'old', 'The Casual Vacancy', 'J. K. Rowling', 'drama', 0, '2019-12-15 22:43:48', '2019-12-15 22:43:48'),
(131, 61, 'The Confession', 'John Grisham', 'drama', 'old', 'Kalbela', 'Samareśa Majumadāra', 'drama', 0, '2019-12-15 22:48:01', '2019-12-15 22:48:01'),
(132, 61, 'Delivering Happiness', 'Tony Hsieh', 'drama', 'new', 'Columbine', 'Dave Cullen', 'drama', 0, '2019-12-15 22:50:01', '2019-12-15 22:50:01'),
(133, 61, 'The Little Stranger', 'Sarah Waters', 'drama', 'old', 'Outliers', 'Malcolm Gladwell', 'drama', 0, '2019-12-15 22:52:10', '2019-12-15 22:52:10'),
(134, 62, 'Advanced Inorganic Chemistry: A Comprehensive Text', 'F. Albert Cotton and Geoffrey Wilkinson', 'chemistry', 'new', 'The Joy of Chemistry: The Amazing Science of Familiar Things', 'Cathy Cobb and Monty L. Fetterolf', 'chemistry', 0, '2019-12-15 22:55:24', '2019-12-15 22:55:24'),
(135, 62, 'Greene\'s protective groups in organic synthesis', 'Peter G. M. Wuts', 'chemistry', 'old', 'Chemical Applications of Group Theory', 'F. Albert Cotton', 'chemistry', 0, '2019-12-15 22:56:26', '2019-12-15 22:56:26'),
(136, 63, 'Code Complete', 'Steve McConnell', 'cse', 'old', 'A Philosophy of Software Design', 'John Ousterhout', 'cse', 0, '2019-12-15 23:00:12', '2019-12-15 23:00:12'),
(137, 63, 'Software Security: Building Security in', 'Gary McGraw', 'cse', 'new', 'Software Estimation', 'Steve McConnell', 'cse', 0, '2019-12-15 23:01:16', '2019-12-15 23:01:16'),
(138, 63, 'Software Architecture in Practice', 'Len Bass, Paul Clements, and Rick Kazman', 'cse', 'old', 'Software Engineering: A Practitioner\'s Approach', 'Roger S. Pressman', 'cse', 0, '2019-12-15 23:05:37', '2019-12-15 23:05:37'),
(139, 63, 'Olive, Again', 'Elizabeth Strout', 'drama', 'old', 'The institute', 'Stephen King', 'drama', 0, '2019-12-15 23:07:28', '2019-12-15 23:07:28'),
(140, 64, 'Searching for Sylvie Lee: A Novel', 'Jean Kwok', 'drama', 'old', 'Olive, Again', 'Elizabeth Strout', 'drama', 0, '2019-12-15 23:10:14', '2019-12-15 23:10:14'),
(141, 64, 'Fundamentals of Electric Circuits', 'Charles K. Alexander and Matthew N.O. Sadiku', 'eee', 'old', 'Reliability Evaluation of Engineering Systems', 'Roy Billinton', 'eee', 0, '2019-12-15 23:15:13', '2019-12-15 23:15:13'),
(142, 64, 'Fields and Waves in Communication Electronics', 'John Roy Whinnery, Simon Ramo, and Theodore Van Duzer', 'eee', 'old', 'Modern control engineering', 'Katsuhiko Ogata', 'eee', 0, '2019-12-15 23:16:30', '2019-12-15 23:16:30'),
(143, 65, 'Design of Analog CMOS Integrated Circuits', 'Behzad Razavi', 'eee', 'old', 'Wireless Communications & Networks', 'William Stallings', 'eee', 0, '2019-12-15 23:19:56', '2019-12-15 23:19:56'),
(144, 65, 'High-performance Communication Networks', 'Jean Walrand and Pravin Varaiya', 'eee', 'old', 'Digital communications', 'Bernard Sklar', 'eee', 0, '2019-12-15 23:29:54', '2019-12-15 23:29:54'),
(145, 65, 'Power Generation, Operation, and Control', 'Allen J. Wood and Bruce F. Wollenberg', 'eee', 'old', 'Solid State Electronic Devices', 'Ben G. Streetman and Sanjay Banerjee', 'eee', 0, '2019-12-15 23:31:45', '2019-12-15 23:31:45'),
(146, 66, 'Electric Machinery Fundamentals', 'Stephen J. Chapman', 'eee', 'old', 'Electric machines', 'Dino Zorbas', 'eee', 0, '2019-12-15 23:34:01', '2019-12-15 23:34:01'),
(147, 66, 'Text Book of Electrical Technology', 'B.L. Theraja', 'eee', 'old', 'Electronic Principles', 'Albert Paul Malvino', 'eee', 0, '2019-12-15 23:34:54', '2019-12-15 23:34:54'),
(148, 67, 'The Making of the English Working Class', 'E. P. Thompson', 'historical', 'old', 'The search for modern China', 'Jonathan Spence', 'historical', 0, '2019-12-15 23:37:40', '2019-12-15 23:37:40'),
(149, 67, 'The new regime', 'Isser Woloch', 'historical', 'old', 'Hammer and Hoe', 'Robin Kelley', 'historical', 0, '2019-12-15 23:48:13', '2019-12-15 23:48:13'),
(150, 67, 'The House of the Seven Gables', 'Nathaniel Hawthorne', 'historical', 'old', 'The History of the Decline and Fall of the Roman Empire: 5', 'Edward Gibbon', 'historical', 0, '2019-12-15 23:50:51', '2019-12-15 23:50:51'),
(151, 68, 'Programming: Principles and Practice Using C++', 'Bjarne Stroustrup', 'cse', 'old', 'Clean Code', 'Robert Cecil Martin', 'cse', 0, '2019-12-15 23:54:40', '2019-12-15 23:54:40'),
(152, 68, 'A Tour of C++', 'Bjarne Stroustrup', 'cse', 'old', 'Code Complete', 'Steve McConnell', 'cse', 0, '2019-12-15 23:56:36', '2019-12-15 23:56:36'),
(153, 69, 'The Art of Electronics', 'Paul Horowitz and Winfield Hill', 'eee', 'old', 'Microelectronic circuits', 'Adel Sedra and Kenneth C. Smith', 'eee', 0, '2019-12-15 23:59:10', '2019-12-15 23:59:10'),
(154, 69, 'Starting Electronics', 'Keith Brindley', 'eee', 'old', 'Field and wave electromagnetics', 'David K. Cheng', 'eee', 0, '2019-12-16 00:00:17', '2019-12-16 00:00:17'),
(155, 70, 'Schaum\'s Easy Outlines Applied Physics', 'Arthur Beiser', 'physics', 'old', 'Applied Computational Physics', 'Eric S. Swanson and Joseph F. Boudreau', 'physics', 0, '2019-12-16 00:03:56', '2019-12-16 00:03:56'),
(156, 70, 'Fundamentals of Photonics', 'Bahaa E. A. Saleh and Malvin C. Teich', 'physics', 'old', 'Course of Theoretical Physics', 'Evgeny Lifshitz and Lev Landau', 'physics', 0, '2019-12-16 00:05:16', '2019-12-16 00:05:16'),
(157, 70, 'Silicon Photonics II: Components and Integration', 'David J. Lockwood', 'physics', 'old', 'Chemistry: The Central Science', 'H. Eugene LeMay Jr. and Theodore L. Brown', 'chemistry', 0, '2019-12-16 00:07:14', '2019-12-16 00:07:14'),
(158, 71, 'Introduction to the Foundations of Applied Mathematics', 'Mark H. Holmes', 'math', 'old', 'Machine Learning: An Applied Mathematics Introduction', 'Paul Wilmott', 'math', 0, '2019-12-16 00:10:22', '2019-12-16 00:10:22'),
(159, 71, 'MATLAB Guide', 'Desmond Higham and Nicholas Higham', 'math', 'old', 'E: The Story of a Number', 'Eli Maor', 'math', 0, '2019-12-16 00:11:33', '2019-12-16 00:11:33'),
(160, 71, 'Introduction to applied mathematics', 'Gilbert Strang', 'math', 'old', 'Mathematical Models in Epidemiology', 'Carlos Castillo-Chavez, Fred Brauer, and Zhilan Feng', 'math', 0, '2019-12-16 00:12:48', '2019-12-16 00:12:48'),
(161, 72, 'Applied Chemistry: A Textbook for Engineers and Technologists', 'Hyman D. Gesser', 'chemistry', 'old', 'Nomenclature of Organic Chemistry', 'J. Rigaudy and S. P. Klesney', 'chemistry', 0, '2019-12-16 00:18:13', '2019-12-16 00:18:13'),
(162, 72, 'Nomenclature of Inorganic Chemistry', 'Richard M. Hartshorn', 'chemistry', 'old', 'Quantitative Chemical Analysis', 'Daniel C. Harris', 'chemistry', 0, '2019-12-16 00:19:28', '2019-12-16 00:19:28'),
(163, 72, 'Applied Chemistry', 'A. V. Pawar', 'chemistry', 'old', 'Advanced Inorganic Chemistry: A Comprehensive Text', 'F. Albert Cotton and Geoffrey Wilkinson', 'chemistry', 0, '2019-12-16 00:21:09', '2019-12-16 00:21:09'),
(164, 73, 'Mathematical Models in Epidemiology', 'Carlos Castillo-Chavez, Fred Brauer, and Zhilan Feng', 'math', 'old', 'Computational Science and Engineering', 'Gilbert Strang', 'math', 0, '2019-12-16 00:25:32', '2019-12-16 00:25:32'),
(165, 73, 'A Dynamical Systems Theory of Thermodynamics', 'Wassim Michael Haddad', 'math', 'old', 'Fundamentals of Photonics', 'Bahaa E. A. Saleh and Malvin C. Teich', 'physics', 0, '2019-12-16 00:26:29', '2019-12-16 00:26:29'),
(166, 74, 'Variational theories for liquid crystals', 'Epifanio G. Virga', 'math', 'old', 'C, the complete reference', 'Herbert Schildt', 'cse', 0, '2019-12-16 00:28:37', '2019-12-16 00:28:37'),
(167, 74, 'Handbook of Writing for the Mathematical Sciences', 'Nicholas Higham', 'math', 'new', 'The C Programming Language', 'Brian Kernighan and Dennis Ritchie', 'cse', 0, '2019-12-16 00:29:56', '2019-12-16 00:29:56'),
(168, 74, 'Vortex Structures in a Stratified Fluid: Order from Chaos', 'Sergey I. Voropayev and Yakov D. Afanasyev', 'math', 'old', 'Text Book of Electrical Technology', 'B.L. Theraja', 'eee', 0, '2019-12-16 00:30:59', '2019-12-16 00:30:59'),
(169, 75, 'Quantum mechanics for applied physics and engineering', 'A. T. Fromhold', 'physics', 'old', 'Functions of matrices', 'Nicholas Higham', 'math', 0, '2019-12-16 00:34:32', '2019-12-16 00:34:32'),
(170, 75, 'Applied Mathematics: A Very Short Introduction', 'Alain Goriely', 'math', 'old', 'Silicon Photonics II: Components and Integration', 'David J. Lockwood', 'physics', 0, '2019-12-16 00:36:31', '2019-12-16 00:36:31'),
(171, 76, 'Principles and Techniques of Applied Mathematics', 'Bernard Friedman', 'math', 'old', 'Variational theories for liquid crystals', 'Epifanio G. Virga', 'math', 0, '2019-12-16 00:55:43', '2019-12-16 00:55:43'),
(172, 76, 'Differential Equations with Applications and Historical Notes', 'George F. Simmons', 'math', 'old', 'Calculus on Manifolds', 'Michael Spivak', 'math', 0, '2019-12-16 01:00:16', '2019-12-16 01:00:16'),
(173, 77, 'Analysis and Design Practice of Hydraulic Concrete Structures', 'Ghosh Karuna Moy', 'civil', 'old', 'Concrete Technology: Theory and Practice', 'M. S. Shetty', 'civil', 0, '2019-12-16 01:03:08', '2019-12-16 01:03:08'),
(174, 77, 'Dynamics of Structures', 'Anil Kumar Chopra', 'civil', 'new', 'Principles of Foundation Engineering', 'Braja M Das', 'civil', 0, '2019-12-16 01:04:18', '2019-12-16 01:04:18'),
(175, 78, 'The Name of this Book is Secret', 'Pseudonymous Bosch', 'drama', 'old', 'Harry Potter Series Box Set', 'J. K. Rowling', 'drama', 0, '2019-12-16 01:08:57', '2019-12-16 01:08:57'),
(176, 78, 'The Good Guy', 'Dean Koontz', 'drama', 'old', 'Searching for Sylvie Lee: A Novel', 'Jean Kwok', 'drama', 0, '2019-12-16 01:10:33', '2019-12-16 01:10:33'),
(177, 79, 'Real Analysis and Applications: Theory in Practice', 'Allan P. Donsig and Kenneth R. Davidson', 'math', 'old', 'MATLAB Guide', 'Desmond Higham and Nicholas Higham', 'math', 0, '2019-12-16 01:15:05', '2019-12-16 01:15:05'),
(178, 79, 'Analysis for Applied Mathematics', 'Elliott Ward Cheney Jr.', 'math', 'old', 'Methods of applied mathematics', 'Francis B. Hildebrand', 'math', 0, '2019-12-16 01:16:38', '2019-12-16 01:16:38'),
(179, 80, 'Mathematical Methods in the Physical Sciences', 'Mary L. Boas', 'math', 'old', 'Nomenclature of Inorganic Chemistry', 'Richard M. Hartshorn', 'chemistry', 0, '2019-12-16 01:19:05', '2019-12-16 01:19:05'),
(180, 80, 'Approximation Theory and Algorithms for Data Analysis', 'Armin Iske', 'math', 'old', 'Mathematical Foundations of Quantum Mechanics', 'Harry Lass', 'math', 0, '2019-12-16 01:21:10', '2019-12-16 01:21:10'),
(181, 81, 'Black Swan Green', 'David Mitchell', 'drama', 'old', 'The Good Guy', 'Dean Koontz', 'drama', 0, '2019-12-16 01:43:34', '2019-12-16 01:43:34'),
(182, 12, 'Mein Kampf My Struggle', 'Adolf Hitler', 'political', 'old', 'The Righteous Mind: Why Good People Are Divided by Politics and Religion', 'Jonathan Haidt', 'political', 0, '2019-12-13 07:08:05', '2019-12-13 07:08:05'),
(183, 81, 'Fun Home: A Family Tragicomic', 'Alison Bechdel', 'drama', 'new', 'Life As We Knew It', 'Susan Beth Pfeffer', 'drama', 0, '2019-12-16 01:48:04', '2019-12-16 01:48:04'),
(184, 82, 'Working Effectively with Legacy Code', 'Michael C. Feathers', 'cse', 'old', 'Software Security: Building Security in', 'Gary McGraw', 'cse', 0, '2019-12-16 01:51:17', '2019-12-16 01:51:17'),
(185, 82, 'The Historian', 'Elizabeth Kostova', 'drama', 'old', 'Teacher Man', 'Frank McCourt', 'drama', 0, '2019-12-16 01:52:40', '2019-12-16 01:52:40'),
(186, 82, 'Eleven on Top', 'Janet Evanovich', 'drama', 'old', 'Olive, Again', 'Elizabeth Strout', 'drama', 0, '2019-12-16 01:53:49', '2019-12-16 01:53:49'),
(187, 83, 'Partial Differential Equations in Action: From Modelling to Theory', 'Sandro Salsa', 'math', 'old', 'Applied Mathematics for Physical Chemistry', 'James R Barrante', 'math', 0, '2019-12-16 01:56:42', '2019-12-16 01:56:42'),
(188, 83, 'Principles of applied mathematics', 'James P. Keener', 'math', 'old', 'Infinite Words: Automata, Semigroups, Logic and Games', 'Dominique Pierre Perrin and Jean-Éric Pin', 'math', 0, '2019-12-16 01:57:43', '2019-12-16 01:57:43'),
(189, 84, 'The Truth About Forever', 'Sarah Dessen', 'drama', 'new', 'The Line of Beauty', 'Alan Hollinghurst', 'drama', 0, '2019-12-16 02:00:22', '2019-12-16 02:00:22'),
(190, 84, 'Case Histories', 'Kate Atkinson', 'drama', 'old', 'Boy, Snow, Bird', 'Helen Oyeyemi', 'drama', 0, '2019-12-16 02:02:00', '2019-12-16 02:02:00'),
(191, 85, 'Harry Potter and the Order of the Phoenix', 'J. K. Rowling', 'drama', 'new', 'The Casual Vacancy', 'J. K. Rowling', 'drama', 0, '2019-12-16 02:05:04', '2019-12-16 02:05:04'),
(192, 85, 'The Kite Runner', 'Khaled Hosseini', 'drama', 'old', 'The Slippery Slope', 'Daniel Handler', 'drama', 0, '2019-12-16 02:06:20', '2019-12-16 02:06:20'),
(193, 86, 'The Dot', 'Peter H. Reynolds', 'drama', 'old', 'The Circle', 'Dave Eggers', 'drama', 0, '2019-12-16 02:09:06', '2019-12-16 02:09:06'),
(194, 86, 'Everything\'s Eventual', 'Stephen King', 'drama', 'old', 'Stories of Your Life and Others', 'Ted Chiang', 'drama', 0, '2019-12-16 02:11:00', '2019-12-16 02:11:00'),
(195, 86, 'The Clean Coder: A Code of Conduct for Professional Programmers', 'Robert Cecil Martin', 'cse', 'old', 'Soft Skills: The Software Developer\'s Life Manual', 'John Sonmez', 'cse', 0, '2019-12-16 02:12:21', '2019-12-16 02:12:21'),
(196, 87, 'Principles of Package Design: Creating Reusable Software Components', 'Matthias Noback', 'cse', 'old', 'Programming Pearls', 'Jon Bentley', 'cse', 0, '2019-12-16 02:14:21', '2019-12-16 02:14:21'),
(197, 87, 'Software Architecture in Practice', 'Len Bass, Paul Clements, and Rick Kazman', 'cse', 'old', 'Principles of mathematical analysis', 'Walter Rudin', 'math', 0, '2019-12-16 02:15:53', '2019-12-16 02:15:53'),
(198, 37, 'Digital Systems: Principles and Applications', 'Ronald J Tocci', 'cse', 'old', 'Discrete mathematical structures', 'Bernard Kolman', 'cse', 0, '2019-12-15 19:20:35', '2019-12-15 19:20:35'),
(199, 88, 'Object-Oriented Software Construction', 'Bertrand Meyer', 'cse', 'old', 'MATLAB Guide', 'Desmond Higham and Nicholas Higham', 'math', 0, '2019-12-16 02:18:54', '2019-12-16 02:18:54'),
(200, 89, 'Writing Solid Code', 'Steve Maguire', 'cse', 'old', 'Debugging the development process', 'Steve Maguire', 'cse', 0, '2019-12-16 02:20:57', '2019-12-16 02:20:57'),
(201, 89, 'Coders at Work: Reflections on the Craft of Programming', 'Peter Seibel', 'cse', 'old', 'Schaum\'s Easy Outlines Applied Physics', 'Arthur Beiser', 'physics', 0, '2019-12-16 02:22:51', '2019-12-16 02:22:51'),
(202, 70, 'Schaum\'s Easy Outlines Applied Physics', 'Arthur Beiser', 'physics', 'old', 'Applied Computational Physics', 'Eric S. Swanson and Joseph F. Boudreau', 'physics', 0, '2019-12-16 00:03:56', '2019-12-16 00:03:56'),
(203, 40, 'Fundamentals of Physics', 'David Halliday, Jearl Walker, and Robert Resnick', 'physics', 'new', 'Practical Algorithms for Image Analysis with CD-ROM', 'Lawrence O\'Gorman, Michael J. Sammon, and Michael Seul', 'cse', 0, '2019-12-15 19:37:05', '2019-12-15 19:37:05'),
(204, 18, 'Digital Logic and Computer Design', 'M. Morris Mano', 'cse', 'new', 'University Physics', 'Hugh D. Young', 'physics', 0, '2019-12-15 13:06:05', '2019-12-15 13:06:05'),
(205, 26, 'Semiconductor physics and devices', 'Donald A. Neamen', 'eee', 'old', 'Practical Power System Protection', 'L. G. Hewitson, Mark Brown, and Ramesh Balakrishnan', 'eee', 0, '2019-12-15 14:20:05', '2019-12-15 14:20:05'),
(206, 90, 'Botany for Gardeners: An Introduction and Guide', 'Brian Capon', 'biology', 'old', 'Biology of plants', 'Peter H. Raven', 'biology', 0, '2019-12-16 02:27:56', '2019-12-16 02:27:56'),
(207, 90, 'Philosophia Botanica', 'Carl Linnaeus', 'biology', 'old', 'Botany: An Introduction to Plant Biology', 'James D. Mauseth', 'biology', 0, '2019-12-16 02:28:49', '2019-12-16 02:28:49'),
(208, 91, 'Biology of plants', 'Peter H. Raven', 'biology', 'old', 'Plant Identification Terminology: An Illustrated Glossary', 'ames G. Harris and Melinda Woolf Harris', 'biology', 0, '2019-12-16 02:31:12', '2019-12-16 02:31:12'),
(209, 91, 'The Encyclopedia of Psychoactive Plants: Ethnopharmacology and Its Applications', 'Christian Rätsch', 'biology', 'old', 'Plant Systematics: A Phylogenetic Approach', 'Walter Stephen Judd', 'biology', 0, '2019-12-16 02:32:05', '2019-12-16 02:32:05'),
(210, 91, 'The Burgess Boys', 'Elizabeth Strout', 'drama', 'old', 'Boy, Snow, Bird', 'Helen Oyeyemi', 'drama', 0, '2019-12-16 02:33:43', '2019-12-16 02:33:43'),
(211, 92, 'Practical Botany for Gardeners: Over 3,000 Botanical Terms Explained', 'Geoff Hodge', 'biology', 'old', 'Botany illustrated', 'Janice Glimn-Lacy', 'biology', 0, '2019-12-16 02:35:45', '2019-12-16 02:35:45'),
(212, 92, 'Sycamore Row', 'John Grisham', 'drama', 'old', 'White Teeth', 'Zadie Smith', 'drama', 0, '2019-12-16 02:37:44', '2019-12-16 02:37:44'),
(213, 93, 'Parts of Animals', 'Aristotle', 'biology', 'old', 'Fundamentals of Physics', 'David Halliday, Jearl Walker, and Robert Resnick', 'physics', 0, '2019-12-16 02:49:54', '2019-12-16 02:49:54'),
(214, 94, 'Vertebrates: Comparative Anatomy, Function, Evolution', 'Kenneth V. Kardong', 'biology', 'old', 'Pather Panchali', 'Bibhutibhushan Bandyopadhyay', 'drama', 0, '2019-12-16 02:52:02', '2019-12-16 02:52:02'),
(215, 95, 'Invertebrate zoology', 'Edward E. Ruppert', 'biology', 'old', 'Botany for Gardeners: An Introduction and Guide', 'Brian Capon', 'biology', 0, '2019-12-16 02:54:03', '2019-12-16 02:54:03'),
(216, 96, 'Molecules at an Exhibition', 'John Emsley', 'chemistry', 'old', 'Advanced Inorganic Chemistry: A Comprehensive Text', 'F. Albert Cotton and Geoffrey Wilkinson', 'chemistry', 0, '2019-12-16 03:22:41', '2019-12-16 03:22:41'),
(217, 97, 'Debugging the development process', 'Steve Maguire', 'cse', 'old', 'Schaum\'s Easy Outlines Applied Physics', 'Arthur Beiser', 'physics', 0, '2019-12-16 03:27:28', '2019-12-16 03:27:28'),
(218, 98, 'Computational Science and Engineering', 'Gilbert Strang', 'math', 'old', 'A Dynamical Systems Theory of Thermodynamics', 'Wassim Michael Haddad', 'math', 0, '2019-12-16 03:32:44', '2019-12-16 03:32:44'),
(219, 99, 'Life As We Knew It', 'Susan Beth Pfeffer', 'drama', 'old', 'Fun Home: A Family Tragicomic', 'Alison Bechdel', 'drama', 0, '2019-12-16 03:37:16', '2019-12-16 03:37:16'),
(220, 100, 'Programming Pearls', 'Jon Bentley', 'cse', 'old', 'Software Architecture in Practice', 'Len Bass, Paul Clements, and Rick Kazman', 'cse', 0, '2019-12-16 03:41:41', '2019-12-16 03:41:41'),
(221, 101, 'The Line of Beauty', 'Alan Hollinghurst', 'drama', 'old', 'Harry Potter and the Order of the Phoenix', 'J. K. Rowling', 'drama', 0, '2019-12-16 03:44:52', '2019-12-16 03:44:52'),
(222, 102, 'Introductory Botany: Plants, People, and the Environment, Media Edition', 'Berg', 'biology', 'old', 'CRC World Dictionary of Medicinal and Poisonous Plants: Common Names, Scientific Names, Eponyms, Synonyms, and Etymology (5 Volume Set)', 'Umberto Quattrocchi', 'biology', 0, '2019-12-16 04:53:52', '2019-12-16 04:53:52'),
(223, 102, 'CRC World Dictionary of Palms: Common Names, Scientific Names, Eponyms, Synonyms, and Etymology (2 Volume Set)', 'Umberto Quattrocchi', 'biology', 'old', 'Molecules at an Exhibition', 'John Emsley', 'chemistry', 0, '2019-12-16 04:56:11', '2019-12-16 04:56:11'),
(224, 103, 'Botany in a Day', 'Thomas J. Elpel', 'biology', 'old', 'Biology of plants', 'Peter H. Raven', 'biology', 0, '2019-12-16 04:59:27', '2019-12-16 04:59:27'),
(225, 103, 'Exercises for the Botany Laboratory, 2e', 'Joel Kazmierski', 'biology', 'old', 'The Botany of Desire: A Plant\'s-Eye View of the World', 'Michael Pollan', 'biology', 0, '2019-12-16 05:01:23', '2019-12-16 05:01:23'),
(226, 104, 'What a Plant Knows', 'Daniel Chamovitz', 'biology', 'old', 'Darwin\'s Most Wonderful Plants: Darwin\'s Botany Today', 'KEN. THOMPSON', 'biology', 0, '2019-12-16 05:04:38', '2019-12-16 05:04:38'),
(227, 104, 'Harry Potter and the Prisoner of Azkaban', 'J. K. Rowling', 'drama', 'old', 'The Burgess Boys', 'Elizabeth Strout', 'drama', 0, '2019-12-16 05:06:27', '2019-12-16 05:06:27'),
(228, 105, 'The Gruffalo', 'Julia Donaldson', 'drama', 'old', 'Lalsalu', 'Syed Waliullah', 'drama', 0, '2019-12-16 05:11:23', '2019-12-16 05:11:23'),
(229, 105, 'Autobiography of Red', 'Anne Carson', 'drama', 'old', 'The Path of Daggers', 'Robert Jordan', 'drama', 0, '2019-12-16 05:13:05', '2019-12-16 05:13:05'),
(230, 106, 'With This Ring', 'Jayne Ann Krentz', 'drama', 'old', 'We Are Not Ourselves: A Novel', 'Matthew Thomas', 'drama', 0, '2019-12-16 05:16:59', '2019-12-16 05:16:59'),
(231, 107, 'The Vintner\'s Luck', 'Elizabeth Knox', 'drama', 'old', 'Harry Potter and the Prisoner of Azkaban', 'J. K. Rowling', 'drama', 0, '2019-12-16 05:19:47', '2019-12-16 05:19:47'),
(232, 108, 'Mathematical Methods in the Physical Sciences', 'Mary L. Boas', 'math', 'old', 'Analysis for Applied Mathematics', 'Elliott Ward Cheney Jr.', 'math', 0, '2019-12-16 05:23:51', '2019-12-16 05:23:51'),
(233, 9, 'Programming in C', 'Stephen G. Kochan', 'cse', 'old', 'The Java Programming Language', 'James Gosling, Ken Arnold, David Holmes', 'cse', 0, '2019-12-07 11:19:44', '2019-12-07 11:19:44'),
(234, 34, 'Machinery\'s Handbook', 'Erik Oberg and Franklin D. Jones', 'mechanical', 'old', 'The Principles of Quantum Mechanics', 'Paul Dirac', 'physics', 0, '2019-12-15 18:56:14', '2019-12-15 18:56:14'),
(235, 71, 'Introduction to the Foundations of Applied Mathematics', 'Mark H. Holmes', 'math', 'old', 'Machine Learning: An Applied Mathematics Introduction', 'Paul Wilmott', 'math', 0, '2019-12-16 00:10:22', '2019-12-16 00:10:22'),
(236, 79, 'Real Analysis and Applications: Theory in Practice', 'Allan P. Donsig and Kenneth R. Davidson', 'math', 'old', 'MATLAB Guide', 'Desmond Higham and Nicholas Higham', 'math', 0, '2019-12-16 01:15:05', '2019-12-16 01:15:05'),
(237, 55, 'The Art of Computer Programming', 'Donald Knuth', 'cse', 'old', 'Microelectronics', 'Jacob Millman', 'cse', 0, '2019-12-15 21:47:49', '2019-12-15 21:47:49'),
(238, 52, 'Seveneves', 'Neal Stephenson', 'drama', 'old', 'Organic Chemistry as a Second Language', 'David Klein', 'chemistry', 0, '2019-12-15 21:20:22', '2019-12-15 21:20:22'),
(239, 59, 'Surveying', 'B.C. Punmia', 'civil', 'old', 'Concrete Technology: Theory and Practice', 'M. S. Shetty', 'civil', 1, '2019-12-15 22:34:43', '2019-12-15 22:35:18'),
(240, 60, 'The Emperor of All Maladies', 'Siddhartha Mukherjee', 'drama', 'old', 'The Casual Vacancy', 'J. K. Rowling', 'drama', 0, '2019-12-15 22:43:48', '2019-12-15 22:43:48'),
(241, 62, 'Advanced Inorganic Chemistry: A Comprehensive Text', 'F. Albert Cotton and Geoffrey Wilkinson', 'chemistry', 'new', 'The Joy of Chemistry: The Amazing Science of Familiar Things', 'Cathy Cobb and Monty L. Fetterolf', 'chemistry', 0, '2019-12-15 22:55:24', '2019-12-15 22:55:24'),
(242, 33, 'Theoretical Nuclear Physics', 'John Markus Blatt and Victor Weisskopf', 'physics', 'old', 'Lectures on theoretical physics', 'Arnold Sommerfeld', 'physics', 0, '2019-12-15 18:52:52', '2019-12-15 18:52:52'),
(243, 34, 'University Physics', 'Hugh D. Young', 'physics', 'old', 'Methods of Quantum Field Theory in Statistical Physics', 'Alexei Alexeyevich Abrikosov, I. E. Dzyaloshinski, and Lev Gor\'kov', 'physics', 0, '2019-12-15 18:57:46', '2019-12-15 18:57:46'),
(244, 35, 'Black Holes and Time Warps', 'Kip Thorne', 'physics', 'old', 'Quantum Physics of Atoms, Molecules, Solids, Nuclei, and Particles', 'Robert Martin Eisberg and Robert Resnick', 'physics', 0, '2019-12-15 19:03:08', '2019-12-15 19:03:08'),
(245, 36, 'Electric machines', 'Mulukutla S Sarma', 'eee', 'old', 'Transmission and Distribution Electrical Engineering', 'Brian Hardy and Colin Bayliss', 'eee', 0, '2019-12-15 19:08:25', '2019-12-15 19:08:25'),
(246, 42, 'The Circle', 'Dave Eggers', 'drama', 'old', 'The History of the Decline and Fall of the Roman Empire: 5', 'Edward Gibbon', 'historical', 0, '2019-12-15 19:52:51', '2019-12-15 19:52:51'),
(247, 45, 'A People\'s History of the United States', 'Howard Zinn', 'historical', 'old', 'Slade House', 'David Mitchell', 'drama', 0, '2019-12-15 20:07:46', '2019-12-15 20:07:46'),
(248, 47, 'Field and wave electromagnetics', 'David K. Cheng', 'eee', 'old', 'Semiconductor physics and devices', 'Donald A. Neamen', 'eee', 0, '2019-12-15 20:19:16', '2019-12-15 20:19:16'),
(249, 60, 'Concrete Technology: Theory and Practice', 'M. S. Shetty', 'civil', 'old', 'Design of wood structures', 'Donald Breyer', 'civil', 0, '2019-12-15 22:42:13', '2019-12-15 22:42:13'),
(250, 61, 'The Little Stranger', 'Sarah Waters', 'drama', 'old', 'Outliers', 'Malcolm Gladwell', 'drama', 0, '2019-12-15 22:52:10', '2019-12-15 22:52:10'),
(251, 63, 'Software Security: Building Security in', 'Gary McGraw', 'cse', 'new', 'Software Estimation', 'Steve McConnell', 'cse', 0, '2019-12-15 23:01:16', '2019-12-15 23:01:16'),
(252, 77, 'Dynamics of Structures', 'Anil Kumar Chopra', 'civil', 'new', 'Principles of Foundation Engineering', 'Braja M Das', 'civil', 0, '2019-12-16 01:04:18', '2019-12-16 01:04:18'),
(253, 79, 'Real Analysis and Applications: Theory in Practice', 'Allan P. Donsig and Kenneth R. Davidson', 'math', 'old', 'MATLAB Guide', 'Desmond Higham and Nicholas Higham', 'math', 0, '2019-12-16 01:15:05', '2019-12-16 01:15:05'),
(254, 86, 'The Clean Coder: A Code of Conduct for Professional Programmers', 'Robert Cecil Martin', 'cse', 'old', 'Soft Skills: The Software Developer\'s Life Manual', 'John Sonmez', 'cse', 0, '2019-12-16 02:12:21', '2019-12-16 02:12:21'),
(255, 37, 'Digital Systems: Principles and Applications', 'Ronald J Tocci', 'cse', 'old', 'Discrete mathematical structures', 'Bernard Kolman', 'cse', 0, '2019-12-15 19:20:35', '2019-12-15 19:20:35'),
(256, 9, 'Infinite Powers: How Calculus Reveals the Secrets of the Universe', 'Steven Strogatz', 'math', 'old', 'Neuro-linguistic Programming For Dummies', 'Romilla Ready , Kate Burton', 'science', 0, '2019-12-07 11:21:04', '2019-12-10 08:30:38'),
(257, 8, 'Android Programming - Unleashed', 'B. M. Harwani', 'cse', 'old', 'The Java Programming Language', 'James Gosling, Ken Arnold, David Holmes', 'cse', 0, '2019-12-07 11:30:26', '2019-12-07 11:30:26');
INSERT INTO `centraldatas` (`id`, `customer_id`, `book_name`, `author`, `genre`, `bcondition`, `reqbook`, `reqauthor`, `reqgenre`, `available`, `created_at`, `updated_at`) VALUES
(258, 53, 'Introduction to Topology and Modern Analysis', 'George F. Simmons', 'math', 'old', 'Mathematical Methods: For Students of Physics and Related Fields', 'Sadri Hassani', 'math', 0, '2019-12-15 21:26:41', '2019-12-15 21:26:41'),
(259, 54, 'A Tale for the Time Being', 'Ruth Ozeki', 'drama', 'new', 'Sycamore Row', 'John Grisham', 'drama', 0, '2019-12-15 21:37:57', '2019-12-15 21:37:57'),
(260, 55, 'Data & Computer Communications', 'William Stallings', 'cse', 'old', 'Object Oriented Programming With C Plus Plus', 'Balaguruswamy', 'cse', 0, '2019-12-15 21:45:52', '2019-12-15 21:45:52'),
(261, 64, 'Fundamentals of Electric Circuits', 'Charles K. Alexander and Matthew N.O. Sadiku', 'eee', 'old', 'Reliability Evaluation of Engineering Systems', 'Roy Billinton', 'eee', 0, '2019-12-15 23:15:13', '2019-12-15 23:15:13'),
(262, 71, 'MATLAB Guide', 'Desmond Higham and Nicholas Higham', 'math', 'old', 'E: The Story of a Number', 'Eli Maor', 'math', 0, '2019-12-16 00:11:33', '2019-12-16 00:11:33'),
(263, 72, 'Nomenclature of Inorganic Chemistry', 'Richard M. Hartshorn', 'chemistry', 'old', 'Quantitative Chemical Analysis', 'Daniel C. Harris', 'chemistry', 0, '2019-12-16 00:19:28', '2019-12-16 00:19:28'),
(264, 74, 'Variational theories for liquid crystals', 'Epifanio G. Virga', 'math', 'old', 'C, the complete reference', 'Herbert Schildt', 'cse', 0, '2019-12-16 00:28:37', '2019-12-16 00:28:37'),
(265, 75, 'Quantum mechanics for applied physics and engineering', 'A. T. Fromhold', 'physics', 'old', 'Functions of matrices', 'Nicholas Higham', 'math', 0, '2019-12-16 00:34:32', '2019-12-16 00:34:32'),
(266, 80, 'Mathematical Methods in the Physical Sciences', 'Mary L. Boas', 'math', 'old', 'Nomenclature of Inorganic Chemistry', 'Richard M. Hartshorn', 'chemistry', 0, '2019-12-16 01:19:05', '2019-12-16 01:19:05'),
(267, 12, 'Mein Kampf My Struggle', 'Adolf Hitler', 'political', 'old', 'The Righteous Mind: Why Good People Are Divided by Politics and Religion', 'Jonathan Haidt', 'political', 0, '2019-12-13 07:08:05', '2019-12-13 07:08:05'),
(268, 82, 'The Historian', 'Elizabeth Kostova', 'drama', 'old', 'Teacher Man', 'Frank McCourt', 'drama', 0, '2019-12-16 01:52:40', '2019-12-16 01:52:40'),
(269, 83, 'Principles of applied mathematics', 'James P. Keener', 'math', 'old', 'Infinite Words: Automata, Semigroups, Logic and Games', 'Dominique Pierre Perrin and Jean-Éric Pin', 'math', 0, '2019-12-16 01:57:43', '2019-12-16 01:57:43'),
(270, 40, 'Fundamentals of Physics', 'David Halliday, Jearl Walker, and Robert Resnick', 'physics', 'new', 'Practical Algorithms for Image Analysis with CD-ROM', 'Lawrence O\'Gorman, Michael J. Sammon, and Michael Seul', 'cse', 0, '2019-12-15 19:37:05', '2019-12-15 19:37:05'),
(271, 18, 'Digital Logic and Computer Design', 'M. Morris Mano', 'cse', 'new', 'University Physics', 'Hugh D. Young', 'physics', 0, '2019-12-15 13:06:05', '2019-12-15 13:06:05'),
(272, 90, 'Botany for Gardeners: An Introduction and Guide', 'Brian Capon', 'biology', 'old', 'Biology of plants', 'Peter H. Raven', 'biology', 0, '2019-12-16 02:27:56', '2019-12-16 02:27:56'),
(273, 91, 'The Encyclopedia of Psychoactive Plants: Ethnopharmacology and Its Applications', 'Christian Rätsch', 'biology', 'old', 'Plant Systematics: A Phylogenetic Approach', 'Walter Stephen Judd', 'biology', 0, '2019-12-16 02:32:05', '2019-12-16 02:32:05'),
(274, 95, 'Invertebrate zoology', 'Edward E. Ruppert', 'biology', 'old', 'Botany for Gardeners: An Introduction and Guide', 'Brian Capon', 'biology', 0, '2019-12-16 02:54:03', '2019-12-16 02:54:03'),
(275, 97, 'Debugging the development process', 'Steve Maguire', 'cse', 'old', 'Schaum\'s Easy Outlines Applied Physics', 'Arthur Beiser', 'physics', 0, '2019-12-16 03:27:28', '2019-12-16 03:27:28'),
(276, 100, 'Programming Pearls', 'Jon Bentley', 'cse', 'old', 'Software Architecture in Practice', 'Len Bass, Paul Clements, and Rick Kazman', 'cse', 0, '2019-12-16 03:41:41', '2019-12-16 03:41:41'),
(277, 102, 'Introductory Botany: Plants, People, and the Environment, Media Edition', 'Berg', 'biology', 'old', 'CRC World Dictionary of Medicinal and Poisonous Plants: Common Names, Scientific Names, Eponyms, Synonyms, and Etymology (5 Volume Set)', 'Umberto Quattrocchi', 'biology', 0, '2019-12-16 04:53:52', '2019-12-16 04:53:52'),
(278, 103, 'Botany in a Day', 'Thomas J. Elpel', 'biology', 'old', 'Biology of plants', 'Peter H. Raven', 'biology', 0, '2019-12-16 04:59:27', '2019-12-16 04:59:27'),
(279, 104, 'What a Plant Knows', 'Daniel Chamovitz', 'biology', 'old', 'Darwin\'s Most Wonderful Plants: Darwin\'s Botany Today', 'KEN. THOMPSON', 'biology', 0, '2019-12-16 05:04:38', '2019-12-16 05:04:38'),
(280, 79, 'Real Analysis and Applications: Theory in Practice', 'Allan P. Donsig and Kenneth R. Davidson', 'math', 'old', 'MATLAB Guide', 'Desmond Higham and Nicholas Higham', 'math', 0, '2019-12-16 01:15:05', '2019-12-16 01:15:05'),
(281, 59, 'Surveying', 'B.C. Punmia', 'civil', 'old', 'Concrete Technology: Theory and Practice', 'M. S. Shetty', 'civil', 1, '2019-12-15 22:34:43', '2019-12-15 22:35:18'),
(282, 45, 'A People\'s History of the United States', 'Howard Zinn', 'historical', 'old', 'Slade House', 'David Mitchell', 'drama', 0, '2019-12-15 20:07:46', '2019-12-15 20:07:46'),
(283, 61, 'The Little Stranger', 'Sarah Waters', 'drama', 'old', 'Outliers', 'Malcolm Gladwell', 'drama', 0, '2019-12-15 22:52:10', '2019-12-15 22:52:10'),
(284, 14, 'Say Nothing: A True Story of Murder and Memory in Northern Ireland', 'Patrick Radden Keefe', 'political', 'old', 'The Righteous Mind: Why Good People Are Divided by Politics and Religion', 'Jonathan Haidt', 'political', 0, '2019-12-13 07:21:45', '2019-12-13 07:21:45'),
(285, 15, 'The Java Programming Language', 'James Gosling, Ken Arnold, David Holmes', 'cse', 'old', 'Math with Bad Drawings: Illuminating the Ideas That Shape Our Reality', 'Ben Orlin', 'math', 0, '2019-12-13 08:47:01', '2019-12-13 08:47:01'),
(286, 10, 'Fundamentals of Database Systems', 'Ramez Elmasri', 'cse', 'old', 'Discrete mathematical structures', 'Bernard Kolman', 'cse', 0, '2019-12-15 12:59:45', '2019-12-15 12:59:45'),
(287, 23, 'University Physics', 'Hugh D. Young', 'physics', 'old', 'Foundations of Electromagnetic Theory', 'Frederick J. Milford and John R. Reitz', 'physics', 0, '2019-12-15 14:00:36', '2019-12-15 14:00:36'),
(288, 24, 'Molecules at an Exhibition', 'John Emsley', 'chemistry', 'old', 'Physical Chemistry', 'Peter Atkins', 'chemistry', 0, '2019-12-15 14:12:08', '2019-12-15 14:12:08'),
(289, 30, 'Advanced Programming in the Unix Environment', 'W. Richard Stevens', 'cse', 'new', 'Software Engineering: A Practitioner\'s Approach', 'Roger S. Pressman', 'cse', 0, '2019-12-15 18:27:13', '2019-12-15 18:27:13'),
(290, 33, 'Calculus on Manifolds', 'Michael Spivak', 'math', 'old', 'Linear algebra done right', 'Sheldon Axler', 'math', 0, '2019-12-15 18:46:19', '2019-12-15 18:46:19'),
(291, 35, 'Methods of Quantum Field Theory in Statistical Physics', 'Alexei Alexeyevich Abrikosov, I. E. Dzyaloshinski, and Lev Gor\'kov', 'physics', 'old', 'Mathematics for physical chemistry', 'Donald A. McQuarrie', 'chemistry', 0, '2019-12-15 19:01:29', '2019-12-15 19:01:29'),
(292, 36, 'Electric machines', 'Mulukutla S Sarma', 'eee', 'old', 'Transmission and Distribution Electrical Engineering', 'Brian Hardy and Colin Bayliss', 'eee', 0, '2019-12-15 19:08:25', '2019-12-15 19:08:25'),
(293, 37, 'Digital Systems: Principles and Applications', 'Ronald J Tocci', 'cse', 'old', 'Discrete mathematical structures', 'Bernard Kolman', 'cse', 0, '2019-12-15 19:20:35', '2019-12-15 19:20:35'),
(294, 39, 'Applying UML and patterns', 'Craig Larman', 'cse', 'old', 'Software Engineering: A Practitioner\'s Approach', 'Roger S. Pressman', 'cse', 0, '2019-12-15 19:26:49', '2019-12-15 19:26:49'),
(295, 20, 'Chemistry: The Central Science', 'H. Eugene LeMay Jr. and Theodore L. Brown', 'chemistry', 'new', 'Chemistry in Focus: A Molecular View of Our World', 'Nivaldo J. Tro', 'chemistry', 0, '2019-12-15 13:18:19', '2019-12-15 13:18:19'),
(296, 21, 'Pather Panchali', 'Bibhutibhushan Bandyopadhyay', 'drama', 'old', 'Lalsalu', 'Syed Waliullah', 'drama', 0, '2019-12-15 13:38:43', '2019-12-15 13:38:43'),
(297, 23, 'University Physics', 'Hugh D. Young', 'physics', 'old', 'Foundations of Electromagnetic Theory', 'Frederick J. Milford and John R. Reitz', 'physics', 0, '2019-12-15 14:00:36', '2019-12-15 14:00:36'),
(298, 41, 'The Casual Vacancy', 'J. K. Rowling', 'drama', 'old', 'The Burgess Boys', 'Elizabeth Strout', 'drama', 0, '2019-12-15 19:42:57', '2019-12-15 19:42:57'),
(299, 41, 'Slade House', 'David Mitchell', 'drama', 'old', 'We Are Not Ourselves: A Novel', 'Matthew Thomas', 'drama', 0, '2019-12-15 19:46:56', '2019-12-15 19:46:56'),
(300, 43, 'The Cuckoo\'s Calling', 'J. K. Rowling', 'drama', 'old', 'A People\'s History of the United States', 'Howard Zinn', 'historical', 0, '2019-12-15 19:57:09', '2019-12-15 19:57:09'),
(301, 55, 'Data & Computer Communications', 'William Stallings', 'cse', 'old', 'Object Oriented Programming With C Plus Plus', 'Balaguruswamy', 'cse', 0, '2019-12-15 21:45:52', '2019-12-15 21:45:52'),
(302, 58, 'Surveying and Levelling', 'N. N. Basak', 'civil', 'old', 'Formulas for Stress and Strain', 'Richard G. Budynas', 'civil', 0, '2019-12-15 22:25:13', '2019-12-15 22:25:13'),
(303, 76, 'Differential Equations with Applications and Historical Notes', 'George F. Simmons', 'math', 'old', 'Calculus on Manifolds', 'Michael Spivak', 'math', 0, '2019-12-16 01:00:16', '2019-12-16 01:00:16'),
(304, 78, 'The Good Guy', 'Dean Koontz', 'drama', 'old', 'Searching for Sylvie Lee: A Novel', 'Jean Kwok', 'drama', 0, '2019-12-16 01:10:33', '2019-12-16 01:10:33'),
(305, 79, 'Analysis for Applied Mathematics', 'Elliott Ward Cheney Jr.', 'math', 'old', 'Methods of applied mathematics', 'Francis B. Hildebrand', 'math', 0, '2019-12-16 01:16:38', '2019-12-16 01:16:38'),
(306, 86, 'The Dot', 'Peter H. Reynolds', 'drama', 'old', 'The Circle', 'Dave Eggers', 'drama', 0, '2019-12-16 02:09:06', '2019-12-16 02:09:06'),
(307, 87, 'Principles of Package Design: Creating Reusable Software Components', 'Matthias Noback', 'cse', 'old', 'Programming Pearls', 'Jon Bentley', 'cse', 0, '2019-12-16 02:14:21', '2019-12-16 02:14:21'),
(308, 89, 'Coders at Work: Reflections on the Craft of Programming', 'Peter Seibel', 'cse', 'old', 'Schaum\'s Easy Outlines Applied Physics', 'Arthur Beiser', 'physics', 0, '2019-12-16 02:22:51', '2019-12-16 02:22:51'),
(309, 90, 'Botany for Gardeners: An Introduction and Guide', 'Brian Capon', 'biology', 'old', 'Biology of plants', 'Peter H. Raven', 'biology', 0, '2019-12-16 02:27:56', '2019-12-16 02:27:56'),
(310, 91, 'The Encyclopedia of Psychoactive Plants: Ethnopharmacology and Its Applications', 'Christian Rätsch', 'biology', 'old', 'Plant Systematics: A Phylogenetic Approach', 'Walter Stephen Judd', 'biology', 0, '2019-12-16 02:32:05', '2019-12-16 02:32:05'),
(311, 96, 'Molecules at an Exhibition', 'John Emsley', 'chemistry', 'old', 'Advanced Inorganic Chemistry: A Comprehensive Text', 'F. Albert Cotton and Geoffrey Wilkinson', 'chemistry', 0, '2019-12-16 03:22:41', '2019-12-16 03:22:41'),
(312, 98, 'Computational Science and Engineering', 'Gilbert Strang', 'math', 'old', 'A Dynamical Systems Theory of Thermodynamics', 'Wassim Michael Haddad', 'math', 0, '2019-12-16 03:32:44', '2019-12-16 03:32:44'),
(315, 111, 'PHP for Beginners', 'Md. Riaz Khan', 'cse', 'old', 'Data structures and Algoritham', 'Md. Touhid Alam', 'cse', 1, '2021-05-30 04:10:07', '2021-05-30 05:12:01'),
(316, 112, 'Data structures and Algoritham', 'Md. Touhid Alam', 'cse', 'new', 'PHP for Beginners', 'Md. Riaz Khan', 'cse', 1, '2021-05-30 04:14:47', '2021-05-30 05:12:01'),
(317, 113, 'Learn C++', 'Md. Riaz Khan', 'cse', 'old', 'PHP for Beginners', 'Md. Riaz Khan', 'cse', 0, '2021-05-30 04:20:35', '2021-05-30 04:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `emailAddress`, `password`, `address`, `phoneNumber`, `districtName`, `created_at`, `updated_at`) VALUES
(7, 'Pias', 'Ahmed', 'pias@mail.com', '$2y$10$7E4V.KP3FkJlX3S8MCCIOuXjDXFjb8Uy83SjFnARow5tuSUMwJYDy', 'Bashundhara', '47564876325', 'Dhaka', '2019-12-05 23:49:59', '2019-12-05 23:49:59'),
(8, 'imam', 'hossain', 'i.hossain@mail.com', '$2y$10$uzrH2qLh3iqb4bRLEGAOPOsbbSf3MqF777VPpwRNQYP/yXTTqgRga', 'kuril', '69754623657', 'Dhaka', '2019-12-07 11:14:33', '2019-12-07 11:14:33'),
(9, 'toufiq', 'hossain', 'toufiq@mail.com', '$2y$10$q4SxYkZx3QBKYbpvqexc5e.0I9xDCyTrdntu.Lae0biJFnyeruWuO', 'bashundhara', '87542168571', 'Dhaka', '2019-12-07 11:16:01', '2019-12-07 11:16:01'),
(10, 'Rafiq', 'Hossain', 'rafiq@mail.com', '$2y$10$2IoYVpJLrNnLy/faJyyWoehimEMcEjjPZf1xsb3dobMO7U6Hbrtma', 'bashundhara', '57893215876', 'Dhaka', '2019-12-13 06:19:25', '2019-12-13 06:19:25'),
(11, 'kamal', 'rahman', 'kamal@mail.com', '$2y$10$SvGypQWFBfw5u.4te.oROu9.kJP2eGBHdoo9G.PhGiAsjLUs/SChu', 'baridhara', '8754235689', 'Dhaka', '2019-12-13 06:20:53', '2019-12-13 06:20:53'),
(12, 'mishok', 'ahmed', 'mishok@gmail.com', '$2y$10$JmAjf9d8ONZRQM00gAh45Ov0q/7csy/qzUxPB.90LspNM/JRQjOoq', 'mohakhali', '423658795125', 'Dhaka', '2019-12-13 06:23:03', '2019-12-13 06:23:03'),
(13, 'delwar', 'hosen', 'delwar@mail.com', '$2y$10$7eoSmxWK2WOP6I32rPzVZeQwEqSgHG3fTEG31n7qua/k9u84zwNBK', 'bashundhara', '45697215687', 'Dhaka', '2019-12-13 06:24:08', '2019-12-13 06:24:08'),
(14, 'amit', 'baroi', 'amit@mail.com', '$2y$10$87xZdBRjb9tzO2DKOkyi0OrrE7IEaegock1Sdwl5YrVuyvXF5vFuq', 'farmgate', '426587932158', 'Dhaka', '2019-12-13 06:25:26', '2019-12-13 06:25:26'),
(15, 'sohan', 'pathan', 'sohan@gmail.com', '$2y$10$SMSjooOckfvod.66AxVVLeZjS5w1b6O5oM4g4SPQ9KlG06A.Z7q.K', 'tejgao', '46857921587', 'Dhaka', '2019-12-13 06:27:06', '2019-12-13 06:27:06'),
(16, 'Rakib', 'Alam', 'rakib@mail.com', '$2y$10$0pD4jvQI.as2YVpZ/GXupu8zmKrTf0VxQlftPRZ2YWtcOPay3wepW', 'dhanmondhi', '45698712568', 'Dhaka', '2019-12-13 06:28:58', '2019-12-13 06:28:58'),
(17, 'Rashed', 'Ahmed', 'rashed@mail.com', '$2y$10$v9wgxvLIoXm3dH7Wa5AGB.B4rixfk.RQssLFCR16XDAsU.SZlANMO', 'Motijheel', '56987452158', 'Dhaka', '2019-12-15 02:40:04', '2019-12-15 02:40:04'),
(18, 'Kamal', 'Khan', 'm.km@mail.com', '$2y$10$enPab9f5alnHlCh/0IaC1OUZDKNhT2zbJon.njocvzQl7eCt4llPO', 'Comilla, Bangladesh', '4215789325', 'Comilla', '2019-12-15 13:03:30', '2019-12-15 13:03:30'),
(19, 'Faaiza', 'Akter', 'faa.iza@mail.com', '$2y$10$tl6/VochhQfGD/9078J1qeDe4xlB4y2eAUHAjkzzYEExcsJb4VWYK', 'Savar,Bangladesh', '548721568', 'Savar', '2019-12-15 13:11:37', '2019-12-15 13:11:37'),
(20, 'Masud', 'Islam', 'masud@mail.com', '$2y$10$mVBKqsol5BLRHcxApxICNe44o0a.4rpoDLQEVELhTBFInetLQ9/YK', 'Dhaka, Bangladesh', '4568712587', 'Dhaka', '2019-12-15 13:16:45', '2019-12-15 13:16:45'),
(21, 'MD Jamal', 'Miah', 'ja.mal@mail.com', '$2y$10$sSuloEqPJfgRJ0jHA1U0Sey7odnnC133Ux1i.cejdyZKYqqveNOuK', 'Gazipur,Bangladesh', '3574985269', 'Gazipur', '2019-12-15 13:35:09', '2019-12-15 13:35:09'),
(22, 'Munni', 'Akter', 'mu.nni@mail.com', '$2y$10$mD5cfhIUq6x8dzhTw3F39OjGYbGzm2DHG2xNIKw3zCWqw.Ztp6te.', 'Barisal,Bangladesh', '4857269872', 'Barisal', '2019-12-15 13:40:56', '2019-12-15 13:40:56'),
(23, 'Fahim', 'Miah', 'fa.him@mail.com', '$2y$10$ud2779Dqhb0rnxsJ3ynKxeFFZ6gZ0ziqWToS5wjp3vHyrQrgIrbeO', 'Narayanganj,Bangladesh', '8579452583', 'Barisal', '2019-12-15 13:47:15', '2019-12-15 13:47:15'),
(24, 'Rimu', 'Ahmed', 'ri.muahmed@mail.com', '$2y$10$Im3dbCCKe36Pcvuc89R36O2LxNLdSja8TVx4MSEioDIS/XvSH1rvi', '1/1, Dhaka', '58742678492', 'Dhaka', '2019-12-15 14:06:21', '2019-12-15 14:06:21'),
(25, 'Tamim', 'Khan', 'ta.mimkhan@mail.com', '$2y$10$oKC7Am67QfyrxOGTDC.UiOlqh6ZXvnP6bVblonxhVIFezdIvS3lB2', 'Dhaka,Bangladesh', '36754898452', 'Dhaka', '2019-12-15 14:13:27', '2019-12-15 14:13:27'),
(26, 'Jasmin', 'Haque', 'jas.min@mail.com', '$2y$10$./eII3fgv7CZ2xz52YVZx.tWTdYLHzl4.k.5v2PdRizmuFM.kNLKW', 'Dhaka,Bangladesh', '36578458958', 'Dhaka', '2019-12-15 14:17:26', '2019-12-15 14:17:26'),
(27, 'Nawaf', 'Ahmed', 'na.wafahmed@mail.com', '$2y$10$2InBEy6jh.RYEQA/RH.dLeTGyn1UzbmVxMnOoWTCVxiaHg8QeRwgi', 'Savar, Bangladesh', '55897542156', 'Savar', '2019-12-15 14:22:57', '2019-12-15 14:22:57'),
(28, 'Fahad', 'Alam', 'Fah.adalam@mail.com', '$2y$10$0A1FavHh4MmT9m6b03w/N.4km2tjYD.KmCvM66ClndELE7FfeBpRi', 'Dhaka', '8965745215', 'Dhaka', '2019-12-15 14:26:45', '2019-12-15 14:26:45'),
(29, 'Rubel', 'Hossain', 'ru.bel@mail.com', '$2y$10$l4nMi019n6mcwbkIv0UI8e8wRy4aFcdqZ.vmGlC2Ri4iUFjLKlBY.', 'Gazipur', '42569871236', 'Gazipur', '2019-12-15 14:39:55', '2019-12-15 14:39:55'),
(30, 'MD. Sabbir', 'Jamil', 'sabbir.jamil@mail.com', '$2y$10$ihyrKcXIM55J59hb7zEyqO1UEfvUyueIbG4gClz.GxSUd3O1kYHAO', 'Savar, Bangladesh', '58746258968', 'Savar', '2019-12-15 18:25:15', '2019-12-15 18:25:15'),
(31, 'Riad', 'Murshad', 'ri.admurshad@mail.com', '$2y$10$oxoCREmUWAh/xyDz9pTYv.AE.nxFw7V821BJf.L4/rHUrhpvwvcPK', 'Dhaka, Bangladesh', '42879524866', 'Dhaka', '2019-12-15 18:33:23', '2019-12-15 18:33:23'),
(32, 'Siam', 'Alam', 'si.amalam@mail.com', '$2y$10$SfZkD1U3uG6uekI.c7tzGOLtC9aB.MKge1i.iaUMAhSRHwn3WlXIK', 'Naraynganj, Dhaka', '957632458', 'nar', '2019-12-15 18:38:49', '2019-12-15 18:38:49'),
(33, 'Saiful', 'Islam', 'sa.iful@mail.com', '$2y$10$tY6usYFEcjLWorlj1oHwTuxV6KRjY.EA7AIGlvKCYANwTSUvqYnzO', 'Comilla', '58741369852', 'Comilla', '2019-12-15 18:44:03', '2019-12-15 18:44:03'),
(34, 'Anawar', 'Aziz', 'an.awaraziz@mail.com', '$2y$10$VF/OqiTg6JF905TzbrlRSew2F9cLhxpi/1pcdo/76miHlsmpN/.O2', 'Dhaka, Bangladesh', '87456325894', 'Dhaka', '2019-12-15 18:54:13', '2019-12-15 18:54:13'),
(35, 'Rajon', 'Islam', 'ra.jonislam@mail.com', '$2y$10$VVN2c8saRQ17isEDzjJ/g.lYqrZQknjMrVyeEoWcnjTMrATQXpem.', 'Narayanganj, Bangladesh', '47851236987', 'nar', '2019-12-15 18:59:26', '2019-12-15 18:59:26'),
(36, 'Jayed', 'Kabir', 'ja.yedkabir@mail.com', '$2y$10$XCIJwCgPmmfGCoStMjv.B.1qo4YZkGXnRJWEBXHvJU/ij9tnWRSAS', 'Barisal', '754862687', 'Barisal', '2019-12-15 19:05:30', '2019-12-15 19:05:30'),
(37, 'Saif', 'Uddin', 'sa.ifuddin@mail.com', '$2y$10$nIj50EG/IPookdpIDEyObO0ULXwCdCZrV7gfc2Ggz1tQRAR80c/fm', 'Dhaka, Bangladesh', '48752168968', 'Dhaka', '2019-12-15 19:11:19', '2019-12-15 19:11:19'),
(38, 'Mehdi', 'Hasan', 'me.hdihasan@mail.com', '$2y$10$yFo7X3Xv2vxfZxQWJaYh/uba94UIV3dEtO.pSbSmqA0haFtahP7NK', 'Dhaka, Bangladesh', '57842136985', 'Dhaka', '2019-12-15 19:21:52', '2019-12-15 19:21:52'),
(39, 'Yesmin', 'Haque', 'yes.minhaque@mail.com', '$2y$10$cbqSCSUsfEAdJI0A0Aep..ytOAAfHEtrX9/hK9lfW1Fni2Aapa6eS', 'Barisal', '58746982136', 'Barisal', '2019-12-15 19:25:26', '2019-12-15 19:25:26'),
(40, 'Imrul', 'Chowdhury', 'im.rulchowdhury@mail.com', '$2y$10$hIFodaftCIt8EeXMOiqGJedlkGcZByNO73/u72G61Nuqxq1x4YBGy', 'Savar, Bangladesh', '32587469821', 'Savar', '2019-12-15 19:34:39', '2019-12-15 19:34:39'),
(41, 'Aminul', 'Islam', 'am.inulislam@mail.com', '$2y$10$ikt0wmnHjRDro7n/rn2kC.z9fDwV1/xmd1ruGTaj3PMG789NZv6aO', 'Dhaka, Bangladesh', '68426578123', 'Dhaka', '2019-12-15 19:38:39', '2019-12-15 19:38:39'),
(42, 'Mustafizur', 'Alam', 'mus.tafuzur@mail.com', '$2y$10$TvEtwp/0qJt49H0rI276rOqOixtyODGd/XdsSV.msITY0dNEfNToi', 'Savar, Bangladesh', '48571257963', 'Savar', '2019-12-15 19:48:48', '2019-12-15 19:48:48'),
(43, 'Mominul', 'Haque', 'm.mominulhaque@mail.com', '$2y$10$AZyHBiG/yrsIW20ZrUEuEuOaLAGJG2Ca/IIyTtdpwPJLtVq/Q/n3.', 'Gazipur', '245876218', 'Gazipur', '2019-12-15 19:55:21', '2019-12-15 19:55:21'),
(44, 'Jarin', 'Jara', 'Ja.rinjara@mail.com', '$2y$10$GA/SdLFnMzPSj.P2X/M3N.FtVwjtLaNeI4KnQQNtqUCw17aEgX7J.', 'Narayanganj, Bangladesh', '68427215983', 'nar', '2019-12-15 20:02:14', '2019-12-15 20:02:14'),
(45, 'Akib', 'Ahmed', 'akib@mail.com', '$2y$10$4sohx7RHoH9ufNxGcRDAYeH3vTyMoNYKnxfkuUkuUcpNfMTyLu1yK', 'Dhaka, Bangladesh', '87452156325', 'Dhaka', '2019-12-15 20:05:22', '2019-12-15 20:05:22'),
(46, 'Nafiz', 'Riad', 'na.fizriad@mail.com', '$2y$10$3WAaEMbIGqR7PWKIO1RvT.FTbR/debIcrzJf.oWG2RsmciO3N8v9m', 'Barisal, Bangladesh', '6845215871', 'Barisal', '2019-12-15 20:12:37', '2019-12-15 20:12:37'),
(47, 'Faruk', 'Jamil', 'fa.rukjamil@mail.com', '$2y$10$2D2Pu6AKu.9QtPwCMevQguV1oikWr.Xcycw4D6.Rrvz.vfS5KWtlO', 'Dhaka, Bangladesh', '365874215682', 'Dhaka', '2019-12-15 20:17:41', '2019-12-15 20:17:41'),
(48, 'Nayeem', 'Abir', 'n.yeemabir@mail.com', '$2y$10$thu6zhNWDKiXnpZy0MJ9uuVZw./v5Q5ndQlt9Pm.BJ0YL.hKcMR0y', 'Narayanganj, Bangladesh', '98542687125', 'nar', '2019-12-15 20:21:09', '2019-12-15 20:21:09'),
(49, 'MD Sazid', 'Khan', 'm.sazid@mail.com', '$2y$10$swTVIUi0SM6vswRESghjFuPU4L5OdgXOvtf5svpiRZqjsNqnNNcri', 'Dhaka, Bangladesh', '2457821569', 'Dhaka', '2019-12-15 20:57:23', '2019-12-15 20:57:23'),
(50, 'Rakib', 'Uddin', 'r.rakibuddin@mail.com', '$2y$10$ZPODUZAZUaYcUU8ne1Y2TuXeXkubZhe2QXq/OSiaVoNSPbYbHwfMu', 'Comilla', '785421698', 'Comilla', '2019-12-15 21:03:01', '2019-12-15 21:03:01'),
(51, 'riaz', 'Kamal', 'k.riazkamal@mail.com', '$2y$10$Jkln53gW3p11I2aoRpv26O3WANz8EF113hdnKM1uDpuGq6LABM.Xm', 'Gazipur', '845721698', 'Gazipur', '2019-12-15 21:06:02', '2019-12-15 21:06:02'),
(52, 'Tahsin', 'Islam', 't.tahsinislam@mail.com', '$2y$10$uwePBb40JP/hJ9o.xhxCd.aC4WIQKL70jpEHh045gvPLe4FxWKJVi', 'Narayanganj, Bangladesh', '5874624868', 'nar', '2019-12-15 21:15:43', '2019-12-15 21:15:43'),
(53, 'Shahadat', 'Hossain', 's.shahadat@mail.com', '$2y$10$eljTHyy1u9HeweUmhia6I.0naH3hZzp9U8DNWNDZHJ60UdzMzmEty', 'Dhaka, Bangladesh', '48751269885', 'Dhaka', '2019-12-15 21:22:15', '2019-12-15 21:22:15'),
(54, 'Maher', 'Jaman', 'j.jamanmaher@mail.com', '$2y$10$p.S5hojchFJNISY/SwKUDe.ocI2wW1ikQ3cBvCTopodTwCABFsYFu', 'Savar, Bangladesh', '87549325874', 'Savar', '2019-12-15 21:31:58', '2019-12-15 21:31:58'),
(55, 'Asif', 'Murshad', 'as.asifmurshad@mail.com', '$2y$10$RAjAx98tZkBCFyUI4YIDx.VusRjMcIXuZlPxYpUdsnVEd3CcgdOsC', 'Barisal, Bangladesh', '245879258', 'Barisal', '2019-12-15 21:44:21', '2019-12-15 21:44:21'),
(56, 'Mahbub', 'Chowdhury', 'mahbub@mail.com', '$2y$10$YHGaHrFDXcJKgyX9uLOx3uuMhnJ5QqMlyjj6LT6vsY29yDC1rdjdy', 'Dhaka, Bangladesh', '8576425975', 'Dhaka', '2019-12-15 21:50:05', '2019-12-15 21:50:05'),
(57, 'Ratul', 'Islam', 'rt.ratulislam@mail.com', '$2y$10$999IKO0mPaZe5plB.JXEDOR2gqJadveZbEU43/o.wW42JBzrEsTvK', 'Comilla', '87542168524', 'Comilla', '2019-12-15 21:54:35', '2019-12-15 21:54:35'),
(58, 'Emon', 'Khan', 'e.emonkhan@mail.com', '$2y$10$w2wXbOwNZKtLJaCwEiAW1eQCWdTX.ptML4/RQL2/wCFnXTBs6TUHu', 'Dhaka, Bangladesh', '875492357', 'Dhaka', '2019-12-15 22:23:45', '2019-12-15 22:23:45'),
(59, 'Rifat', 'Alam', 'ri.fatalam@mail.com', '$2y$10$v7B/tJQF4Tv/fGBWkBh.De/i.UHNnzNuJrKcfvC5Bk6yuZYuztTGe', 'Savar, Bangladesh', '356848257', 'Savar', '2019-12-15 22:33:25', '2019-12-15 22:33:25'),
(60, 'Firoz', 'Kamal', 'f.firoz@mail.com', '$2y$10$lts3kKJ9PwcIUHHAO8UOwup4d6W5FU4fsl/unL2dh.aR1wq.Sni3e', 'Dhaka, Bangladesh', '985487523', 'Dhaka', '2019-12-15 22:41:04', '2019-12-15 22:41:04'),
(61, 'Aziz', 'Safayet', 'az.aziz@mail.com', '$2y$10$JI/coQfpnmwz02azQk.UzO6Iw/PD3nan73PPtnfb2Juz2ORssrslm', 'Gazipur, Bangladesh', '5874682157', 'Gazipur', '2019-12-15 22:45:45', '2019-12-15 22:45:45'),
(62, 'Mredul', 'Khan', 'mre.dulkhan@mail.com', '$2y$10$5aTEOtDLY.MqIWMROWuqIOyg57dkvJguEj7eKYkEVaIJDBUmt4huq', 'Savar, Bangladesh', '2578468542', 'Savar', '2019-12-15 22:53:35', '2019-12-15 22:53:35'),
(63, 'Nasrin', 'Ahmed', 'nasrin@mail.com', '$2y$10$JHbKgVFHIumk1vr2XLxFv.0baUUexUykRyPRO3d5XXPbjhYuhyVta', 'Dhaka, Bangladesh', '57842568752', 'Dhaka', '2019-12-15 22:58:16', '2019-12-15 22:58:16'),
(64, 'Rakib', 'Khan', 'rakib@mail.com', '$2y$10$PbPxKL9dIBc8LVcemW/LNubnBDlBI7oc9BjC8f5IUNOXqg6I4H4zC', 'Dhaka, Bangladesh', '4875156875', 'Dhaka', '2019-12-15 23:09:08', '2019-12-15 23:09:08'),
(65, 'Sumiya', 'Jaman', 's.sumiya@mail.com', '$2y$10$vn0j75UPbyBxbIhy1gzwDOJtxpLyWDPgiOxdByOqE5eHPBow/c.GC', 'Dhaka, Bangladesh', '68754812579', 'Dhaka', '2019-12-15 23:18:42', '2019-12-15 23:18:42'),
(66, 'Mehjabin', 'Khatun', 'meh.jabinkhatun@mail.com', '$2y$10$.3TZXaMFfIgFDBymd7vFwucjgLD.NtdQ6BaMK1ir7RGo2/GavHPLW', 'Barisal, Bangladesh', '5874315784', 'Barisal', '2019-12-15 23:32:58', '2019-12-15 23:32:58'),
(67, 'Nasrin', 'Akter', 'ns.nasrin@mail.com', '$2y$10$l2o9oSGIrrd.S24kevRA1ulGHPZp9JQgzgCN9dDevWMuFlURmcrzS', 'Savar, Bangladesh', '5487412685', 'Savar', '2019-12-15 23:35:54', '2019-12-15 23:35:54'),
(68, 'Zunayed', 'Islam', 'zu.nayed@mail.com', '$2y$10$K0z5kX7j5um6nFuLqWn92us6bXDY8eAI2ZNOCrUhu8Y7VSVLsJvwW', 'Barisal, Bangladesh', '58726485252', 'Barisal', '2019-12-15 23:52:38', '2019-12-15 23:52:38'),
(69, 'Zayan', 'Islam', 'za.yanislam@mail.com', '$2y$10$IlSnPYacFTcRGHRuxf4B0OVpQiqk3a2kY/8ssxxa525gMXTfSJnQG', 'Savar, Bangladesh', '24587932546', 'Savar', '2019-12-15 23:57:59', '2019-12-15 23:57:59'),
(70, 'Ripon', 'mahbub', 'ri.ponmahbub@mail.com', '$2y$10$94ZF2i4oBuC4Qc/1aqiuBeKxdBwqnqwWiJL8GKRjELbYDy.dYMY6S', 'Dhaka, Bangladesh', '56874125789', 'Dhaka', '2019-12-16 00:01:36', '2019-12-16 00:01:36'),
(71, 'Karim', 'Rashid', 'karim.rinrashid@mail.com', '$2y$10$/d4JEr3GAT8othjDcKoKQeLUCQxuLe8qd3Eu2zJ4gV37EzKtCtkVG', 'Dhaka, Bangladesh', '24587936985', 'Dhaka', '2019-12-16 00:08:52', '2019-12-16 00:08:52'),
(72, 'Nazmul', 'Bashir', 'nazmul.nazmulbashir@mail.com', '$2y$10$TlGJpoz4qAf0waftce5u0.gWUXHiaGQpbfALJcewZJcMxNRlEJl5m', 'Dhaka, Bangladesh', '2548854257', 'Dhaka', '2019-12-16 00:13:52', '2019-12-16 00:13:52'),
(73, 'Hasan', 'Khan', 'ha.sankhan@mail.com', '$2y$10$nCH5XfgJ/nsAL1wvF86aBeocDORYmkl9dPq05HrdWr1XoNEwAFh6.', 'Savar, Bangladesh', '266874587', 'Savar', '2019-12-16 00:24:00', '2019-12-16 00:24:00'),
(74, 'Zubayer', 'Hasan', 'zu.bayerhasan@mail.com', '$2y$10$AUZBDrKVsfYr15.jJmnwAu673I/20OMcHdH6u69wc5AdbpxldUGJC', 'Barisal', '8745126877', 'Barisal', '2019-12-16 00:27:25', '2019-12-16 00:27:25'),
(75, 'Jahid', 'islam', 'ja.hidislam@mail.com', '$2y$10$iSM5sItfxViQXk80UxjNXO8udXn/glEbEWgzz.YSRYulAgG5iBooq', 'Savar', '2557834581', 'Savar', '2019-12-16 00:32:38', '2019-12-16 00:32:38'),
(76, 'Tanvir', 'mahmud', 'tan.virmahmud@mail.com', '$2y$10$exPzINJLN6yumkhrgB86HuVvJ1TAqpG/FRyEwvn5mEJ5RZMtlZRw6', 'Comilla', '2357846812', 'Comilla', '2019-12-16 00:54:37', '2019-12-16 00:54:37'),
(77, 'Abir', 'Chowdhury', 'ab.irchowdhury@mail.com', '$2y$10$uNZUABF7pEyEl4zAM.ovQu9Vhf8.VPJy77HjHOdKSwwq2lGQDeoDa', 'Savar, Bangladesh', '958712547', 'Savar', '2019-12-16 01:01:51', '2019-12-16 01:01:51'),
(78, 'Reza', 'Khan', 're.zakhan@mail.com', '$2y$10$VuNJImJjUriJ6JvxgoazKONdfitE/ZEFEgRKQtxmPFWgwYCtegAQO', 'Savar, Bangladesh', '2684527891', 'Savar', '2019-12-16 01:06:07', '2019-12-16 01:06:07'),
(79, 'Masud', 'Hasan', 'masud.masudhasan@mail.com', '$2y$10$V0DRguknT7Trif4EvgH0fe8wyU8bdMusMofOahqy7gUoW8v8Yu40q', 'Dhaka, Bangladesh', '6845218758', 'Dhaka', '2019-12-16 01:11:52', '2019-12-16 01:11:52'),
(80, 'Rashed', 'anawar', 'ra.shed@mail.com', '$2y$10$aWeE0nu0DMI7F7txQHtGjuwKp1CKaRKKLLFd/wy3LSKB.JDfFlBp2', 'Comilla', '257846921', 'Comilla', '2019-12-16 01:17:41', '2019-12-16 01:17:41'),
(81, 'Habib', 'khan', 'habib@mail.com', '$2y$10$9tvwh0fAwvl1Dr.h9FmsWu9kf7C3C9flw3YIGr6xj.Ep/edFSYzf.', 'Dhaka, Bangladesh', '2685479225', 'Dhaka', '2019-12-16 01:42:05', '2019-12-16 01:42:05'),
(82, 'Habib', 'Uddin', 'ha.bibuddin@mail.com', '$2y$10$u5mFCYKETEo9Oep2m6jfouPNT1/EzKlshSux5AjU25lDiFgpEVB2.', 'Comilla, Bangladesh', '258764892', 'Comilla', '2019-12-16 01:49:17', '2019-12-16 01:49:17'),
(83, 'Niloy', 'Mahmud', 'ni.loymahmud@mail.com', '$2y$10$ylRJGZ2n9DcdJi9f1/pLXedq7AaIVMSbbgjMCWG1iXDXMd0Dlk./W', 'Comilla, Bangladesh', '2558746156', 'Comilla', '2019-12-16 01:54:59', '2019-12-16 01:54:59'),
(84, 'Shoyon', 'Islam', 'sh.oyonislam@mail.com', '$2y$10$vjQUjxEZ9CG6EsvwPuFErOhqqJdQKD64R.KFWUrzfTg9msryEgVRa', 'Dhaka, Bangladesh', '897452458', 'Dhaka', '2019-12-16 01:58:38', '2019-12-16 01:58:38'),
(85, 'Maliha', 'Mehjabin', 'maliha@mail.com', '$2y$10$ebY2STW2wtE6MZIx1iRIc.Af2kRoMU4.O8CBLwn78woLGyWLae5k2', 'Barisal, Bangladesh', '6874524878', 'Barisal', '2019-12-16 02:03:45', '2019-12-16 02:03:45'),
(86, 'Sadman', 'Hossain', 'sa.sadmanhossain@mail.com', '$2y$10$bx5C0YVEDWClq4L4SHu8/uj81fksIN9zumP7qz2n7MHxKoN0ypI.q', 'Savar, Bangladesh', '226897548', 'Savar', '2019-12-16 02:07:33', '2019-12-16 02:07:33'),
(87, 'Toimur', 'Khan', 'to.imurkhan@mail.com', '$2y$10$q7cPrrObynODNKh103RwKeQ7iuW3n.kCB2RVBPaT818JL9Zc5gqnq', 'Comilla', '2259833368', 'Comilla', '2019-12-16 02:13:11', '2019-12-16 02:13:11'),
(88, 'Nazmul', 'Ahmed', 'nazmul@mail.com', '$2y$10$voiS6DceySgz2vJ9HjIe1OYsnYJx8rRoL8EVBbvUnGnI42SqL0/u.', 'Dhaka, Bangladesh', '589742668', 'Dhaka', '2019-12-16 02:17:59', '2019-12-16 02:17:59'),
(89, 'Polash', 'Islam', 'polash@mail.com', '$2y$10$XUe9BP4LJqEjZoL33JMzuuXMXgNw3.iLa3JN5lPF1fhy9e.2T5imO', 'Savar, Bangladesh', '2548793522', 'Savar', '2019-12-16 02:19:52', '2019-12-16 02:19:52'),
(90, 'Isat', 'Kabir', 'is.isatkabir@mail.com', '$2y$10$SCsq13OM6s4K3WY7d57j0uiWQqClqml/dgz5JAHnat1EPDbhhGna2', 'Barisal, Bangladesh', '2258794535', 'Barisal', '2019-12-16 02:26:29', '2019-12-16 02:26:29'),
(91, 'Aayan', 'Khan', 'aa.aayankhan@mail.com', '$2y$10$8WAXVEQr85PPP/LQYncrHuz9qZGl5yU//f5VYJGZFasgsTFuW/CR2', 'Comilla', '55987654254', 'Comilla', '2019-12-16 02:30:17', '2019-12-16 02:30:17'),
(92, 'Afreen', 'Jahan', 'afreen@mail.com', '$2y$10$sF4j4SuF6E/.ub8eWi7xAeliS1QcBVCB3tEBVURLwSGTVV7cBXSmG', 'Savar, Bangladesh', '2259833685', 'Savar', '2019-12-16 02:34:50', '2019-12-16 02:34:50'),
(93, 'Arafat', 'Khan`', 'arafat.arafatkhan@mail.com', '$2y$10$sAEnIU3WY7hERINtBOFzjeiciJN2wO58HkMj3RkCho54.Nm6qWhCS', 'Dhaka', '6698744582', 'Dhaka', '2019-12-16 02:48:23', '2019-12-16 02:48:23'),
(94, 'Afjal', 'Kabir', 'afjal.afjalkabir@mail.com', '$2y$10$X77HaPGWzP6dk1ZmZPh44O1BTUnYPCt06cE2OWlQt.8NSSH7MHqyO', 'Comilla', '559874268', 'Comilla', '2019-12-16 02:50:35', '2019-12-16 02:50:35'),
(95, 'Udoy', 'Khan', 'udoy@gmail.com', '$2y$10$9g5j7.pDVvJD9xGXfWoTnuagTSYh3qEpdDRkCHHXpc/4xFHegL9IW', 'Dhaka', '225987658', 'Dhaka', '2019-12-16 02:52:56', '2019-12-16 02:52:56'),
(96, 'Rajin', 'Ahmed', 'ra.rajinahmed@mail.com', '$2y$10$wg0m1mGyk6lsTjzuGpU1Q./KVpqqOXxWbZEYmxgbiNUxHDe31AJ26', 'Dhaka', '22698458725', 'Dhaka', '2019-12-16 03:20:08', '2019-12-16 03:20:08'),
(97, 'Mohaiminul', 'Islam', 'mo.haiminul@mail.com', '$2y$10$F5rWz0ciTZRiun990c3UaOsflcp7tFR0NIyKGvHn6C45yrqF5KBw2', 'Savar', '2256987448', 'Savar', '2019-12-16 03:24:16', '2019-12-16 03:24:16'),
(98, 'abid', 'Khan', 'abid@mail.com', '$2y$10$swBInso0fbnFZb9tr9XnKuCwfMMA6SD5cN/iHABbgPxP4PFwHbHWm', 'Comilla', '9982576548', 'Comilla', '2019-12-16 03:30:07', '2019-12-16 03:30:07'),
(99, 'Rony', 'Islam', 'ro.ronyislam@mail.com', '$2y$10$db9LJv8cy9bgim5BepPvR.f1Zhejgm0rDj3/ZQbUqBCIdP6xYtk8O', 'Barisal', '2265874489', 'Barisal', '2019-12-16 03:34:53', '2019-12-16 03:34:53'),
(100, 'Zesmin', 'Khatun', 'z.zasminkhatun@mail.com', '$2y$10$HcSqx4RJMOrDyb9HD15TxOSgUgfyEqO3tELrFIjbsUQgZoBumzYJG', 'Dhaka', '669875421', 'Dhaka', '2019-12-16 03:39:46', '2019-12-16 03:39:46'),
(101, 'Robin', 'Chowdhury', 'ro.binchowdhury@mail.com', '$2y$10$64huwPK9wOCP8TjgyqgH2u3TEJLPz352btEBYMj0jOc9Bqo5snbLW', 'Dhaka', '88564923', 'Dhaka', '2019-12-16 03:43:04', '2019-12-16 03:43:04'),
(102, 'Tarek', 'Chowdhury', 'tarek@mail.com', '$2y$10$vI390v3WO.FUhE9RMaQTge28ESHfQkVr12WoMMcL1OplSPc/iV5u.', 'Dhaka', '22587945265', 'Dhaka', '2019-12-16 04:50:41', '2019-12-16 04:50:41'),
(103, 'Sunny', 'Talukder', 's.sunnytalukder@mail.com', '$2y$10$74/teMZeMLgyRCrjDVdOQuiHmMlUzhq5fw2ceWVxU9TWJljsYdrM.', 'Dhaka, Bangladesh', '225698756', 'Dhaka', '2019-12-16 04:57:57', '2019-12-16 04:57:57'),
(104, 'Mehedi', 'Khan', 'mehedi@mail.com', '$2y$10$.KmahPhsQLSQFSnGbbRCgOsLJ.Z6sjen4YKiP2OZv7Yxmp/EKk6EK', 'Savar, Bangladesh', '558974625', 'Savar', '2019-12-16 05:02:37', '2019-12-16 05:02:37'),
(105, 'Anika', 'Mehjabin', 'an.ikamehjabin@mail.com', '$2y$10$DKjij/LBy83xe5wZYcQTVOHIeWUWGWQ15WnvGcHDj2AZDTmMWQ5L2', 'Comilla, Bangladesh', '445879685', 'Comilla', '2019-12-16 05:08:47', '2019-12-16 05:08:47'),
(106, 'Raisa', 'Haque', 'ra.isahaque@mail.com', '$2y$10$vLmwzO3wt0HsprPBWGX1NO/2tc6DrnJ5nbi88YcBHeNyD4nU2vhuG', 'Savar, Bangladesh', '669874257', 'Savar', '2019-12-16 05:14:24', '2019-12-16 05:14:24'),
(107, 'Konika', 'Ahmed', 'ko.nikaahmed@mail.com', '$2y$10$ah.fP5/VQWJ6qT4OYtBo/eWF0sF1OxTnpX/9Q/KePNCbo7J34tVzi', 'Barisal, Bangladesh', '5874698', 'Barisal', '2019-12-16 05:18:01', '2019-12-16 05:18:01'),
(108, 'Arif', 'Khan', 'arif@mail.com', '$2y$10$jN8rWtT.SDeyjTF7T9wYQuDbo2GDXuI77puAcz8pC3SldMtFtYZmy', 'Dhaka, Bangladesh', '698745212', 'Dhaka', '2019-12-16 05:21:21', '2019-12-16 05:21:21'),
(111, 'Karim', 'Ahmed', 'md.karim@mail.com', '$2y$10$4PJhfDhXTop6uRxNtj.Aa.qqcb1WCnL/9C4Zx1wFclRkkwkXA.dsy', '1/1, New Road, New City.', '123456789', 'Dhaka', '2021-05-30 04:06:40', '2021-05-30 04:06:40'),
(112, 'Tahsin', 'Khan', 'md.rarim@mail.com', '$2y$10$hMuvvOplC.7K0Uo2oH9EI.S9sMjiq7sQ4snLKsmsr26StwLQ/uDNK', '2/2, New Road, New city.', '123789456', 'Dhaka', '2021-05-30 04:11:59', '2021-05-30 04:11:59'),
(113, 'Mustafiz', 'Ahmed', 'md.mustafiz@mail.com', '$2y$10$oJzJ/lMOao/xw8dcxWDWkubIIKlRtT6W54baZxfH/n5UoZYdxYQ12', '3/3, New Road, New City.', '456123789', 'Dhaka', '2021-05-30 04:15:56', '2021-05-30 04:15:56'),
(114, 'Miraz', 'Ahmed', 'md.miraz@mail.com', '$2y$10$SArgCb.Xl4Lc.N3k.0H78eE6XYXa1xV6XtsPbjx/bIUw1ahX8wSU2', '4/4, New Road, New City.', '12315912375', 'Dhaka', '2021-05-30 04:36:40', '2021-05-30 04:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_requests`
--

CREATE TABLE `exchange_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `centraldata_id` int(11) NOT NULL,
  `centraldata_req_id` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exchange_requests`
--

INSERT INTO `exchange_requests` (`id`, `centraldata_id`, `centraldata_req_id`, `approved`, `created_at`, `updated_at`) VALUES
(15, 105, 126, 1, '2019-12-15 22:34:56', '2019-12-15 22:35:18'),
(16, 23, 24, 0, '2019-12-16 20:20:25', '2019-12-16 20:20:25'),
(18, 316, 315, 1, '2021-05-30 05:07:27', '2021-05-30 05:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturerDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manufacturerName`, `manufacturerDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'Matador', '<p>Stationary product.</p>', 1, NULL, '2019-12-15 00:50:26'),
(2, 'University', '<p>All university books.</p>', 1, NULL, NULL),
(3, 'Swingline', '<p>Stapler company.</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_07_050406_create_categories_table', 1),
(4, '2017_02_10_090127_create_manufacturers_table', 1),
(5, '2017_02_12_034619_create_products_table', 1),
(6, '2017_02_23_071445_create_customers_table', 1),
(7, '2017_02_26_055842_create_shippings_table', 1),
(8, '2017_02_26_063811_create_orders_table', 1),
(9, '2017_02_26_063822_create_payments_table', 1),
(10, '2017_02_26_063844_create_order_details_table', 1),
(11, '2019_12_07_154810_create_centraldatas_table', 1),
(12, '2019_12_07_183606_create_exchange_requests_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `shippingId` int(11) NOT NULL,
  `orderTotal` double(10,2) NOT NULL,
  `orderStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customerId`, `shippingId`, `orderTotal`, `orderStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 200.00, 'pending', '2019-12-11 01:43:45', '2019-12-11 01:43:45'),
(2, 7, 2, 200.00, 'pending', '2019-12-11 06:22:18', '2019-12-11 06:22:18'),
(3, 7, 3, 200.00, 'pending', '2019-12-15 02:35:54', '2019-12-15 02:35:54'),
(4, 10, 4, 200.00, 'pending', '2019-12-15 10:09:23', '2019-12-15 10:09:23'),
(5, 28, 5, 100.00, 'pending', '2019-12-16 13:59:48', '2019-12-16 13:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `productName`, `productPrice`, `productQuantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Java', 200.00, 1, '2019-12-11 01:43:45', '2019-12-11 01:43:45'),
(2, 2, 1, 'Java', 200.00, 1, '2019-12-11 06:22:18', '2019-12-11 06:22:18'),
(3, 3, 1, 'Java', 200.00, 1, '2019-12-15 02:35:54', '2019-12-15 02:35:54'),
(4, 4, 1, 'Java', 200.00, 1, '2019-12-15 10:09:23', '2019-12-15 10:09:23'),
(5, 5, 4, 'Ben205', 100.00, 1, '2019-12-16 13:59:48', '2019-12-16 13:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderId` int(11) NOT NULL,
  `paymentType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `orderId`, `paymentType`, `paymentStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 'cashOnDelivery', 'pending', '2019-12-11 01:43:45', '2019-12-11 01:43:45'),
(2, 2, 'cashOnDelivery', 'pending', '2019-12-11 06:22:18', '2019-12-11 06:22:18'),
(3, 3, 'cashOnDelivery', 'pending', '2019-12-15 02:35:54', '2019-12-15 02:35:54'),
(4, 4, 'cashOnDelivery', 'pending', '2019-12-15 10:09:23', '2019-12-15 10:09:23'),
(5, 5, 'cashOnDelivery', 'pending', '2019-12-16 13:59:48', '2019-12-16 13:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `manufacturerId` int(11) NOT NULL,
  `productPrice` double(10,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productShortDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productLongDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productImage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `categoryId`, `manufacturerId`, `productPrice`, `productQuantity`, `productShortDescription`, `productLongDescription`, `productImage`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'Java', 1, 2, 200.00, 100, '<p><span style=\"color: #222222; font-family: arial, sans-serif;\">Java is a general-purpose programming language.</span></p>', '<p><span style=\"color: #222222; font-family: arial, sans-serif;\">Java is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.</span></p>', 'public/productImage/java-book.png', 1, '2019-12-11 01:42:20', '2019-12-11 01:42:20'),
(2, 'Pen', 2, 1, 10.00, 100, '<p>Well</p>', '<p>Well</p>', 'public/productImage/m_pen3.jpg', 1, '2019-12-11 01:47:24', '2019-12-11 01:47:24'),
(3, 'Eraser', 2, 1, 10.00, 100, '<p>Well</p>', '<p>Well</p>', 'public/productImage/e.jpg', 1, '2019-12-11 01:49:35', '2019-12-11 01:49:35'),
(4, 'Ben205', 1, 2, 100.00, 50, '<p><span style=\"font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif;\">Bangla</span><span style=\"color: #545454; font-family: arial, sans-serif;\">&nbsp;(Bengali: বাংলা) is the endonym (native name) of Bengal, a geographical and ethno-linguistic region in South Asia or of the Bengali language, an eastern Indo-Aryan language. It may also refer to:&nbsp;</span><span style=\"font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif;\">Bangla</span><span style=\"color: #545454; font-family: arial, sans-serif;\">&nbsp;(language) or Bengali.&nbsp;</span><span style=\"font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif;\">Bangla</span><span style=\"color: #545454; font-family: arial, sans-serif;\">&nbsp;(band), a folk-rock band from Bangladesh.</span></p>', '<p><span style=\"font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif;\">Bangla</span><span style=\"color: #545454; font-family: arial, sans-serif;\">&nbsp;(Bengali: বাংলা) is the endonym (native name) of Bengal, a geographical and ethno-linguistic region in South Asia or of the Bengali language, an eastern Indo-Aryan language. It may also refer to:&nbsp;</span><span style=\"font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif;\">Bangla</span><span style=\"color: #545454; font-family: arial, sans-serif;\">&nbsp;(language) or Bengali.&nbsp;</span><span style=\"font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif;\">Bangla</span><span style=\"color: #545454; font-family: arial, sans-serif;\">&nbsp;(band), a folk-rock band from Bangladesh.</span></p>', 'public/productImage/ben205.jpg', 0, '2019-12-11 01:53:27', '2019-12-11 01:53:27'),
(5, 'Stapler', 2, 3, 350.00, 50, '<p><span style=\"color: #333333; font-family: Verdana, Geneva, sans-serif; font-size: 16px;\">This is a plier staple. It staples 2-20 sheets and fits 26/6 and 24/6 staples. Made of high-quality material, it is sturdy and durable. The hand-grip design ensures the stapling effortless. No-jam technology eliminates irritating staple jams. Ideal for people who works in office, school warehouse and etc.</span></p>', '<p><span style=\"color: #333333; font-family: Verdana, Geneva, sans-serif; font-size: 16px;\">This is a plier staple. It staples 2-20 sheets and fits 26/6 and 24/6 staples. Made of high-quality material, it is sturdy and durable. The hand-grip design ensures the stapling effortless. No-jam technology eliminates irritating staple jams. Ideal for people who works in office, school warehouse and etc.</span></p>', 'public/productImage/stapler.png', 1, '2019-12-11 02:00:08', '2019-12-11 02:00:08'),
(6, 'Introduction to Composition', 1, 2, 200.00, 50, '<p><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Writing, Research &amp; Publishing Guides</span></p>', '<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Paragraph Essentials: A Writing Guide 1st Edition by Wong,L.</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Writing, Research &amp; Publishing Guides</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> This worktext guides students through a seven-step writing process--from generating ideas to completing a paragraph--and repeatedly demonstrates each step while covering the structure of nine types of paragraphs, including narrative, descriptive, comparison/contrast, and summary paragraphs. Questions about each stage promote paragraph analysis and critical-thinking skills.</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Cengage Learning;</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 1<sup>st</sup> edition</span></p>', 'public/productImage/eng102.jpg', 0, '2019-12-16 14:05:15', '2019-12-16 14:05:15'),
(7, 'Intermediate Composition', 1, 2, 250.00, 50, '<p><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Writing the Research Paper: A Handbook, Spiral bound Version 8th Edition by Anthony C. Winkler&nbsp;</span></p>', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Schools &amp; Teaching</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12pt; line-height: 107%; font-family: \'Times New Roman\', serif;\"> Get simple, specific guidance on writing a research paper with WRITING THE RESEARCH PAPER: A HANDBOOK, Eighth Edition. With its easy-to-digest steps that demystify the writing process, this accessible handbook gives you the tools you need to work independently to create well-constructed research papers-throughout your college career and beyond.</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Cengage Learning</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 8th edition</span></p>', 'public/productImage/Intermediate Composition.jpg', 1, '2019-12-16 14:12:26', '2019-12-16 14:12:26'),
(8, 'Introduction to Philosophy', 1, 2, 300.00, 50, '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp; A Very Short Introduction to Philosophy 1st Edition by Thomas Nagel</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Politics &amp; Social Sciences</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> In this cogent and accessible introduction to philosophy, the distinguished author of Mortal Questions and The View From Nowhere sets forth the central problems of philosophical inquiry for the beginning student. Arguing that the best way to learn about philosophy is to think about its questions directly, Thomas Nagel considers possible solutions to nine problems--knowledge of the world beyond our minds, knowledge of other minds, the mind-body problem, free will, and the basis of morality, right and wrong, the nature of death, the meaning of life, and the meaning of words.</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Oxford University Press</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 2<sup>nd</sup> edition</span></p>', '<p class=\"MsoNormal\"><strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">Name:</span></strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">&nbsp; A Very Short Introduction to Philosophy 1st Edition by Thomas Nagel</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">Category:</span></strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">&nbsp;Politics &amp; Social Sciences</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">Description:</span></strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">&nbsp;In this cogent and accessible introduction to philosophy, the distinguished author of Mortal Questions and The View From Nowhere sets forth the central problems of philosophical inquiry for the beginning student. Arguing that the best way to learn about philosophy is to think about its questions directly, Thomas Nagel considers possible solutions to nine problems--knowledge of the world beyond our minds, knowledge of other minds, the mind-body problem, free will, and the basis of morality, right and wrong, the nature of death, the meaning of life, and the meaning of words.</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">Publisher:</span></strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">&nbsp;Oxford University Press</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">Edition:</span></strong><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">&nbsp;2<sup>nd</sup>&nbsp;edition</span></p>\r\n<p><span style=\"font-size: 12pt; line-height: 17.12px; font-family: \'Times New Roman\', serif;\">&nbsp;</span></p>', 'public/productImage/Introduction to Philosophy.jpg', 1, '2019-12-16 14:16:35', '2019-12-16 14:16:35'),
(9, 'Bangladesh Culture and Heritage', 1, 2, 300.00, 50, '<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> History and Heritage: Reflections on Society Politics and Culture of South Asia By A. F. Salahuddin Ahmed</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> History</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> The eight chapters included in this small volume deal with a variety of subjects relating to history and politics, society and social thought as well as the cultural heritage of the South Asian region particularly Bangladesh. The author suggests that, despite the political divisions of 1947 and 1971, the peoples of South Asia belong to one indivisible civilisation, the product of more than a thousand years of common history. From time to time certain vested interests, external and internal, have attempted to tear apart the fabric of this unique civilisation by sowing seeds of discord and conflict which have led to untold suffering to the people of this region.</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 2<sup>nd</sup> edition</span></p>', '<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> History and Heritage: Reflections on Society Politics and Culture of South Asia By A. F. Salahuddin Ahmed</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> History</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> The eight chapters included in this small volume deal with a variety of subjects relating to history and politics, society and social thought as well as the cultural heritage of the South Asian region particularly Bangladesh. The author suggests that, despite the political divisions of 1947 and 1971, the peoples of South Asia belong to one indivisible civilisation, the product of more than a thousand years of common history. From time to time certain vested interests, external and internal, have attempted to tear apart the fabric of this unique civilisation by sowing seeds of discord and conflict which have led to untold suffering to the people of this region.</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 2<sup>nd</sup> edition</span></p>', 'public/productImage/Bangladesh Culture and Heritage.jpg', 0, '2019-12-16 14:25:29', '2019-12-16 14:25:29'),
(10, 'Matador Glory Crystal', 2, 1, 5.00, 100, '<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Features:</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">oil based gel ink</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">0.7 mm NS tip with TC ball</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">extra refilling opportunity</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">smooth and flawless writing</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">5 attractive coloring cap</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">tinted color body</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">shlef life:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 2 years</span></p>', '<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Features:</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">oil based gel ink</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">0.7 mm NS tip with TC ball</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">extra refilling opportunity</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">smooth and flawless writing</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">5 attractive coloring cap</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">tinted color body</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">shlef life:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 2 years</span></p>', 'public/productImage/Matador Glory Crystal.png', 1, '2019-12-16 14:28:24', '2019-12-16 14:28:24'),
(11, 'Programming language I', 1, 2, 350.00, 50, '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Programming in C by Stephen G. Kochan</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 267.75pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Computer Science &amp; Engineering<span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Programming in C will teach you how to write programs in the C programming language. Whether you&rsquo;re a novice or experienced programmer, this book will provide you with a clear understanding of this language, which is the foundation for many object-oriented programming languages such as C++, Objective-C, C#, and Java.</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Addison-Wesley Professional; 4 edition (August 28, 2014)</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 04<sup>th</sup> edition</span></p>', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Programming in C by Stephen G. Kochan</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 267.75pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Computer Science &amp; Engineering<span style=\"mso-tab-count: 1;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Programming in C will teach you how to write programs in the C programming language. Whether you&rsquo;re a novice or experienced programmer, this book will provide you with a clear understanding of this language, which is the foundation for many object-oriented programming languages such as C++, Objective-C, C#, and Java.</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Addison-Wesley Professional; 4 edition (August 28, 2014)</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 04<sup>th</sup> edition</span></p>', 'public/productImage/Programming language I.jpg', 1, '2019-12-16 19:54:34', '2019-12-16 19:54:34'),
(12, 'Pol 104', 1, 2, 300.00, 50, '<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> The SAGE Handbook of Governance by Mark Bevir</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Politics</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> The SAGE Handbook of Governance completes what I think of as a set of texts prepared for SAGE in an attempt to illuminate the contours and shadows of the vast literature that has arisen recently and rapidly on governance. Key Concepts in Governance (2009) used an overview of the literature on governance as a setting for discussions of 50 concepts that are prominent in discussions of governance. It is a textbook companion for students at all levels. While Key Concepts may serve as a reference work, that role falls primarily to the more extensive Encyclopedia of Governance (2007).</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> SAGE Publications Inc.</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 2<sup>nd</sup> edition</span></p>', '<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> The SAGE Handbook of Governance by Mark Bevir</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Politics</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> The SAGE Handbook of Governance completes what I think of as a set of texts prepared for SAGE in an attempt to illuminate the contours and shadows of the vast literature that has arisen recently and rapidly on governance. Key Concepts in Governance (2009) used an overview of the literature on governance as a setting for discussions of 50 concepts that are prominent in discussions of governance. It is a textbook companion for students at all levels. While Key Concepts may serve as a reference work, that role falls primarily to the more extensive Encyclopedia of Governance (2007).</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> SAGE Publications Inc.</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 324.75pt;\"><strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 2<sup>nd</sup> edition</span></p>', 'public/productImage/Pol 104.png', 1, '2019-12-16 19:56:57', '2019-12-16 19:56:57'),
(13, 'Pre-Calculus', 1, 2, 275.00, 50, '<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Precalculus (9th Edition) by Michael Sullivan</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Math</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Mike Sullivan&rsquo;s time-tested approach focuses students on the fundamental skills they need for the course: preparing for class, practicing with homework, and reviewing the concepts. In the Ninth Edition, Precalculus has evolved to meet today&rsquo;s course needs, building on these hallmarks by integrating projects and other interactive learning tools for use in the classroom or online. New Internet-based Chapter Projects apply skills to real-world problems and are accompanied by assignable MathXL exercises to make it easier to incorporate these projects into the course.</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Pearson</span></p>\r\n<p><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"> 9<sup>th</sup> edition</span></p>', '<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Precalculus (9th Edition) by Michael Sullivan</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Math</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Mike Sullivan&rsquo;s time-tested approach focuses students on the fundamental skills they need for the course: preparing for class, practicing with homework, and reviewing the concepts. In the Ninth Edition, Precalculus has evolved to meet today&rsquo;s course needs, building on these hallmarks by integrating projects and other interactive learning tools for use in the classroom or online. New Internet-based Chapter Projects apply skills to real-world problems and are accompanied by assignable MathXL exercises to make it easier to incorporate these projects into the course.</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Pearson</span></p>\r\n<p><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"> 9<sup>th</sup> edition</span></p>', 'public/productImage/Pre-Calculus.jpg', 1, '2019-12-16 19:59:28', '2019-12-16 19:59:28'),
(14, 'BIO 103 Biology I', 1, 2, 400.00, 50, '<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Visualizing Human Biology by Kathleen Anne Ireland</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Human body</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Visualizing Human Biology is a visual exploration of the major concepts of biology using the human body as the context. Students are engaged in scientific exploration and critical thinking in this product specially designed for non-science majors. Topics covered include an overview of human anatomy and physiology, nutrition, immunity and disease, cancer biology, and genetics. The aim of Visualizing Human Biology is a greater understanding, appreciation and working knowledge of biology as well as an enhanced ability to make healthy choices and informed healthcare decisions</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Wiley</span></p>\r\n<p><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"> 3<sup>rd</sup> edition</span></p>', '<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Visualizing Human Biology by Kathleen Anne Ireland</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Human body</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Visualizing Human Biology is a visual exploration of the major concepts of biology using the human body as the context. Students are engaged in scientific exploration and critical thinking in this product specially designed for non-science majors. Topics covered include an overview of human anatomy and physiology, nutrition, immunity and disease, cancer biology, and genetics. The aim of Visualizing Human Biology is a greater understanding, appreciation and working knowledge of biology as well as an enhanced ability to make healthy choices and informed healthcare decisions</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Wiley</span></p>\r\n<p><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"> 3<sup>rd</sup> edition</span></p>', 'public/productImage/Biology I.png', 1, '2019-12-16 20:01:31', '2019-12-16 20:01:31'),
(15, 'Digital Logic design', 1, 2, 250.00, 50, '<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Digital Design with an Introduction to the Verilog HDL by M. Morris Mano, Michael D. Ciletti</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Engineering</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> A clear and accessible approach to the basic tools, concepts, and applications of digital design. A modern update to a classic, authoritative text, Digital Design, 5th Edition teaches the fundamental concepts of digital design in a clear, accessible manner. The text presents the basic tools for the design of digital circuits and provides procedures suitable for a variety of digital applications. Like the previous editions, this edition of Digital Design supports a multimodal approach to learning, with a focus on digital design, regardless of language.</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Pearson</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 5<sup>th</sup> edition</span></p>', '<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Name:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Digital Design with an Introduction to the Verilog HDL by M. Morris Mano, Michael D. Ciletti</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Category:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Engineering</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Description:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> A clear and accessible approach to the basic tools, concepts, and applications of digital design. A modern update to a classic, authoritative text, Digital Design, 5th Edition teaches the fundamental concepts of digital design in a clear, accessible manner. The text presents the basic tools for the design of digital circuits and provides procedures suitable for a variety of digital applications. Like the previous editions, this edition of Digital Design supports a multimodal approach to learning, with a focus on digital design, regardless of language.</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Publisher:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> Pearson</span></p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 116.25pt;\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Edition:</span></strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\"> 5<sup>th</sup> edition</span></p>', 'public/productImage/Digital Logic design.png', 1, '2019-12-16 20:04:27', '2019-12-16 20:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `fullName`, `emailAddress`, `address`, `phoneNumber`, `districtName`, `created_at`, `updated_at`) VALUES
(1, 'md pias', 'obuidul.pias@gmail.com', 'Bashundhara', '01935723484', 'Gazipur', '2019-12-11 01:43:40', '2019-12-11 01:43:40'),
(2, 'obuidul pias', 'obuidul.pias@gmail.com', 'Bashundhara', '01723696696', 'Dhaka', '2019-12-11 06:21:51', '2019-12-11 06:21:51'),
(3, 'obuidul pias', 'obuidul.pias@gmail.com', 'Bashundhara', '01723696696', 'Dhaka', '2019-12-15 02:35:49', '2019-12-15 02:35:49'),
(4, 'sazzad hossain', 'sazzad@gmail.com', 'bashundhara', '01727296542', 'Dhaka', '2019-12-15 10:09:18', '2019-12-15 10:09:18'),
(5, 'Fahad Alam', 'Fah.adalam@gmail.com', 'Narayanganj, Bangladesh', '8965745215', 'nar', '2019-12-16 13:59:41', '2019-12-16 13:59:41'),
(6, 'Md Karim', 'md.karim@mail.com', '1/1, New city, New Road.', '123456789', 'Dhaka', '2021-05-30 03:35:00', '2021-05-30 03:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Karim', '1/1, New Road, New City.', 'md.karim@mail.com', '$2y$10$VgPExdr3rOA/QFyRhEWOj.AmURrfODdxjv4ZXPC.LbFPJuw/MGKtS', 'yfKG03jlEKS1bCgF4jlufVMeH6YRB5gwPZRjac5drdnU34UWR0aglIpvghUq', '2021-05-02 00:27:32', '2021-05-03 06:29:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centraldatas`
--
ALTER TABLE `centraldatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_requests`
--
ALTER TABLE `exchange_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `centraldatas`
--
ALTER TABLE `centraldatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `exchange_requests`
--
ALTER TABLE `exchange_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
