-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 07:54 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unique_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `studentId_fk` varchar(40) NOT NULL,
  `answer` varchar(40) NOT NULL,
  `submitDate` datetime NOT NULL,
  `examId_fk` varchar(40) NOT NULL,
  `courseId_fk` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`studentId_fk`, `answer`, `submitDate`, `examId_fk`, `courseId_fk`) VALUES
('ST37774', 'answer.pdf', '2021-06-25 05:48:41', 'EX24021', 'CD13159'),
('ST93603', 'answer.pdf', '2021-06-24 03:21:28', 'EX24021', 'CD13159'),
('ST89309', 'answer.pdf', '2021-06-25 05:57:38', 'EX65910', 'CD54834');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseId` varchar(40) NOT NULL,
  `courseName` varchar(100) NOT NULL,
  `courseCategory` varchar(100) NOT NULL,
  `couseDescription` varchar(2000) NOT NULL,
  `courseDuration` varchar(20) NOT NULL,
  `coverImage` varchar(1000) NOT NULL,
  `teacherId_fk` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseId`, `courseName`, `courseCategory`, `couseDescription`, `courseDuration`, `coverImage`, `teacherId_fk`) VALUES
('CD13159', 'Grade 11 – Science - velocity -', 'Ordinary Level', 'Assessment report based on your answers. Each subchapter contains a summary, which can be used as a short method', '1 Month', 'velocity.jpg', 'TC63298'),
('CD14972', 'Grade 11 – Science - Gravitation - June', 'Ordinary Level', 'The time-saving online video lessons in the Gravitation unit explore gravity, its affect on objects with mass, and explains the rules governing gravitation', '1 Month', 'Gravitation.png', 'TC16915'),
('CD18388', 'Gene Biology Professional Certificate', 'Certificate', 'we used this knowledge to understand the structure of a gene', '6 Months', 'geneBiology.jpeg', 'TC63298'),
('CD44787', 'Introduction to Physics.', 'Certificate', 'The time-saving online video lessons in the Introduction to Physics unit provide a basic overview of physics and cover topics such as the scientific method', '6 Months', 'introduction-to-physics-1-728.jpg', 'TC22767'),
('CD46803', 'Grade 10 - Heat and Thermodynamics', 'Ordinary Level', 'The time-saving online video lessons in the Heat and Thermodynamics unit explain the concepts of entropy and enthalpy ', '1 Month', 'illustration-heat-thermometer.jpg', 'TC16915'),
('CD54834', '2022 Theory - The Ecology of Your Skin - June/July/Aug', 'Advanced Level', 'students discover the diverse organisms that live on the human body.Students examine the relationship between humans and skin bacteria.', '3 Months', 'The Ecology of Your Skin.png', 'TC63298'),
('CD65607', '2023 Theory -  Cells And Photosynthesis - June - ', 'Advanced Level', 'Students will identify major cell components; know structures and functions of components; understand how the parts of a cell interact together.', '1 Month', 'cells.jpg', 'TC63298'),
('CD73293', 'Grade 10 - Newtons Laws ', 'Ordinary Level', 'The time-saving online video lessons in the Newtons Laws', '1 Month', 'Newton_s-second-law.jpg', 'TC22767'),
('CD83223', '2023 Theory - Energy and Momentum - June', 'Advanced Level', 'The time-saving online video lessons in the Energy and Momentum unit discuss different types of energy and how that energy translates into momentum in addition to explaining the principles of conservation of energy and momentum', '1 Month', 'Energy and Momentum.png', 'TC22767'),
('CD96420', '2022 Theory -Linear and Projectile Motion- June', 'Advanced Level', ' The time-saving online video lessons in the Linear and Projectile Motion unit explain the different ways in which physics has broken down and quantified motion and explores characteristics of motion such as velocity and acceleration', '1 Month', 'Linear and Projectile Motion.jpg', 'TC22767');

-- --------------------------------------------------------

--
-- Table structure for table `coursevideo`
--

