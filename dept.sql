-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 02:45 PM
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
-- Database: `dept`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`) VALUES
(1, 'sahil', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `co_id` int(11) NOT NULL,
  `course_code` text NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `year` text NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`co_id`, `course_code`, `name`, `type`, `year`, `credit`) VALUES
(1, 'ENG', 'Technical English', 'Theory', '1-1', 2),
(2, 'MATH1', 'Engg. Maths', 'Theory', '1-1', 3),
(3, 'CHEM', 'Chemistry', 'Theory', '1-1', 3),
(4, 'CSE1\r\n', 'Problem Solving in Computer Programming', 'Theory', '1-1', 3),
(5, 'CSE2', 'PSCP Lab', 'Lab', '1-1', 1),
(6, 'EEE1', 'Electric circuit', 'Theory', '1-1', 3),
(7, 'EEE2', 'Electrical Circuit Lab', 'Lab', '1-1', 1),
(8, 'CSE3', 'Computer Programming with C', 'Theory', '1-1', 3),
(9, 'CSE4', 'Computer Programming with C Lab', 'Lab', '1-1', 2),
(10, 'ECE1', 'BLE', 'Theory', '1-2', 2),
(11, 'MATH2', 'Engg. Maths', 'Theory', '1-2', 2),
(12, 'PHY', 'Physics', 'Theory', '1-2', 3),
(13, 'CSE5', 'Object Oriented Programming with C++', 'Theory', '1-2', 3),
(14, 'CSE6', 'Object Oriented Programming with C++ Lab', 'Lab', '1-2', 2),
(15, 'MATH3', 'PSQT', 'Theory', '2-1', 2),
(16, 'CSE7', 'Discrete Mathematics', 'Theory', '2-1', 3),
(17, 'ECE2', 'DLD', 'Theory', '2-1', 3),
(18, 'ECE3', 'DLD Lab', 'Lab', '2-1', 1),
(19, 'CSE8', 'Object Oriented Programming with Java', 'Theory', '2-1', 3),
(20, 'CSE9', 'Object Oriented Programming with Java Lab', 'Lab', '2-1', 1),
(21, 'CSE10', 'Software Development Lab I', 'Lab', '2-1', 1),
(22, 'CSE11', 'DAA', 'Theory', '2-2', 1),
(23, 'ECE4', 'ICA', 'Theory', '2-2', 3),
(24, 'CSE12', 'DBMS', 'Lab', '2-2', 5),
(25, 'CSE13', 'Computer Organization', 'Theory', '2-2', 3),
(36, 'CSE14', 'Software Engineering', 'Theory', '1-1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(11) NOT NULL,
  `hall_name` varchar(255) NOT NULL,
  `provost_name` varchar(50) NOT NULL,
  `capability` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `hall_name`, `provost_name`, `capability`) VALUES
(1, 'Shabri', 'Dr.Karthick', '400'),
(2, 'Brahma Putra', 'Dr. Srilatha', '550'),
(3, 'Taz Mahal', 'Dr. Gautam', '530'),
(4, 'Lal Kila', 'Dr. Himabindu', '550'),
(5, 'Hawa Mahal', 'Mr. Raghwa', '600'),
(6, 'Qutub Minar', 'Mrs. Sowmya', '750'),
(7, 'Charminar', 'Mr. abc', '180'),
(8, 'xyz', 'mno', '550'),
(9, 'ijk', 'jkl', '600'),
(10, 'ioa', 'def', '620'),
(11, 'Bangabandhu Sheikh Mujibur Rahman', 'Mohd. Nurul Islam', '500'),
(12, 'Monnujan', 'Dr. Irin Banu Luci', '700'),
(13, 'Begum Rokeya', 'Dr. Nazma Afroz	', '750'),
(14, 'Tapashi Rabeya', 'Dr. Hosne Ara Jesmin', '720'),
(15, 'Begum Khaleda Zia', 'Dr. Salma Banu', '800'),
(16, 'Rahamatunnesa', 'Prof. Dr. Bilkis Begum', '780');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `message`, `time`) VALUES
(11, 'DBMS Project for 2nd CSE students:', 'Last date of project2 submission is may20, 2020.', '2020-04-30 23:56:12'),
(12, 'End sem Exam:', 'According to MHRD guidlines, End sem exam for all undergraduate students are cancelled. Result will be made up based on internal marks and previous sem marks.', '2020-04-24 23:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `roll` int(15) NOT NULL,
  `individual_result` text NOT NULL,
  `total_result` double NOT NULL,
  `grade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `name`, `session`, `year`, `semester`, `roll`, `individual_result`, `total_result`, `grade`) VALUES
