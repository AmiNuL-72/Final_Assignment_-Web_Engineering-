-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 01:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'JAVA'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(7, 'Programming'),
(9, 'Food Review ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(5, 'Nabil', 'Chowdhury', 'nabil11@gmail.com', 'Hi, im nabil.', 0, '2018-12-12 14:51:50'),
(7, 'Fahad', 'Masud', 'nazmul@gmail.com', 'echo &quot;&lt;span class=\'success\'&gt;Message send in the inbox!!&lt;/span&gt;&quot;;\r\n		}else{\r\n			echo &quot;&lt;span class=\'error\'&gt;Something went wrong !!&lt;/span&gt;&quot;;\r\n		}', 1, '2018-12-13 06:28:40'),
(8, 'Mohosain', 'Mia', 'faha2@gmail.c0m', 'as ki je at tealjfsdLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the.....', 0, '2018-12-13 06:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Hafsa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Me', 'I\'m Hafsa Rashid.I am from Barishal . Currently,  I am studying in the Computer Science and Engineering department at Barishal University. I would like to solve problem in the different online judges. Such As Codeforces, Codechef, UVA, Light OJ. And started doing development . I learned HTML,CSS,PHP,JAVASCRIPT. '),
(2, 'Privacy', '<p><strong>Policy Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`) VALUES
(27, 7, 'Competitive Programming – A Complete Guide', 'Competitive Programming is a mental sport which enables you to code a given problem under provided constraints. The purpose of this article is to guide every individual possessing a desire to excel in this sport. This article provides a detailed syllabus for Competitive Programming designed by industry experts to boost the preparation of the readers.', 'upload/c19e9bcfad.jpg', 'Hafsa ', 'Programming', '2023-10-03 07:56:24'),
(28, 2, 'PHP Tutorial ', 'PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.\r\n\r\nPHP is a widely-used, free, and efficient alternative to competitors such as Microsoft\'s ASP.', 'upload/865955c6e4.png', 'Hafsa ', 'PHP', '2023-10-03 08:00:27'),
(29, 1, 'Learn Java ', 'Java is a popular programming language, created in 1995.\r\n\r\nIt is owned by Oracle, and more than 3 billion devices run Java.\r\n\r\nIt is used for:\r\n\r\nMobile applications (specially Android apps)\r\nDesktop applications\r\nWeb applications\r\nWeb servers and application servers\r\nGames\r\nDatabase connection\r\nAnd much, much more!', 'upload/d9cc197000.jpg', 'Hafsa ', 'Java ', '2023-10-03 08:30:23'),
(31, 3, 'Learn HTML', 'TML stands for Hyper Text Markup Language\r\nHTML is the standard markup language for creating Web pages\r\nHTML describes the structure of a Web page\r\nHTML consists of a series of elements\r\nHTML elements tell the browser how to display the content\r\nHTML elements label pieces of content such as \"this is a heading\", \"this is a paragraph\", \"this is a link\", etc.', 'upload/4d455143b3.png', 'Hafsa ', 'HTML', '2023-10-03 08:37:08'),
(37, 9, 'Burger...', 'Burger King is an American fast food chain is located at Road 11 in Banani. They are famous for their Burger and have many other good fast food options also in their menu. We tried their Cheesy Beef Burger, Crispy Chicken Burger, BBQ chicken wings, French fries, Coke and Cone ice cream. All the items were good and tasty. This shop is mainly a very good place for the youngsters and tourists, who are burger lovers. The staffs are good, helpful and efficient with good atmosphere.\r\n\r\nhttps://www.tripadvisor.com/ShowUserReviews-g293936-d11928931-r548151310-Burger_King-Dhaka_City_Dhaka_Division.html#', 'upload/c7fde7ff85.jpg', 'Hafsa ', 'Food', '2023-10-03 10:41:39'),
(38, 7, 'Graph theory ', 'Graph Theory is a branch of mathematics that is concerned with the study of relationships between different objects. A graph is a collection of various vertexes also known as nodes, and these nodes are connected with each other via edges. In this tutorial, we have covered all the topics of Graph Theory like characteristics, eulerian graphs, planar graphs, special graphs, trees, paths in graph theory, etc. This Graph theory tutorial will be helpful in learning the concept of the subject along with the applications of graph theory in real life and in various fields. ', 'upload/90925b48b0.png', 'Hafsa ', 'Programming', '2023-10-03 10:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com/angel.sofura.1', 'https://twitter.com/TechsLite1', 'https://www.linkedin.com/company/techs-lite/', 'https://plus.google.com/+techsliteblogspotlive');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Hafsa\'s Dairy', 'Problem solver,Web-devloper,Food Blogger', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;