CREATE TABLE `coursevideo` (
  `videoCount` int(11) NOT NULL,
  `courseId_fk` varchar(40) NOT NULL,
  `videoNumber` int(11) NOT NULL,
  `videoTitle` varchar(1000) NOT NULL,
  `courseVideo` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursevideo`
--

INSERT INTO `coursevideo` (`videoCount`, `courseId_fk`, `videoNumber`, `videoTitle`, `courseVideo`, `status`) VALUES
(12, 'CD13159', 1, 'Velocity video 1', 'file_example_MP4_480_1_5MG.mp4', 'COMPLETED'),
(13, 'CD13159', 2, 'Velocity video 2', 'file_example_MP4_480_1_5MG.mp4', 'ACTIVE'),
(14, 'CD18388', 1, 'Introduction', 'file_example_MP4_480_1_5MG.mp4', 'ACTIVE'),
(15, 'CD18388', 2, 'Introduction part 2', 'file_example_MP4_480_1_5MG.mp4', 'ACTIVE'),
(16, 'CD54834', 1, 'Week 01 part 01', 'file_example_MP4_480_1_5MG.mp4', 'ACTIVE'),
(18, 'CD54834', 2, 'Week 01 part 02', 'file_example_MP4_480_1_5MG.mp4', 'ACTIVE'),
(19, 'CD65607', 1, 'Week 01 part 01', 'file_example_MP4_480_1_5MG.mp4', 'ACTIVE'),
(20, 'CD65607', 2, 'Week 01 part 02', 'file_example_MP4_480_1_5MG.mp4', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enrollId` varchar(40) NOT NULL,
  `endDate` date NOT NULL,
  `startDate` date NOT NULL,
  `studentId_fk` varchar(40) NOT NULL,
  `courseId_fk` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enrollId`, `endDate`, `startDate`, `studentId_fk`, `courseId_fk`) VALUES
('EN94251', '2021-07-24', '2021-06-24', 'ST93603', 'CD65607'),
('EN27197', '2021-07-24', '2021-06-24', 'ST93603', 'CD13159'),
('EN47000', '2021-07-24', '2021-06-24', 'ST93603', 'CD96420'),
('EN35638', '2021-12-21', '2021-06-24', 'ST93603', 'CD44787'),
('EN58229', '2021-07-24', '2021-06-24', 'ST37774', 'CD96420'),
('EN37094', '2021-12-21', '2021-06-24', 'ST37774', 'CD44787'),
('EN24925', '2021-09-22', '2021-06-24', 'ST37774', 'CD54834'),
('EN86901', '2021-07-24', '2021-06-24', 'ST37774', 'CD13159'),
('EN29862', '2021-07-25', '2021-06-25', 'ST89309', 'CD13159'),
('EN29605', '2021-09-23', '2021-06-25', 'ST89309', 'CD54834');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `examId` varchar(40) NOT NULL,
  `examPaper` varchar(1000) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `examDescription` varchar(2000) NOT NULL,
  `teacherId_fk` varchar(40) NOT NULL,
  `courseId_fk` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`examId`, `examPaper`, `startTime`, `endTime`, `examDescription`, `teacherId_fk`, `courseId_fk`) VALUES
('EX24021', 'sample exam.pdf', '2021-06-24 18:47:00', '2021-06-24 20:47:00', 'These include sample tests', 'TC63298', 'CD13159'),
('EX65910', 'sample exam.pdf', '2021-06-25 09:26:00', '2021-06-29 00:00:00', 'Make sure you are familiar with these examination guidelines before the day of your exam', 'TC63298', 'CD54834');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `studentId` varchar(40) NOT NULL,
  `result` varchar(40) NOT NULL,
  `courseId` varchar(40) NOT NULL,
  `teacherId` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`studentId`, `result`, `courseId`, `teacherId`) VALUES
('ST93603 ', 'A', 'CD13159', ' EX24021  ');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentId` varchar(40) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contactNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `firstName`, `lastName`, `email`, `password`, `contactNumber`) VALUES
('ST37774', 'josh', 'manas', 'josh@gmail.com', '1234', '+94779934601'),
('ST89309', 'Tim', 'jessie', 'tim@gmail.com', '1234', '+9477124501'),
('ST93603', 'Olly', 'Stone', 'olly@gmail.com', '1234', '+9477992250');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherId` varchar(40) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contactNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherId`, `firstName`, `lastName`, `email`, `qualification`, `password`, `contactNumber`) VALUES
('TC16915', 'duan', 'oliver', 'duan@gmail.com', 'Dip in edu', '1234', '+9478223343'),
('TC22767', 'Chad', 'Walton', 'chad@gmail.com', 'Bsc in Physics', '1234', '+9478256789'),
('TC63298', 'Ann', 'Stele', 'Ann@gmail.com', 'Bsc in Biology', '1234', '+9478223201');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`examId_fk`,`studentId_fk`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseId`);

--
-- Indexes for table `coursevideo`
--
ALTER TABLE `coursevideo`
  ADD PRIMARY KEY (`videoCount`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`examId`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`studentId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentId`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursevideo`
--
ALTER TABLE `coursevideo`
  MODIFY `videoCount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