(1, 'Sahil', '2017-2018', '1st', 'Odd', 411870, 'ENG-10,\r\nMATH1-10,\r\nCHEM-10,\r\nCSE1-10,\r\nCSE2-10,\r\nEEE1-10,\r\nEEE2-10,\r\nCSE3-10,\r\nCSE4-10', 10, 'A+'),
(2, 'Jatin', '2017-2018', '1st', 'Odd', 411825, 'ENG-10,\r\nMATH1-10,\r\nCHEM-10,\r\nCSE1-10,\r\nCSE2-10,\r\nEEE1-10,\r\nEEE2-10,\r\nCSE3-10,\r\nCSE4-10', 10, 'A+'),
(3, 'Prajjwal ', '2017-2018', '1st', 'Odd', 411862, 'ENG-10,\r\nMATH1-10,\r\nCHEM-10,\r\nCSE1-10,\r\nCSE2-10,\r\nEEE1-10,\r\nEEE2-10,\r\nCSE3-10,\r\nCSE4-10', 10, 'A+'),
(4, 'Ketan', '2017-2018', '1st', 'Odd', 411831, 'ENG-10,\r\nMATH1-10,\r\nCHEM-10,\r\nCSE1-10,\r\nCSE2-10,\r\nEEE1-10,\r\nEEE2-10,\r\nCSE3-10,\r\nCSE4-10', 10, 'A+'),
(5, 'Krishna', '2017-2018', '1st', 'Odd', 411837, 'ENG-10,\r\nMATH1-10,\r\nCHEM-10,\r\nCSE1-10,\r\nCSE2-10,\r\nEEE1-10,\r\nEEE2-10,\r\nCSE3-10,\r\nCSE4-10', 2.5, 'F'),
(6, 'Rohitash', '2017-2018', '1st', 'Odd', 411867, 'ENG-10,\r\nMATH1-10,\r\nCHEM-10,\r\nCSE1-10,\r\nCSE2-10,\r\nEEE1-10,\r\nEEE2-10,\r\nCSE3-10,\r\nCSE4-10', 10, 'A+'),
(7, 'Shantanu', '2017-2018', '1st', 'Odd', 411873, 'ENG-10,\r\nMATH1-10,\r\nCHEM-10,\r\nCSE1-10,\r\nCSE2-10,\r\nEEE1-10,\r\nEEE2-10,\r\nCSE3-10,\r\nCSE4-10', 10, 'A+'),
(8, 'Shatwik', '2017-2018', '1st', 'Even', 411804, 'ECE1-10,\r\nMATH2-10,\r\nPHY-10,\r\nCSE5-10,\r\nCSE6-10', 10, 'A+'),
(9, 'Kapil', '2017-2018', '1st', 'Even', 411822, 'ECE1-10,\r\nMATH2-10,\r\nPHY-10,\r\nCSE5-10,\r\nCSE6-10', 10, 'A+'),
(10, 'Bob', '2017-2018', '1st', 'Even', 411869, 'ECE1-10,\r\nMATH2-10,\r\nPHY-10,\r\nCSE5-10,\r\nCSE6-10', 10, 'A+'),
(11, 'Sahil', '2018-2019', '2nd', 'Odd', 411870, 'MATH3-10,\r\nCSE7-10,\r\nECE3-10,\r\nCSE8-10,\r\nCSE9-10,\r\nCSE10-10', 10, 'A+'),
(12, 'Jatin', '2018-2019', '2nd', 'Odd', 411825, 'MATH3-10,\r\nCSE7-10,\r\nECE3-10,\r\nCSE8-10,\r\nCSE9-10,\r\nCSE10-10', 10, 'A+'),
(13, 'Prajjwal', '2018-2019', '2nd', 'Odd', 411862, 'MATH3-10,\r\nCSE7-10,\r\nECE3-10,\r\nCSE8-10,\r\nCSE9-10,\r\nCSE10-10', 10, 'A+'),
(14, 'Shantanu', '2018-2019', '2nd', 'Even', 411873, 'MATH3-10,\r\nCSE7-10,\r\nECE3-10,\r\nCSE8-10,\r\nCSE9-10,\r\nCSE10-10', 10, 'A+'),
(15, 'Rohitash', '2018-2019', '2nd', 'Even', 411867, 'MATH3-10,\r\nCSE7-10,\r\nECE3-10,\r\nCSE8-10,\r\nCSE9-10,\r\nCSE10-10', 10, 'A+'),
(16, 'Bob', '2018-2019', '2nd', 'Even', 411869, 'MATH3-10,\r\nCSE7-10,\r\nECE3-10,\r\nCSE8-10,\r\nCSE9-10,\r\nCSE10-10', 10, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `room_name` text NOT NULL,
  `room_type` text NOT NULL,
  `room_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_no`, `room_name`, `room_type`, `room_capacity`) VALUES
