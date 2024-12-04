-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 03:10 AM
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
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Traveling'),
(2, 'Programming'),
(3, 'CSS'),
(9, 'HTML'),
(10, 'PHP'),
(17, 'JAVA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `body` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(9, 'Aminul', 'Islam', 'aminul.cse8.bu@gmail.com', 'Heyy, Your blog site looks awesome.!!', 1, '2024-12-03 23:26:29'),
(10, 'Aminul', 'Islam', 'aminul.cse8.bu@gmail.com', 'Heyy, Your blog site looks awesome.!!', 0, '2024-12-03 23:37:00'),
(11, 'Testing', 'Testing', 'testing@gmail.com', 'Hii..!!', 0, '2024-12-04 01:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, '2024, AmiNuL_72 | All Rights Reserved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `body` varchar(15000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(2, 'Blog      ', '                                <p> <h3>The Evolution of Web Development: From Static Pages to Dynamic Web Apps</h3>\r\nWeb development has transformed dramatically over the years. Initially, websites were simple static pages made with HTML, CSS, and basic JavaScript. These early websites were informational and had limited interactivity. In the late 1990s and early 2000s, server-side scripting languages like PHP, ASP, and Perl allowed for more dynamic, data-driven websites, enabling functionalities like user authentication and e-commerce.\r\n\r\nIn the mid-2000s, the rise of JavaScript frameworks like AngularJS, React, and Vue.js led to the development of more interactive and responsive web applications. These frameworks allowed developers to build dynamic, single-page applications (SPAs) that could update content without refreshing the entire page. This era also saw the introduction of AJAX, which enabled asynchronous data loading, improving the user experience.\r\n\r\nWith the mobile revolution, responsive design became crucial to ensure websites adapted to various screen sizes. CSS media queries and flexible layouts allowed for the seamless presentation of content on devices ranging from smartphones to desktop computers. Mobile-first development became a priority, as mobile browsing overtook desktop usage.\r\n\r\nToday, full-stack development has become increasingly common, with developers working on both the frontend and backend of applications. APIs (Application Programming Interfaces) have become integral to integrating third-party services like payment gateways, social media, and data storage into web applications. Frameworks like Node.js enable developers to use JavaScript for both client-side and server-side development, making the process more efficient.\r\n\r\nLooking to the future, Progressive Web Apps (PWAs) are merging the best features of websites and native mobile apps, providing offline capabilities, fast load times, and app-like experiences. Artificial Intelligence (AI) is also becoming more prominent in web development, with AI-powered chatbots, personalized recommendations, and voice search becoming common. Additionally, WebAssembly is paving the way for faster and more efficient web applications by allowing code written in languages like C, C++, and Rust to run in the browser.\r\n\r\nWeb development continues to evolve rapidly, and with emerging technologies like AI, machine learning, and WebAssembly, the possibilities for creating innovative, user-centric web applications are limitless. The future of web development promises faster, smarter, and more interactive digital experiences, shaping how users interact with the internet across devices.</p> \r\n                 \r\n                '),
(11, 'About', '<p>Md Aminul Islam is a Computer Science and Engineering student with a deep passion for both technology and exploration. Alongside his expertise in web development, competitive programming, and problem-solving, Aminul has a strong interest in traveling, touring, and photography. He enjoys traveling to new places, experiencing different cultures, and capturing the beauty of his adventures through photography. Whether it’s trekking through mountains, visiting historical landmarks, or simply exploring new cities, he finds joy in documenting these moments and sharing them with others. His love for technology and travel fuels his creativity, and he aspires to combine these passions to create impactful digital solutions that can connect people across the world. Aminul is committed to personal growth, both as a developer and an explorer, always seeking new opportunities to learn, create, and experience the world.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tag`, `date`, `userid`) VALUES
(16, 9, 'Introduction to HTML: The Building Block of the Web', '                                <p>HTML (HyperText Markup Language) is the foundation of web development, serving as the standard language for creating web pages and web applications. It structures the content on the web using elements represented by tags. These tags, combined with attributes, help define how content is displayed and interacted with on a browser.\r\nHTML is a static language, meaning it focuses on the structure rather than dynamic functionalities. However, it works seamlessly with CSS (for styling) and JavaScript (for interactivity) to create engaging, responsive websites. It’s beginner-friendly and a must-learn for anyone stepping into the world of web development.</p>                                ', 'upload/cfd836cf2b.jpg', 'AmiNuL_72', 'html, HTML', '2024-12-04 00:10:51', 1),
(18, 1, 'Kuakata: The Daughter of the Sea', '<p>Kuakata, often referred to as the \"Daughter of the Sea,\" is a breathtaking sea beach located in Patuakhali District, Bangladesh. Renowned for its panoramic view of both sunrise and sunset over the Bay of Bengal, Kuakata offers a unique spectacle that attracts visitors from around the globe.\r\n\r\nThe beach stretches for about 18 kilometers and is adorned with soft sandy shores, serene coconut groves, and tranquil waters. It is also home to diverse cultural experiences, particularly those of the Rakhine community, who reside nearby. Visitors can explore Buddhist temples, enjoy fresh seafood, or take a boat ride to witness the mesmerizing beauty of the mangrove forests and small islands surrounding the area.\r\n\r\nKuakata is not just a tourist destination but a symbol of natural and cultural harmony, making it a must-visit location in Bangladesh.</p>', 'upload/037a8769ef.jpg', 'Admin', 'Traveler, Nature, Beautiful', '2024-12-04 00:16:42', 1),
(19, 2, 'Programming: The Art of Solving Problems', '<p>Programming is the process of creating instructions that a computer can execute to perform specific tasks. It combines logic, creativity, and technical knowledge to solve problems and develop applications, systems, and tools that impact our daily lives.\r\n\r\nAt its core, programming involves writing code in languages like Python, JavaScript, C++, or Java. These languages provide syntax and rules to communicate with computers effectively. Through programming, we build software ranging from simple calculators to complex systems like artificial intelligence, web applications, and video games.\r\n\r\nBeyond coding, programming teaches critical skills such as problem-solving, debugging, and thinking systematically. It empowers individuals to turn ideas into reality, fostering innovation in fields such as healthcare, education, entertainment, and space exploration.\r\n\r\nProgramming is more than just a skill—it\'s a gateway to creativity and endless possibilities in the digital era.</p>', 'upload/0838bbf9fe.jpg', 'AmiNuL_72', 'CP, Competitive Programming', '2024-12-04 00:25:33', 1),
(20, 17, 'Java: A Versatile and Robust Programming Language', '                                <p>Java is a powerful, object-oriented programming language known for its platform independence, allowing developers to write code once and run it anywhere through the Java Virtual Machine (JVM). It offers robust features such as automatic memory management, strong security mechanisms, multithreading, and an extensive standard library, making it ideal for building cross-platform applications. Java is widely used in web development, Android mobile apps, enterprise systems, and scientific computing. With its scalability, reliability, and large community support, Java continues to be one of the most popular programming languages for creating high-performance, secure applications.</p>                              ', 'upload/65d42db12b.png', 'Admin', 'java, JAVA', '2024-12-04 00:36:15', 1),
(21, 10, 'PHP: The Server-Side Scripting Language', '                <p>PHP (Hypertext Preprocessor) is a popular open-source server-side scripting language used for web development. Known for its simplicity and versatility, PHP is the backbone of many dynamic websites and web applications.\r\n\r\nPHP is embedded within HTML, allowing developers to create interactive and responsive web pages. It powers content management systems like WordPress, Joomla, and Drupal. With its extensive library of built-in functions and support for databases such as MySQL, PostgreSQL, and SQLite, PHP is ideal for tasks like handling forms, managing sessions, and interacting with databases.\r\n\r\nOne of PHP\'s strengths is its cross-platform compatibility, running seamlessly on Windows, macOS, and Linux servers. Combined with frameworks like Laravel, Symfony, and CodeIgniter, PHP facilitates rapid development, enhanced security, and cleaner code organization.\r\n\r\nPHP continues to be a go-to choice for developers worldwide, proving its value in building scalable, secure, and efficient web solutions.</p> ', 'upload/fff28d4124.png', 'Md Aminul Islam', 'php, PHP', '2024-12-04 00:30:54', 1),
(28, 1, 'Sajek: The Queen of Hills in Bangladesh', '<p>Sajek Valley, located in the Rangamati district of Bangladesh, is one of the most popular and scenic hill stations in the country. Known for its breathtaking natural beauty, Sajek is often referred to as the \"Queen of Hills\" for its lush green landscapes, rolling hills, and panoramic views of the surrounding mountains.\r\n\r\nThe valley is situated at an altitude of about 1,000 feet above sea level, offering a cool and refreshing climate. Visitors can enjoy activities like trekking, sightseeing, and taking in the spectacular sunrise and sunset views. The area is home to indigenous communities such as the Chakma and Marma, adding a unique cultural aspect to the region.\r\n\r\nSajek Valley\'s remote location and untouched beauty make it a must-visit destination for nature lovers and adventure enthusiasts seeking a tranquil escape from the hustle and bustle of city life.</p>', 'upload/fc94264a19.jpg', 'admin', 'Traveler, Nature, Beautiful', '2024-12-04 00:39:45', 1),
(29, 2, 'Web Development: Building the Digital World', '<p>Web development refers to the process of creating and maintaining websites and web applications. It involves a combination of coding, design, and server management to produce functional, user-friendly websites. Web development is typically divided into three main categories:\r\n\r\nFrontend Development: This focuses on the visual and interactive aspects of a website, what users directly see and interact with. Frontend developers use languages like HTML, CSS, and JavaScript to create layouts, design elements, and dynamic content that ensures a smooth user experience.\r\n\r\nBackend Development: This involves server-side programming, handling the logic, database interactions, and authentication processes that occur behind the scenes. Backend developers use languages such as PHP, Python, Ruby, and Java to manage databases, servers, and APIs, ensuring data is processed correctly and efficiently.\r\n\r\nFull-Stack Development: Full-stack developers are proficient in both frontend and backend development, allowing them to build complete web applications from start to finish.\r\n\r\nWeb development is essential for building anything from simple personal blogs to complex e-commerce platforms. As the digital world continues to expand, the demand for skilled web developers has grown, making web development a critical field in technology and business.</p>', 'upload/689d86c247.jpg', 'admin', 'Coding , Programming', '2024-12-04 00:44:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(300) NOT NULL,
  `tw` varchar(300) NOT NULL,
  `ln` varchar(300) NOT NULL,
  `gp` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com/md.aminulislam.amin.72', 'https://www.twitter.com/', 'https://www.linkedin.com/in/md-aminul-islam-amin-79360024a/', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'admin', '123', 'admin@gmail.com', '<p>Hello, I am admin of this website</p>', 0),
(19, 'AmiNuL72', '123a', 'aminul.cse8.bu@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slogan` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'AmiNuL72&#039;s Blog site', 'Problem Solver, Web Developer, Traveler', 'upload/16300c324f.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
