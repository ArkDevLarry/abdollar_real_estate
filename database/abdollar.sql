-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2022 at 06:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abdollar`
--

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `feature` varchar(200) DEFAULT NULL,
  `code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `feature`, `code`) VALUES
(9, 'Serene Environment', '1124513107'),
(10, 'Energy Efficiency', '1124513107'),
(11, 'Clean Surroundings', '1124513107'),
(12, 'Good Water Supply', '1124513107'),
(13, 'Serene Environment', '2076031883'),
(14, 'Energy Efficiency', '2076031883'),
(15, 'Clean Surroundings', '2076031883'),
(16, 'Good Water Supply', '2076031883'),
(21, 'Fast Document Processing', '480949694'),
(22, 'Investment Permanence', '480949694'),
(23, 'Good Location', '480949694'),
(24, 'Immobility', '480949694'),
(25, 'Fast Document Processing', '383972526'),
(26, 'Investment Permanence', '383972526'),
(27, 'Good Location', '383972526'),
(28, 'Immobility', '383972526'),
(29, 'Fast Document Processing', '159165359'),
(30, 'Investment Permanence', '159165359'),
(31, 'Good Location', '159165359'),
(32, 'Immobility', '159165359');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `code`) VALUES
(2, '16603162241420227894.jpg', '2076031883'),
(3, '1660316224958612489.jpg', '2076031883'),
(4, '16603162241965487479.jpg', '2076031883'),
(5, '1660316224819921056.jpg', '2076031883'),
(7, '1660317659584318856.jpg', '1124513107'),
(8, '16603176591283379290.jpeg', '1124513107'),
(9, '1660317659248780309.jpeg', '1124513107'),
(12, '16603176591283379290.jpeg', '1167607410'),
(16, '16611827381555147203.jpeg', '480949694'),
(17, '16611827381854129218.jpeg', '480949694'),
(18, '16611827381731026524.jpeg', '480949694'),
(19, '16611830402050568491.jpeg', '383972526'),
(20, '1661183040552662042.jpeg', '383972526'),
(21, '1661183040460780046.jpeg', '383972526'),
(22, '16611830401266564707.jpeg', '383972526'),
(23, '16611831431986602152.jpeg', '159165359'),
(24, '16611831431577959767.jpeg', '159165359'),
(25, '16611831431715179889.jpeg', '159165359');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `email`, `subject`, `message`, `created`) VALUES
(1, 'lfk', 'dfedi@djfgj.comfv', 'd;lskdlsk;', 'sdslhjkd', '0000-00-00'),
(2, 'lfk', 'dfedi@djfgj.comfv', 'd;lskdlsk;', 'sdslhjkd', '2022-07-21 18:05:45'),
(3, 'dkfdk', 'dfkll', 'scldkd', 'ckldgmk', '2022-07-21 18:38:21'),
(4, 'dkfdk', 'dfkll', 'scldkd', 'ckldgmk', '2022-07-21 18:38:29'),
(5, 'dkdkgkhyl', 'idahjohnpaul@gmail.com', 'dkkkkldkdkl', 'kadmvkmvdklm', '2022-07-21 18:39:36'),
(6, 'adskfklkl', 'akereleayomide106@gmail.com', 'sdklglikf', 'sdfkdkk', '2022-07-21 18:43:11'),
(7, 'hryht', 'akereleayomide106@gmail.com', 'etehtttg', 'ffhgh', '2022-07-21 18:49:00'),
(8, 'fklkldklfk', 'akereleayomide106@gmail.com', ';sdlf', 'v;gll', '2022-07-21 18:51:37'),
(9, 'fklkldklfk', 'akereleayomide106@gmail.com', ';sdlf', 'v;gll', '2022-07-21 18:52:07'),
(10, 'fklkldklfk', 'akereleayomide106@gmail.com', ';sdlf', 'v;gll', '2022-07-21 18:52:15'),
(11, 'fdfjj', 'akereleayomide106@gmail.com', 'dlfk', 'dkkdsmfdfldkmcxk vb vgkl', '2022-07-21 18:52:30'),
(12, 'fdfjj', 'akereleayomide106@gmail.com', 'dlfk', 'dkkdsmfdfldkmcxk vb vgkl', '2022-07-21 19:05:34'),
(13, 'fldklfkll', 'akereleayomide106@gmail.com', 'dwf', 'sfdbd', '2022-07-21 19:13:18'),
(14, 'klkklkkl', 'akereleayomide106@gmail.com', 'cklfkgl', 'asdklk', '2022-07-21 19:22:17'),
(15, 'klkklkkl', 'akereleayomide106@gmail.com', 'cklfkgl', 'asdklk', '2022-07-21 19:55:42'),
(16, 'DLDFKKL', 'cjkkdjgjsj@gmail.com', ';ldfl;tl', 'd;lletl;', '2022-07-21 20:05:16'),
(17, 'kfgkgk', 'flkgdk@dklfk.com', 'klfmklgdmk', 'klmklnf', '2022-07-21 20:21:34'),
(18, 'slfkfkl', 'slk@dlks.com', 'ckllxkcklk', 'cskldkskl', '2022-07-21 20:44:39'),
(19, 'cdklklk', 'kklfklkl@dffjd.com', 'skdkfkfkl', 'ddfkldfkk', '2022-07-21 20:50:00'),
(20, 'Akerele Ayomide', 'akereleayomide100@gmail.com', 'This is a test subject.', 'This is a test subject. This is a test subject. This is a test subject. This is a test subject. This is a test subject. This is a test subject. This is a test subject. This is a test subject. This is a test subject. This is a test subject.', '2022-07-23 18:57:40'),
(21, 'John Paul', 'Idahjohnpaul@gmai.com', 'This is a test email from Akerele Ayomide.', 'This email will be delivered to &quot;sholasqz@gmail.com&quot;, &quot;akereleayomide106@gmail.com&quot; &amp; &quot;hello@ojosolomon.online&quot;. To test the email component.', '2022-07-23 19:28:10'),
(22, 'John Paul ', 'idahjohnpaul@gmail.com', 'This is a test email from Akerele Ayomide.', 'This email will be delivered to &quot;sholasqz@gmail.com&quot;, &quot;akereleayomide106@gmail.com&quot; &amp; &quot;hello@ojosolomon.online&quot;. To test the email component.', '2022-07-23 19:34:11'),
(23, 'John Paul', 'idahjohnpaul@gmail.com', 'Testing Mail Component', 'This message will be sent to &quot;sholasqz@gmail.com&quot;, &quot;akereleayomide106@gmail.com&quot; &amp; &quot;hello@ojosolomon.online&quot; simultaneously. Testing mail component.', '2022-07-23 19:46:59'),
(24, 'John Paul ', 'akereleayomide106@gmail.com', 'This is a test email from Akerele Ayomide.', 'This message will be sent to &quot;sholasqz@gmail.com&quot;, &quot;akereleayomide106@gmail.com&quot; &amp; &quot;hello@ojosolomon.online&quot; simultaneously. Testing mail component.', '2022-07-23 19:51:37'),
(25, 'John Paul', 'idahjohnpaul@gmail.com', 'This is a test email from Hybridsoft_Portfolio', 'This email will be delivered to &amp;quot;sholasqz@gmail.com&amp;quot;, &amp;quot;akereleayomide106@gmail.com&amp;quot; &amp;amp; &amp;quot;hello@ojosolomon.online&amp;quot;. To test the email component.', '2022-07-23 19:54:31'),
(26, 'John Paul', 'idahjohnpaul@gmail.com', 'This is a test email from Hybridsoft_Portfolio', 'This email will be delivered to &amp;quot;sholasqz@gmail.com&amp;quot;, &amp;quot;akereleayomide106@gmail.com&amp;quot; &amp;amp; &amp;quot;hello@ojosolomon.online&amp;quot;. To test the email component.', '2022-07-23 19:55:26'),
(27, 'John Paul', 'idahjohnpaul@gmail.com', 'This is a test email from Hybridsoft_Portfolio', 'This email will be delivered to &amp;quot;sholasqz@gmail.com&amp;quot;, &amp;quot;akereleayomide106@gmail.com&amp;quot; &amp;amp; &amp;quot;hello@ojosolomon.online&amp;quot;. To test the email component.', '2022-07-23 19:56:14'),
(28, 'John Paul', 'idahjohnpaul@gmail.com', 'This is a test email from Hybridsoft_Portfolio', 'This email will be delivered to &amp;quot;sholasqz@gmail.com&amp;quot;, &amp;quot;akereleayomide106@gmail.com&amp;quot; &amp;amp; &amp;quot;hello@ojosolomon.online&amp;quot;. To test the email component.', '2022-07-23 19:56:57'),
(29, 'John Paul', 'idahjohnpaul@gmail.com', 'This is a test email from Akerele Ayomide.', 'This email will be delivered to &amp;quot;sholasqz@gmail.com&amp;quot;, &amp;quot;akereleayomide106@gmail.com&amp;quot; &amp;amp; &amp;quot;hello@ojosolomon.online&amp;quot;. To test the email component.', '2022-07-23 20:03:25'),
(30, 'Yagba Simile', 'yagbasimile123@gmail.com', 'Online Testing for mail component.', 'This is a test email from Hybridsoft_Portfolio. Online Testing for mail component.', '2022-07-23 23:40:45'),
(31, 'Ariadne Haywood', 'Ariadnehaywood@gmail.com', 'Online Testing for mail component.', 'This is a test email from Hybridsoft_Portfolio. Online Testing for mail component.', '2022-07-24 00:35:09'),
(32, 'Seller Done', 'Ariadnehaywood@gmail.com', 'The testing Component for Folio.', 'This is the testing component for the hybrid_folio component.', '2022-07-24 00:43:49'),
(33, 'Akerele Ayomide', 'idahjohnpaul@gmail.com', 'Testing Mail Component', 'This can be done without any problem.', '2022-07-27 16:19:58'),
(34, 'John Paul', 'idahjohnpaul@gmail.com', 'This is a test email from Hybridsoft_Portfolio', 'This can be done.', '2022-07-27 16:25:25'),
(35, 'Idah John', 'idahjohnpaul@gmail.com', 'wds', 'vdvdd', '2022-07-27 16:30:23'),
(36, 'Yagba Simile', 'yagbasimile123@gmail.com', 'This is a test email from Hybridsoft_Portfolio', 'fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk fvvhckbnj n jnk jvn jknfjknfjnfjk ', '2022-07-27 16:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `created` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `location`, `price`, `status`, `title`, `code`, `details`, `created`) VALUES
(1, 'The Prime Pride', '    Lepia Community, Ibeji-Lekki.', '0.00', 'Still Selling', 'Approved Excision', '2076031883', '&lt;br&gt;&lt;div&gt;\r\n&lt;h2&gt;What is Lorem Ipsum?&lt;/h2&gt;\r\n&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry&#039;s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;/div&gt;&lt;div&gt;\r\n&lt;h2&gt;Why do we use it?&lt;/h2&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using &#039;Content here, content here&#039;, making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for &#039;lorem ipsum&#039; will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n&lt;/div&gt;&lt;br&gt;&lt;div&gt;\r\n&lt;h2&gt;Where does it come from?&lt;/h2&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section \r\n1.10.32.&lt;/p&gt;&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;h2&gt;Where can I get some?&lt;/h2&gt;\r\n&lt;p&gt;There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don&#039;t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn&#039;t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.&lt;/p&gt;', '2022-08-12 14:57:04'),
(2, 'TERRA GARDENS ESTATE', 'Ode-Omi', '0.00', 'Now Selling', 'C of O (In process)', '1124513107', '&lt;div class=&quot;btArticleContent &quot;&gt;&lt;p&gt;Are you looking to own a beautiful \r\nhome, built to suit your unique needs, customized especially to your \r\npreferences, a home where you can proudly call your own? It all starts \r\nwith getting the primary commodity – Land. With land you can build to \r\nyour preferred taste and transform your dreams to reality.&lt;/p&gt;\r\n&lt;p&gt;Terra Gardens Estate is located at Ode-Omi in Ibeju Lekki (The next \r\nbig thing of Lagos State). It’s always advisable to go ahead of \r\ndevelopment in real estate as the early pace setters eat the “biggest \r\nchunk of meat” when the harvest season is due.&lt;/p&gt;\r\n&lt;p&gt;The TERRA GARDENS also has a very secured title {C of O in progress}.&lt;/p&gt;\r\n&lt;p&gt;A piece of Terra Gardens Estate is an investment that every investor \r\nwould be proud of at the long run given the high potentials the area of \r\nIbeju Lekki possesses. Some great future developments includes the Lagos\r\n Airport, Seaport coming to that area aside ongoing developments like \r\nthe Free Trade Zone, Dangote refinery, and Pan-African University \r\nCampus. It is also one of the locations for the Lagos Smart City deal \r\nwith Dubai.&lt;/p&gt;\r\n&lt;p&gt;If we put together the above mentioned facts coupled with the current\r\n real estate trend in Lagos, this period seems the best for public to \r\ninvest in landed property in the area, as it would be of great value in \r\nthe near future. The ROI in this area is mouth watering as your \r\ninvestments tend to give amazing returns within a short period of time \r\ndue to the massive developments ongoing and those yet to come.&lt;/p&gt;\r\n&lt;p&gt;In the nearest future, the development around Terra Gardens Estate \r\nwould likely be in two phases. Firstly, development along the Lekki- Epe\r\n Expressway will go further into Ibeju Lekki, causing industrialization \r\nto expand further into the area. Secondly, the industries along the Free\r\n Trade Zone road will promote commercial activities in this satellite \r\ncity, resulting in a central business district in the Free Trade Zone \r\narea.&lt;/p&gt;\r\n&lt;p&gt;Give us a call to take you on inspection xxxxxx&lt;/p&gt;\r\n&lt;/div&gt;&lt;p&gt;&lt;/p&gt;', '2022-08-12 15:20:59'),
(6, 'Lekki Pride III Buy to Resell', 'Abraham Adesanya, Ogombo Road', '0.00', 'Now Selling', 'C of O', '480949694', '&lt;p&gt;🔔💰 STAY AHEAD OF INFLATION, TAKE ADVANTAGE OF THE LEKKI PRIDE III BUY TO RESELL OFFER⏰🔊&lt;br&gt;&lt;br&gt;Dear Clients/Realtors, &lt;br&gt;&lt;br&gt;Inflation is on the increase and seems not to back down anytime soon. 😔&lt;br&gt;&lt;br&gt;What you can do for yourself and your loved ones is to invest in REAL ESTATE CASH BACK offers that has a track record of back-to-back success and delivering maximum return on investment. 😃&lt;br&gt;&lt;br&gt;The Real Estate Cash Back checks all the boxes and is the bankable partner to grow your wealth beyond your wildest dreams. 😀😀&lt;br&gt;&lt;br&gt;With the August buy to resell offer on Lekki Pride III you get to invest your funds and earn juicy dividends after 12months to achieve financial freedom🥊🥂&lt;br&gt;&lt;br&gt;You can get started with a minimum of N500,000 and take it as high as N100,000,000💰💰&lt;br&gt;&lt;br&gt;Invest N500,000 - 19,999,999 and earn 30% Dividend 💥🔔🥂&lt;br&gt;&lt;br&gt;👉 Invest 20,000,000 &amp;amp;amp; above and earn 33% Dividend 🤩💰😎&lt;br&gt;&lt;/p&gt;', '2022-08-22 17:38:58'),
(7, 'LEKKI PRIDE ESTATE II', 'Abraham Adesanya, Ogombo Road', '0.00', 'Still Selling', 'C of O', '383972526', '&lt;p&gt;LEKKI PRIDE ESTATE II &lt;br&gt;&lt;br&gt;Latest Development in Ogombo Road Abraham Adesanya 🔥🔥🔥🔥&lt;br&gt;&lt;br&gt;Lekki Pride Phase II offers apartments tailored to meet your highest standards, with excellently designed luxury homes, that brings comfort, luxury and appreciation overtime. &lt;br&gt;&lt;br&gt;It is an estate that gives you the feeling of safety with a unique blend of comfort, affordability, and luxury. &lt;br&gt;Feel the pride of living at Lekki Pride, and experience luxury in an admirable estate designed just for you. &lt;br&gt;&lt;br&gt;All rooms are fully en-suite with high quality tiles, large dining and living area with security smart lock doors. Lekki Pride II offers a blend of luxury and serene ambiance.&lt;br&gt;&lt;br&gt;&amp;nbsp;It is a unique and exquisite estate strategically built to solve the&amp;nbsp; needs of Nigerians while meeting world-class standards.&lt;br&gt;&lt;br&gt;ESTATE FEATURES🔥🔥&lt;br&gt;- DayCare Centre&lt;br&gt;- Gym and Game Centre&lt;br&gt;- Solar Street light&lt;br&gt;- Drainage system&lt;br&gt;- Security/Surveillance Camera&lt;br&gt;- Facility management Building&lt;br&gt;&lt;br&gt;NEAREST LANDMARKS&lt;br&gt;&lt;br&gt;LEKKI PRIDE ESTATE II shares proximity with;&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Ajiwe Police Station, &lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Agofure Motor Park, &lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Abraham Adesanya Roundabout&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Eti Osa Maternal Centre&lt;br&gt;&lt;br&gt;TITLE Governors Consent&lt;br&gt;&lt;br&gt;LOCATION Ogombo Road by Abraham Adesanya Roundabout, Lekki-Epe Expressway. &lt;br&gt;&lt;br&gt;PROMO PRICE&lt;br&gt;&lt;br&gt;2 Bedroom Terrace Duplex + BQ - N55,000,000&lt;br&gt;&lt;br&gt;2 Bedroom Fully Detached Duplex + BQ - N59,000,000&lt;br&gt;&lt;br&gt;3 Bedroom Semi Detached Duplex + BQ - N66,000,000&lt;br&gt;&lt;br&gt;3 Bedroom Terrace Duplex + BQ - N60,000,000&lt;br&gt;&lt;br&gt;4 Bedroom Semi Detached Duplex + BQ - N80,000,000&lt;br&gt;&lt;br&gt;&lt;br&gt;Initial Deposit-&lt;br&gt;N5,000,000🔥🔥🔥&lt;br&gt;&lt;br&gt;&amp;nbsp;PAYMENT PLAN Available on all building type upto 12months.&lt;br&gt;&lt;br&gt;ESTATE FEATURES&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Electric Fencing&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Security Gatehouse&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Management Office Building &lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Cinema House&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Recreational Centre &lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Solar Powered Streetlights&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; CCTV Surveillance Cameras&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Estate Gym&lt;br&gt;•&amp;nbsp;&amp;nbsp;&amp;nbsp; Smart Home Features and so much more!&lt;br&gt;&amp;nbsp;&lt;br&gt;LEKKI PRIDE ESTATE, feel The Pride In Comfort…...&lt;br&gt;&lt;/p&gt;', '2022-08-22 17:44:00'),
(8, ' ÌTÙNÚ CITY:(SITE AND SERVICE)', 'Aiyetoro, Ibeju Lekki.', '0.00', 'Still Selling', 'C of O', '159165359', 'INTRODUCING THE ÌTÙNÚ CITY:(SITE AND SERVICE)&lt;br&gt;(Commercial and residential)&lt;br&gt;&lt;br&gt;Missed out on Itunu Residential? Then don’t sleep on this one &lt;br&gt;&lt;br&gt;𝓕𝓮𝓪𝓽𝓾𝓻𝓮𝓼:&lt;br&gt;&lt;br&gt;Cᴏᴍᴇs ᴡɪᴛʜ sᴛᴀɴᴅᴀʀᴅɪᴢᴇᴅ ғᴀᴄɪʟɪᴛɪᴇs sᴜᴄʜ ᴀs &lt;br&gt;• Kɴᴏᴡʟᴇᴅɢᴇ ᴘᴀʀᴋ&lt;br&gt;• Tᴇᴄʜ Cɪᴛʏ&lt;br&gt;• Mɪɴɪ ɢᴏʟғ ᴄᴏᴜʀsᴇ &lt;br&gt;• Lᴀᴋᴇs ᴀɴᴅ ɢᴀʀᴅᴇɴs&lt;br&gt;• Gʀᴇᴇɴ ᴀʀᴇᴀ &lt;br&gt;&lt;br&gt;𝐿𝑜𝑐𝑎𝑡𝑖𝑜𝑛: 𝐴𝑖𝑦𝑒𝑡𝑜𝑟𝑜, 𝐼𝑏𝑒𝑗𝑢 𝐿𝑒𝑘𝑘𝑖.&lt;br&gt;&lt;br&gt;Land Title: Certificate of Occupancy&lt;br&gt;&lt;br&gt;𝘙𝘦𝘴𝘪𝘥𝘦𝘯𝘵𝘪𝘢𝘭 𝘱𝘭𝘰𝘵𝘴&lt;br&gt;👉 300𝘴𝘲𝘮- 12𝘮𝘪𝘭𝘭𝘪𝘰𝘯&lt;br&gt;👉 500𝘴𝘲𝘮- 20𝘮𝘪𝘭𝘭𝘪𝘰𝘯&lt;br&gt;&lt;br&gt;𝘊𝘰𝘮𝘮𝘦𝘳𝘤𝘪𝘢𝘭 𝘱𝘭𝘰𝘵𝘴&lt;br&gt;65,000/𝘴𝘲𝘮x (1,000𝘴𝘲𝘮)- 65millionO&lt;br&gt;&lt;br&gt;Fᴏʀ ᴍᴏʀᴇ Eɴǫᴜɪʀɪᴇs,', '2022-08-22 17:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `ip_address`, `count`, `date`) VALUES
(1, '127.0.0.1', 1, '2022-07-27'),
(2, '127.0.0.1', 1, '2022-07-27'),
(3, '127.0.0.1', 1, '2022-07-27'),
(4, '127.0.0.1', 1, '2022-07-27'),
(5, '127.0.0.1', 1, '2022-07-27'),
(6, '127.0.0.1', 1, '2022-07-27'),
(7, '127.0.0.1', 1, '2022-07-27'),
(8, '127.0.0.1', 1, '2022-07-27'),
(9, '127.0.0.1', 1, '2022-07-27'),
(10, '127.0.0.1', 1, '2022-07-27'),
(11, '127.0.0.1', 1, '2022-07-27'),
(12, '127.0.0.1', 1, '2022-07-27'),
(13, '127.0.0.1', 1, '2022-07-27'),
(14, '127.0.0.1', 1, '2022-07-27'),
(15, '127.0.0.1', 1, '2022-07-27'),
(16, '127.0.0.1', 1, '2022-07-27'),
(17, '127.0.0.1', 1, '2022-07-27'),
(18, '127.0.0.1', 1, '2022-07-27'),
(19, '127.0.0.1', 1, '2022-07-27'),
(20, '127.0.0.1', 1, '2022-07-27'),
(21, '127.0.0.1', 1, '2022-07-27'),
(22, '127.0.0.1', 1, '2022-07-27'),
(23, '127.0.0.1', 1, '2022-07-27'),
(24, '127.0.0.1', 1, '2022-07-27'),
(25, '127.0.0.1', 1, '2022-07-27'),
(26, '127.0.0.1', 1, '2022-07-27'),
(27, '127.0.0.1', 1, '2022-07-27'),
(28, '127.0.0.1', 1, '2022-07-27'),
(29, '127.0.0.1', 1, '2022-07-27'),
(30, '127.0.0.1', 1, '2022-07-27'),
(31, '127.0.0.1', 1, '2022-07-27'),
(32, '127.0.0.1', 1, '2022-07-27'),
(33, '127.0.0.1', 1, '2022-07-27'),
(34, '127.0.0.1', 1, '2022-07-27'),
(35, '127.0.0.1', 1, '2022-07-27'),
(36, '127.0.0.1', 1, '2022-07-27'),
(37, '127.0.0.1', 1, '2022-07-27'),
(38, '127.0.0.1', 1, '2022-07-27'),
(39, '127.0.0.1', 1, '2022-07-27'),
(40, '127.0.0.1', 1, '2022-07-27'),
(41, '127.0.0.1', 1, '2022-07-27'),
(42, '127.0.0.1', 1, '2022-07-27'),
(43, '127.0.0.1', 1, '2022-07-27'),
(44, '127.0.0.1', 1, '2022-07-27'),
(45, '127.0.0.1', 1, '2022-07-27'),
(46, '127.0.0.1', 1, '2022-07-27'),
(47, '127.0.0.1', 1, '2022-07-27'),
(48, '127.0.0.1', 1, '2022-07-27'),
(49, '127.0.0.1', 1, '2022-07-27'),
(50, '127.0.0.1', 1, '2022-07-27'),
(51, '127.0.0.1', 1, '2022-07-27'),
(52, '127.0.0.1', 1, '2022-07-27'),
(53, '127.0.0.1', 1, '2022-07-27'),
(54, '127.0.0.1', 1, '2022-07-27'),
(55, '127.0.0.1', 1, '2022-07-27'),
(56, '127.0.0.1', 1, '2022-07-27'),
(57, '127.0.0.1', 1, '2022-07-27'),
(58, '129.18.187.138', 1, '2022-07-28'),
(59, '129.18.187.138', 1, '2022-07-28'),
(60, '129.18.187.138', 1, '2022-07-28'),
(61, '129.18.187.138', 1, '2022-07-28'),
(62, '129.18.187.138', 1, '2022-07-28'),
(63, '129.18.187.138', 1, '2022-07-28'),
(64, '129.18.187.138', 1, '2022-07-28'),
(65, '129.18.187.138', 1, '2022-07-28'),
(66, '129.18.187.138', 1, '2022-07-28'),
(67, '54.36.148.26', 1, '2022-07-28'),
(68, '119.195.157.140', 1, '2022-07-28'),
(69, '34.207.194.89', 7, '2022-07-28'),
(70, '54.227.32.154', 5, '2022-07-28'),
(71, '129.18.187.138', 1, '2022-07-28'),
(72, '129.18.187.138', 1, '2022-07-28'),
(73, '129.18.187.138', 1, '2022-07-28'),
(74, '89.104.100.157', 1, '2022-07-28'),
(75, '137.226.113.44', 2, '2022-07-29'),
(76, '20.54.123.195', 1, '2022-07-29'),
(77, '176.53.223.153', 1, '2022-07-29'),
(78, '45.90.60.105', 1, '2022-07-29'),
(79, '66.249.66.198', 1, '2022-07-29'),
(80, '54.36.149.47', 1, '2022-07-29'),
(81, '129.18.187.112', 1, '2022-07-29'),
(82, '176.53.221.238', 1, '2022-07-30'),
(83, '3.251.97.243', 1, '2022-07-30'),
(84, '95.177.176.177', 2, '2022-07-30'),
(85, '89.104.101.59', 1, '2022-07-30'),
(86, '198.235.24.33', 1, '2022-07-30'),
(87, '112.146.117.89', 1, '2022-07-30'),
(88, '124.87.76.249', 1, '2022-07-30'),
(89, '222.102.99.21', 1, '2022-07-30'),
(90, '59.151.239.154', 1, '2022-07-30'),
(91, '14.14.173.221', 1, '2022-07-30'),
(92, '211.179.91.99', 1, '2022-07-30'),
(93, '54.36.148.4', 1, '2022-07-30'),
(94, '47.243.15.50', 1, '2022-07-30'),
(95, '47.243.9.61', 1, '2022-07-30'),
(96, '102.130.117.240', 2, '2022-07-30'),
(97, '34.222.49.187', 1, '2022-07-30'),
(98, '34.222.49.187', 1, '2022-07-30'),
(99, '169.239.181.72', 1, '2022-07-30'),
(100, '45.90.61.2', 1, '2022-07-30'),
(101, '45.86.200.151', 1, '2022-07-31'),
(102, '45.90.62.193', 1, '2022-07-31'),
(103, '18.206.55.48', 1, '2022-07-31'),
(104, '18.206.55.48', 1, '2022-07-31'),
(105, '211.230.46.186', 1, '2022-07-31'),
(106, '176.194.231.255', 1, '2022-07-31'),
(107, '134.175.228.189', 1, '2022-07-31'),
(108, '134.175.228.189', 1, '2022-07-31'),
(109, '134.175.228.189', 1, '2022-07-31'),
(110, '134.175.228.189', 1, '2022-07-31'),
(111, '134.175.228.189', 1, '2022-07-31'),
(112, '134.175.228.189', 1, '2022-07-31'),
(113, '134.175.228.189', 1, '2022-07-31'),
(114, '54.36.148.70', 1, '2022-07-31'),
(115, '81.161.59.17', 1, '2022-07-31'),
(116, '40.94.100.15', 1, '2022-07-31'),
(117, '54.202.27.196', 1, '2022-07-31'),
(118, '54.202.27.196', 1, '2022-07-31'),
(119, '89.104.110.97', 1, '2022-07-31'),
(120, '18.217.57.138', 1, '2022-08-01'),
(121, '176.53.217.128', 1, '2022-08-01'),
(122, '109.239.58.107', 1, '2022-08-01'),
(123, '18.205.2.52', 4, '2022-08-01'),
(124, '51.75.162.196', 1, '2022-08-01'),
(125, '54.36.149.25', 1, '2022-08-01'),
(126, '35.90.250.92', 1, '2022-08-01'),
(127, '35.90.250.92', 1, '2022-08-01'),
(128, '129.18.187.134', 2, '2022-08-01'),
(129, '176.53.219.196', 1, '2022-08-02'),
(130, '66.249.66.94', 1, '2022-08-02'),
(131, '66.249.66.203', 1, '2022-08-02'),
(132, '66.249.66.94', 1, '2022-08-02'),
(133, '106.75.152.94', 1, '2022-08-02'),
(134, '191.102.153.108', 1, '2022-08-02'),
(135, '199.192.18.45', 1, '2022-08-02'),
(136, '176.53.221.27', 1, '2022-08-02'),
(137, '66.249.66.63', 1, '2022-08-02'),
(138, '42.83.147.34', 1, '2022-08-02'),
(139, '205.210.31.148', 1, '2022-08-02'),
(140, '54.36.149.0', 1, '2022-08-02'),
(141, '34.212.76.40', 1, '2022-08-02'),
(142, '34.212.76.40', 1, '2022-08-02'),
(143, '143.189.229.225', 1, '2022-08-02'),
(144, '66.249.66.65', 1, '2022-08-03'),
(145, '66.249.66.151', 1, '2022-08-03'),
(146, '89.104.110.88', 1, '2022-08-03'),
(147, '198.46.193.213', 1, '2022-08-03'),
(148, '138.94.218.142', 1, '2022-08-03'),
(149, '89.104.101.120', 1, '2022-08-03'),
(150, '18.132.59.128', 1, '2022-08-03'),
(151, '18.132.59.128', 1, '2022-08-03'),
(152, '18.132.59.128', 1, '2022-08-03'),
(153, '18.132.59.128', 1, '2022-08-03'),
(154, '18.132.59.128', 1, '2022-08-03'),
(155, '18.132.59.128', 1, '2022-08-03'),
(156, '34.213.205.91', 1, '2022-08-03'),
(157, '35.92.4.65', 1, '2022-08-03'),
(158, '35.91.252.123', 1, '2022-08-03'),
(159, '34.219.158.5', 1, '2022-08-03'),
(160, '35.167.41.57', 1, '2022-08-03'),
(161, '54.36.148.23', 1, '2022-08-03'),
(162, '176.53.218.168', 1, '2022-08-04'),
(163, '208.80.194.42', 1, '2022-08-04'),
(164, '66.249.66.76', 1, '2022-08-04'),
(165, '94.176.83.95', 1, '2022-08-04'),
(166, '161.129.163.231', 1, '2022-08-04'),
(167, '66.249.66.76', 1, '2022-08-04'),
(168, '34.222.73.40', 1, '2022-08-04'),
(169, '54.71.99.151', 1, '2022-08-04'),
(170, '52.88.145.193', 1, '2022-08-04'),
(171, '34.221.53.41', 1, '2022-08-04'),
(172, '34.220.161.71', 1, '2022-08-04'),
(173, '80.92.14.221', 1, '2022-08-04'),
(174, '122.50.60.228', 1, '2022-08-04'),
(175, '45.90.62.5', 1, '2022-08-05'),
(176, '54.36.148.225', 1, '2022-08-05'),
(177, '197.210.85.215', 1, '2022-08-05'),
(178, '197.210.84.8', 1, '2022-08-05'),
(179, '18.236.252.128', 1, '2022-08-05'),
(180, '176.53.221.202', 1, '2022-08-06'),
(181, '54.36.149.58', 1, '2022-08-06'),
(182, '13.59.91.156', 1, '2022-08-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