(1, 120, 'Programming Lab', 'Lab', 90),
(2, 121, 'Microprocessor Lab', 'Lab', 90),
(3, 122, 'Teachers Room', 'Teachers Room', 20),
(4, 217, 'Software Engineering Lab', 'Lab', 90),
(5, 218, 'HOD OFFICE', 'OFFICE', 5),
(6, 219, 'Database Management System Lab', 'Lab', 90),
(8, 223, 'Algorithm Lab', 'Lab', 90);

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `r_id` int(11) NOT NULL,
  `week` text NOT NULL,
  `year` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  `type` text NOT NULL,
  `course_code` int(11) NOT NULL,
  `time` text NOT NULL,
  `teacher_id` text NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`r_id`, `week`, `year`, `session`, `type`, `course_code`, `time`, `teacher_id`, `room_no`) VALUES
(1, 'Saturday', '1-1', '2017-2018', 'Theory', 8, '8:15-9:15', '5', 120),
(2, 'Saturday', '1-1', '2017-2018', 'Theory', 6, '9:20-10:20', '7', 10),
(3, 'Saturday', '1-1', '2017-2018', 'Lab', 7, '10:25-12:30', '7', 9),
(4, 'Saturday', '2-2', '2017-2018', 'Theory', 34, '9:20-10:20', '20', 7),
(5, 'Saturday', '2-2', '2017-2018', 'Theory', 32, '10:25-11:25', '22', 7),
(6, 'Saturday', '2-2', '2017-2018', 'Lab', 33, '11:30-1:35', '22', 7),
(7, 'Saturday', '3-2', '2017-2018', 'Theory', 54, '9:20-10:20', '12', 4),
(8, 'Saturday', '3-2', '2017-2018', 'Theory', 57, '10:25-11:25', '21', 4),
(9, 'Saturday', '3-2', '2017-2018', 'Lab', 53, '11:30-1:35', '2', 4),
(10, 'Saturday', '4-2', '2017-2018', 'Theory', 69, '8:15-9:15', '23', 1),
(11, 'Saturday', '4-2', '2017-2018', 'Theory', 71, '9:20-10:20', '24', 1),
(12, 'Saturday', '4-2', '2017-2018', 'Lab', 70, '10:25-12:30', '21', 1),
(13, 'Sunday', '1-1', '2018-2019', 'Theory', 4, '9:20-10:20', '12', 10),
(14, 'Sunday', '1-1', '2018-2019', 'Theory', 1, '10:25-11:25', '2', 10),
(15, 'Sunday', '1-1', '2018-2019', 'Lab', 5, '11:30-1:35', '2', 9),
(16, 'Sunday', '2-2', '2018-2019', 'Theory', 34, '8:15-9:15', '20', 7),
(17, 'Sunday', '2-2', '2018-2019', 'Theory', 32, '10:25-11:25', '18', 7),
(18, 'Sunday', '2-2', '2018-2019', 'Lab', 37, '11:30-1:35', '4', 7),
(19, 'Sunday', '3-2', '2018-2019', 'Theory', 55, '9:20-10:20', '18', 4),
(20, 'Sunday', '3-2', '2018-2019', 'Lab', 77, '10:25-12:30', '12', 4),
(21, 'Sunday', '3-2', '2018-2019', 'Theory', 57, '12:35-1:35', '21', 4),
(22, 'Sunday', '4-2', '2018-2019', 'Theory', 73, '8:15-9:15', '15', 1),
(23, 'Sunday', '4-2', '2018-2019', 'Lab', 72, '9:20-11:25', '22', 1),
(24, 'Sunday', '4-2', '2018-2019', 'Theory', 75, '11:30-12:30', '3', 1),
(25, 'Monday', '1-1', '2018-2019', 'Theory', 6, '10:25-11:25', '7', 7),
(26, 'Monday', '1-1', '2015-2016', 'Theory', 1, '11:30-12:30', '2', 10),
(28, 'Monday', '2-2', '2013-2014', 'Theory', 36, '10:25-11:25', '1', 6),
(30, 'Monday', '3-2', '2012-2013', 'Theory', 52, '10:25-11:25', '2', 4),
(32, 'Monday', '3-2', '2012-2013', 'Lab', 56, '11:30-1:35', '11', 4),
(35, 'Tuesday', '1-1', '2015-2016', 'Theory', 4, '9:20-10:20', '12', 10),
(36, 'Tuesday', '1-1', '2015-2016', 'Theory', 8, '10:25-11:25', '5', 10),
(37, 'Tuesday', '1-1', '2015-2016', 'Lab', 9, '11:30-1:35', '5', 7),
(62, 'Thursday', '2-2', '2013-2014', 'Theory', 36, '11:30-12:30', '4', 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `hall_id` int(10) DEFAULT NULL,
  `gpa` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `roll`, `session`, `year`, `hall_id`, `gpa`) VALUES
