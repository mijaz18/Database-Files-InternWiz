--
-- Database: `internWiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--
CREATE TABLE IF NOT EXISTS Students (
  student_id int(06) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  department varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  PRIMARY KEY (student_id)
);

--
-- Table structure for table `Employers`
--
CREATE TABLE IF NOT EXISTS Employers (
  employer_id int(06) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  phone varchar(14) DEFAULT NULL,
  PRIMARY KEY (employer_id)
);

--
-- Table structure for table `Faculty`
--
CREATE TABLE IF NOT EXISTS Faculty (
  faculty_id int(06) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  department varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  PRIMARY KEY (faculty_id)
);

--
-- Table structure for table `Employers`
--
CREATE TABLE IF NOT EXISTS Jobs (
  job_id int(06) NOT NULL AUTO_INCREMENT,
  employer_id int(06) NOT NULL,
  description varchar(255) DEFAULT NULL,
  majors varchar(255) DEFAULT NULL,
  PRIMARY KEY (job_id),
  FOREIGN KEY (employer_id) REFERENCES Employers(employer_id)
	ON DELETE CASCADE
    	ON UPDATE CASCADE
);

--
-- Table structure for table `Referrals`
--
CREATE TABLE IF NOT EXISTS Referrals (
  referral_id int(06) NOT NULL AUTO_INCREMENT,
  student_id int(06) NOT NULL,
  faculty_id int(06) NOT NULL,
  job_id int(06) NOT NULL,
  PRIMARY KEY (referral_id),
  FOREIGN KEY (student_id) REFERENCES Students(student_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (job_id) REFERENCES Jobs(job_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);