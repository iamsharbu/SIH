-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2018 at 03:55 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataforms`
--

CREATE TABLE `dataforms` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `filmname` varchar(100) NOT NULL,
  `filmdescription` text NOT NULL,
  `filmbudget` int(255) NOT NULL,
  `equipmentsinvolved` varchar(1000) NOT NULL,
  `noofcrewmembers` int(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `rating` int(5) NOT NULL,
  `policedepartment` varchar(20) NOT NULL,
  `municipalauthority` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataforms`
--

INSERT INTO `dataforms` (`firstname`, `lastname`, `userid`, `email`, `filmname`, `filmdescription`, `filmbudget`, `equipmentsinvolved`, `noofcrewmembers`, `location`, `startdate`, `enddate`, `rating`, `policedepartment`, `municipalauthority`, `status`) VALUES
('Dinesh', 'Kumar', 'dk123', 'dineshmnaidu@gmail.c', 'deku', 'asdfghjklkjhgfdsaSDFGHJKLKJHGFDSASDFGHJKJHGFDSSDFGHJK', 100000, 'ASDFGHJKLKJHGFDSASDFGHJKLJHGFDSASDFGHJKJHGFDSDFGHJK', 299, 'Imperial Rajasthan', '2018-02-22', '2018-04-22', 0, 'approved', 'approved', 'approved'),
('zsdfgvhnjk', 'ewzdgvhnj', 'etrl,kjhgdf', 'estrgvhnjkl@gmail.co', 'balaji 123', 'trjkljgfdghjkl;jkkhl;/ojkgjhkl;jdfghjewbhnjmkzesrctfybhuinjmozesrcfbh', 100000000, 'xdfghj;l,;lkjhmfbdxgk;lkdfhjk;l\';lzdfhbknmghbjkmldnashkl;fdklsjab,hdf\'mgashldfk;ljaskdlf', 1000, 'Taj Mahal', '2018-01-15', '2018-01-19', 0, 'approved', 'approved', 'approved'),
('Mohamed', 'sharbudeen', 'iamsharbu98', 'iamsharbu@gmail.com', 'Black Swan', 'The main idea in Taleb\'s book is not to attempt to predict Black Swan events, but to build robustness to negative ones that occur and to be able to exploit positive ones.', 55000000, 'Motion picture projects have three discrete stages: development, production and distribution. Within the production stage there are also three clearly defined sequential phases â€” pre-production, principal photography and post-production ', 355, 'Taj Mahal', '2018-01-24', '2018-02-02', 0, 'approved', 'approved', 'approved'),
('Jos', 'Hopkins', 'jhop01', 'jhop01@gmail.com', 'Cage Dive', 'Three friends filming an audition tape for an extreme reality show, take part in shark cage diving, only to be left in great white infested waters, turning their recording into life and ...', 20000000, 'The film director gives direction to the cast and crew and creates an overall vision through which a film eventually becomes realized, or noticed. Directors need to be able to mediate differences in creative visions and stay within the boun', 200, 'Imperial Rajasthan', '2018-02-05', '2018-03-15', 0, 'approved', '', ''),
('Michael', 'James', 'michaelj_5', 'mj_5@gmail.com', 'The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 10000000, 'The set decorator is in charge of the decorating of a film set, which includes the furnishings and all the other objects that will be seen in the film. They work closely with the production designer and coordinate with the art director.', 150, 'Akbari Sarai', '2018-03-29', '2018-05-17', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `licensedata`
--

CREATE TABLE `licensedata` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `productionname` varchar(50) NOT NULL,
  `bookdate` date NOT NULL,
  `validtill` date NOT NULL,
  `licenseno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licensedata`
--

INSERT INTO `licensedata` (`fname`, `lname`, `userid`, `productionname`, `bookdate`, `validtill`, `licenseno`) VALUES
('Dinesh', 'Kumar', 'dk123', 'deku', '2018-02-22', '2018-04-22', 942478369),
('zsdfgvhnjk', 'ewzdgvhnj', 'etrl,kjhgdf', 'balaji 123', '2018-01-15', '2018-01-19', 1140136963),
('Mohamed', 'sharbudeen', 'iamsharbu98', 'Black Swan', '2018-01-24', '2018-02-02', 1423989833);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_first` varchar(256) NOT NULL,
  `user_last` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_uid` varchar(256) NOT NULL,
  `user_pwd` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_first`, `user_last`, `user_email`, `user_uid`, `user_pwd`) VALUES
(1, 'Mohamed', 'Sharbudeen', 'iamsharbu@gmail.com', 'iamsharbu98', '$2y$10$RstSV5DrB1oJYWMJeBo0Au.iRVjWx2nU0Q0kaO2sXCq4AQrjLounS'),
(2, 'Michael', 'Jordan', 'mjordan@yahoo.com', 'michaelj_5', '$2y$10$54VD3v.PYqH63zWZqEHPUe/z4Vw6VArM.9D6XoID5oMgzzyq1EP36'),
(3, 'Abdul', 'Waheed', 'abwaheed@gmail.com', 'abdulw', '$2y$10$eydDJGlzFQlLwHaQvQQQpe5i8lSr7EzI9O8BYeKHPWv5T2Lfi0p8e'),
(4, 'Jos', 'Hopkins', 'jhop01@gmaill.com', 'jhop01', '$2y$10$Utla0HNTHgoCQOuJf3Us.OAHzQq4E8j.i2ecvCii1SoUy08uKCoSy'),
(5, 'Callum', 'Moger', 'callumm@gmaill.com', 'callumvon', '$2y$10$wsJTdW7F/CyQGgJXhHW98eVX2Xae9t9YJl4xzckdkGG9jpkBgbA1a'),
(6, 'Balaji', 'Devaraj', 'iamsharbu@gmail.com', 'balaji123', '$2y$10$NoTC.4zG6SGmT0q4W1PcPuz.FZcCDGpy0uz8RprdQIT0yYYOwOdde'),
(7, 'Dinesh', 'Kumar', 'dineshmnaidu@gmail.com', 'dk123', '$2y$10$PTayi3QzMoiDxm/KnZVfs.II3rnVpLXFoE5bT8OATC.UFPRY.qVjK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataforms`
--
ALTER TABLE `dataforms`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `licensedata`
--
ALTER TABLE `licensedata`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `productionname` (`productionname`),
  ADD UNIQUE KEY `licenseno` (`licenseno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