(1, 'Sahil', '411870', '2017-2018', 'First', 4, 0),
(2, 'Jatin', '411825', '2017-2018', 'First', 4, 0),
(3, 'prajjwal', '411862', '2017-2018', 'First', 1, 0),
(4, 'Ketan', '411831', '2017-2018', 'First', 9, 0),
(5, 'Rohitash', '411867', '2017-2018', 'First', 10, 0),
(6, 'Shantanu', '411873', '2017-2018', 'First', 2, 0),
(7, 'Shatwik', '411804', '2017-2018', 'First', 6, 0),
(8, 'Kapil', '411822', '2017-2018', 'First', 4, 0),
(9, 'Bob', '411869', '2017-2018', 'First', 2, 0),
(10, 'Sahil', '411870', '2018-2019', 'Second', 8, 0),
(11, 'Jatin', '411825', '2018-2019', 'Second', 10, 0),
(12, 'Prajjwal', '411862', '2018-2019', 'Second', 6, 0),
(14, 'Shantanu', '411873', '2018-2019', 'Second', 7, 0),
(15, 'Rohitash', '411869', '2018-2019', 'Second', 6, 0),
(16, 'Bob', '411869', '2018-2019', 'Second', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `Present_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `fathers_name` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `ssc_gpa` double NOT NULL,
  `hsc_gpa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `Present_address`, `permanent_address`, `fathers_name`, `mothers_name`, `mobile`, `ssc_gpa`, `hsc_gpa`) VALUES
