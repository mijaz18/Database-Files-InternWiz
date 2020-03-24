--
-- Database: `internWiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--
CREATE TABLE IF NOT EXISTS 'Students' (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
);
--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`student_id`, `name`, `department`, `email`) VALUES
(000001, 'David John', 'Fiance', 'djohn@college.edu'),
(000002, 'Rogers Paul', 'Graphic Design', 'prog10@college.edu'),
(000003, 'Maria Sanders', 'History', 'msand8@college.edu'),
(000004, 'Mark Thomas', 'Marketing', 'mthomas15@college.edu'),
(000005, 'Morris Miller', 'Computer Science', 'mmiller@college.edu'),
(000006, 'Daniel Michael', 'Marketing', 'dmich@college.edu'),
(000007, 'Mark Mike', 'Political Science', 'magicmike@college.edu'),
(000008, 'David John', 'Nursing', 'djohn5@college.edu'),
(000009, 'Morgan Maria', 'Computer Science', 'mmaria@college.edu'),
(0000010, 'Paul Sanders', 'History', 'psand@college.edu');
