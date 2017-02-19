-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 24, 2016 at 06:03 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `swreg`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `amt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `school`, `amt`, `email`, `phone`, `gender`, `created_at`) VALUES
(38, 'Oyinlola Joseph', 'Polytechnic Ife', '2500', 'josephoyinlola@yahoo.com', '8166274668', 'male', '2024-10-16 12:40:22'),
(39, 'Ibrahim Tunde Amodu', 'THE IBARAPA POLYTHECHNIC, ERUWA', '2500', 'jegahse@gmail.com', '80156648813', 'male', '2024-10-16 01:10:41'),
(40, 'Olaimolu Zachariah Iyanuoluwa', 'FEDERAL UNIVERSITY OF TECHNOLOGY, AKURE', '2500', 'olaimoluzachariah@gmail.com', '8164050605', 'male', '2024-10-16 01:39:55'),
(41, 'BUSARI SHERIF OLUWAGBEMIGA', 'UNIVERSITY OF IBADAN', '1200', 'omnimontana@gmail.com', '08086364971', 'male', '2024-10-16 01:42:03'),
(42, 'FAROTIMI COMFORT ADEOLA', 'UNIVERSITY OF IBADAN', '1200', 'folakecomfort4@gmail.com', '08169067402', 'female', '2024-10-16 02:29:57'),
(43, 'EBHOMIELEN OFURE', 'UNIVERSITY OF IBADAN', '1200', 'Ebhomielenofure@gmail.com', '08177428231', 'female', '2024-10-16 02:31:05'),
(44, 'OMOTAYO OLUWABUNMI', 'UNIVERSITY OF IBADAN', '1200', 'omladebunmi20@yahoo.com', '09085925497', 'female', '2024-10-16 02:32:50'),
(45, 'AZEEZ ABIODUN S.', 'MAPOLY ', '3500', 'iamhabbeboy@gmail.com', '07087322191', 'male', '2024-10-16 02:44:30'),
(46, 'MAJIYAGBE OLUWOLE A.', 'MAPOLY', '3500', 'oluwole564@gmail.com', '09084678574', 'male', '2024-10-16 02:46:33'),
(47, 'LAMINA OLADIMEJI A.', 'MAPOLY', '3500', 'Hurlami97@gmail.com', '08103319588', 'male', '2024-10-16 02:47:46'),
(48, 'AKINKUNMI OLADELE M.', 'MAPOLY', '3500', 'ojogbonoladele@gmail.com', '07085301049', 'male', '2024-10-16 02:48:55'),
(49, 'ARASHI FUNSHO', 'UNIVERSITY OF IBADAN', '1200', 'farashi181@stu.ui.edu.ng', '07087362008', 'male', '2024-10-16 02:50:32'),
(50, 'LAWAL OLALEKAN Y.', 'MAPOLY', '3500', 'Olalekanadesanmi@gmail.com', '07085301049', 'male', '2024-10-16 02:51:57'),
(51, 'RAJI SOBOUR K.', 'DSA POLY', '3500', 'rajisobourkewulere@yahoo.com', '08162106474', 'male', '2024-10-16 02:53:06'),
(52, 'FREDYUSUFF TOMIWA', 'DSA POLY', '3500', 'fredadeleke87@gmail.com', '07066840117', 'male', '2024-10-16 02:54:31'),
(53, 'AFOLABI ZAINAB', 'DSA POLY', '3500', 'prestigiousgold@gmail.com', '08160065856', 'female', '2024-10-16 02:55:33'),
(54, 'BAMIDELE AYODEJI J.', 'THE POLYTHECNIC IBADAN', '2500', 'ayodejij4@gmail.com', '08070535348', 'male', '2024-10-16 02:56:21'),
(55, 'WAHAB GANIYU A.', 'THE POLYTHECNIC IBADAN', '2500', 'wabgano@gmail.com', '08033986912', 'male', '2024-10-16 02:57:40'),
(56, 'SANGOSANYAN SEGUN ', 'THE POLYTHECNIC IBADAN', '2500', 'sangosanyasegun@yahoo.com', '08093894857', 'male', '2024-10-16 02:58:40'),
(57, 'JOHNSON OLALEKAN J.', 'THE POLYTHECNIC IBADAN', '3500', 'johnnycares4toda@gmail.com', '08100968403', 'male', '2024-10-16 02:59:34'),
(58, 'KUTI ABOLAJI O.', 'THE POLYTHECNIC IBADAN', '2500', 'kutiabolaji@gmail.com', '08138479240', 'female', '2024-10-16 03:00:47'),
(59, 'LADAPO SAMUEL', 'THE POLYTHECNIC IBADAN', '2500', 'ladaposamuel@outlook.com', '08068170006', 'male', '2024-10-16 03:01:47'),
(60, 'HASSAN IYANUOLUWA', 'UNIVERSITY OF IBADAN', '1200', 'iyanuoluwa370@gmail.com', '08038606554', 'female', '2024-10-16 03:02:45'),
(61, 'OSANYINLUSI FISOLAMI', 'FEDERAL UNIVERSITY OF TECHNOLOGY, AKURE', '2500', 'fissybo@gmail.com', '08141130358', 'male', '2024-10-16 03:08:25'),
(62, 'AYAEGBUNAM DAVID', 'FEDERAL SCHOOL OF STATISTICS', '2500', 'ayaexd@gmail.com', '08167661329', 'male', '2024-10-16 03:55:57'),
(63, 'AUDU OMOH KEHINDE', 'UNIVERSITY OF IBADAN', '1200', 'kennyomoh04@gmail.com', '08134257687', 'male', '2024-10-16 04:08:24'),
(64, 'OLAFIMIHAN MORUFAT O.', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Kmfat@yahoo.com', '08038669057', 'female', '2024-10-16 04:15:19'),
(65, 'OLATUNJI CHRISTIANAH O.', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Olatunji_christianah@yahoo.com', '08131604588', 'female', '2024-10-16 05:08:27'),
(66, 'ADEBAYO OLUWASEUN T', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Seuntt97@gmal.com', '08136665482', 'female', '2024-10-16 05:09:48'),
(67, 'OLATUNJI OLABIMPE A', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Olatunji.Olabimpe@yahoo.com', '08180103365', 'female', '2024-10-16 05:11:29'),
(68, 'OLASUMBO IFEOLUWA PRECIOUS', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Ifepreciousay@gmail.com', '08181767494', 'female', '2024-10-16 05:12:55'),
(69, 'BABAWALE TAIWO E.', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Babawaletyc@gmail.com', '08164090519', 'female', '2024-10-16 05:14:51'),
(70, 'AFOLABI ISAAC T', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Omolevite@gmail.com', '08106766637', 'male', '2024-10-16 05:16:04'),
(71, 'ADEWUNMI AYOBAMI O', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Ayobamiadewunmi@gmail.com', '08181633942', 'female', '2024-10-16 05:17:26'),
(72, 'ADEFUWA ADEBOWALE C', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Juninbo4L32K@gmail.com', '07064760196', 'male', '2024-10-16 05:19:34'),
(73, 'OKANLAWON OLAREWAJU T.', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Okanlawonolarewaju4@gmail.com', '08064472350', 'male', '2024-10-16 05:20:58'),
(74, 'ADENUGA OLUWAFEMI S', 'OLABISI ONABANJO UNIVERSITY', '3500', 'phemmylintry@gmail.com', '07062257651', 'male', '2024-10-16 05:22:42'),
(75, 'AWOYEMI HAFEEZ O', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Haviz924@gmail.com', '08100022473', 'male', '2024-10-16 05:24:00'),
(76, 'OSIFESO OLAMIJI I', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Olamijioshifeso@gmail.com', '07081163043', 'male', '2024-10-16 05:25:46'),
(77, 'OGUNSANWO OPEYEMI W.', 'OLABISI ONABANJO UNIVERSITY', '3500', 'Ogunsanwoopeyemi9@gmail.com', '08090758313', 'male', '2024-10-16 05:27:36'),
(78, 'ODERINDE TAYYIB A.', 'OLABISI ONABANJO UNIVERSITY', '3500', 'oddydesigns1@gmail.com', '09037574177', 'male', '2024-10-16 05:28:48'),
(79, 'ADENUGA OLUWAFEMI S', 'OLABISI ONABANJO UNIVERSITY', '3500', 'phemmylintry@gmail.com', '07062257651', 'male', '2024-10-16 05:22:42'),
(80, 'OLASUNKANMI OLAREWAJU D', 'OLABISI ONABANJO UNIVERSITY', '3500', 'temidayo1001@gmail.com', '08178056617', 'male', '2024-10-16 05:31:28'),
(81, 'TIAMIYU SAHEED O', 'OLABISI ONABANJO UNIVERSITY', '3500', 'tiamiyusaheedoluwatosin@gmail.com', '09026108333', 'male', '2024-10-16 05:32:40'),
(82, 'OLUWAYEMI AYOMIKUN', 'UNIVERSITY OF IBADAN', '1200', 'oluwayemiayo@yahoo.com', '08057510443', 'male', '2024-10-16 05:33:59'),
(83, 'JEGEDE OLAMIDE H.', 'UNIVERSITY OF IBADAN', '1200', 'jegedeolamide99@gmail.com', '8170849629', 'male', '2024-10-16 05:44:48'),
(84, 'LANIRAN PETER', 'KWASU', '3500', 'laniranpeter@yahoocom', '07087673912', 'male', '2024-10-16 05:46:29'),
(85, 'KAKA YUSUF B.', 'KWASU', '3500', 'Kakaonigbesa@gmail.com', '09059424242', 'male', '2024-10-16 05:55:39'),
(86, 'ABIKOYE SIMILOLUWA', 'KWASU', '3500', 'mojolaabikoye@gmail.com', '07088853314', 'male', '2024-10-16 05:57:10'),
(87, 'ABIDOYE OLAMLEKAN A', 'KWASU', '3500', 'OLUWAOLAMI1@gmail.com', '09023540610', 'male', '2024-10-16 05:58:48');