(1, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(2, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(3, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(4, 'NIT AP', 'Andhra Pradesh\r\n', 'abc\r\n', 'xyz', '9999999999', 10, 10),
(5, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(6, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', ' 9999999999', 10, 10),
(7, 'NIT AP\r\n', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(8, 'NIT AP\r\n', 'Andhra Pradesh', 'abc\r\n', 'xyz', '9999999999', 10, 10),
(9, 'NIT AP\r\n', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(10, 'NIT AP\r\n', 'Andhra Pradesh', 'abc\r\n', 'xyz\r\n', '', 10, 10),
(11, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(12, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz\r\n', '9999999999', 10, 10),
(13, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(14, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(15, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10),
(16, 'NIT AP', 'Andhra Pradesh', 'abc', 'xyz', '9999999999', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `t_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `qualification` text NOT NULL,
  `course` varchar(255) NOT NULL,
  `research` text NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`t_id`, `name`, `type`, `qualification`, `course`, `research`, `status`) VALUES
(1, 'Dr.Karthick', 'HOD', 'Ph.D. ', 'DAA,\r\nPSCP,\r\nOS,\r\nML,\r\nDBMS,\r\nAI', 'MANY MORE,\r\nMANY MORE,\r\nMANY MORE,\r\nMANY MORE', 'Present'),
(2, 'Dr. Srilatha', 'Associate Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'present'),
(3, 'Dr. Himabindu', 'Associate Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'present'),
(4, 'Dr. Gautam', 'Associate Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'present'),
(5, 'Dr. Srilatha Mam', 'Assistant Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'present'),
(6, 'Dr. def', 'Assistant Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'absent'),
(7, 'Mr. abc', 'Assistant Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'absent'),
(8, 'Mr. Raghwa', 'Adhoc Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'present'),
(9, 'Mrs. Sownya', 'Adhoc Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'present'),
(10, 'Mr. mno', 'Adhoc Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'absent'),
(11, 'Mr. jkl', 'Adhoc Proffessor', 'P.hd', 'DBMS, DAA, ML, AI', 'many more, many more', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE `teacher_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`id`, `user_name`, `password`) VALUES
(1, 'karthick', 1234),
(2, 'srilatha', 1234),
(3, 'gautam', 1234),
(4, 'himabindu', 1234),
(5, 'raghwa', 1234),
(6, 'sowmta', 1234),
(7, 'abc', 1234),
(8, 'mno', 1234),
(9, 'jkl', 1234),
(10, 'def', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fathers_name` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `age` varchar(20) NOT NULL,
  `roll_number` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `cgpa` double DEFAULT NULL,
  `hall` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `fathers_name`, `mothers_name`, `present_address`, `permanent_address`, `age`, `roll_number`, `session`, `year`, `cgpa`, `hall`, `image`) VALUES
(30, 'rohitash', 'rohitash@gmail.com', '1234', 'xyz', 'abc', 'NIT AP', 'Andhra Pradesh', '20', '411867', '2018-2019', '2', 10, '120', 'pics/rohitash@gmail.com.jpg'),
(11, 'sahil', 'sahil@gmail.com', '1234', 'abc', 'xyz', 'Andhra Pradesh', 'Andhra Pradesh', '20', '411870', '2017-18', '2nd', 10, 'shabri', 'pics/sahil@gmail.com.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_no` (`room_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`,`roll`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `teacher_login`
--
ALTER TABLE `teacher_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `teacher_login`
--
ALTER TABLE `teacher_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
