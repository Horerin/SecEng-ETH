CREATE DATABASE IF NOT EXISTS CourseProject;
USE CourseProject;
-- ----------------------------------------------------
-- This table represents the class'Course'
-- ----------------------------------------------------
CREATE table IF NOT EXISTS Course(
	pk INT NOT NULL auto_increment,
	maxCapacity int NULL,
	name text NULL,
	belongingTo int NULL,
	professor int NULL,
	primary key (pk)
) ENGINE=InnoDB;

--
-- This table represents the association 'Course.staff'
--
CREATE table IF NOT EXISTS Course_staff__Person_teaches(
	Course_staff INT NULL,
	Person_teaches INT NULL
) ENGINE=InnoDB;

--
-- This table represents the association 'Course.pastStudents'
--
CREATE table IF NOT EXISTS Course_pastStudents__FinalGrade_course(
	Course_pastStudents INT NULL,
	FinalGrade_course INT NULL
) ENGINE=InnoDB;

--
-- This table represents the association 'Course.currStudents'
--
CREATE table IF NOT EXISTS Course_currStudents__ProvisionalGrade_course(
	Course_currStudents INT NULL,
	ProvisionalGrade_course INT NULL
) ENGINE=InnoDB;

--
-- This table represents the association 'Course.taRequests'
--
CREATE table IF NOT EXISTS Course_taRequests__TeachRequest_course(
	Course_taRequests INT NULL,
	TeachRequest_course INT NULL
) ENGINE=InnoDB;



-- ----------------------------------------------------
-- This table represents the class'Department'
-- ----------------------------------------------------
CREATE table IF NOT EXISTS Department(
	pk INT NOT NULL auto_increment,
	name text NULL,
	primary key (pk)
) ENGINE=InnoDB;

--
-- This table represents the association 'Department.offers'
--
CREATE table IF NOT EXISTS Course_belongingTo__Department_offers(
	Course_belongingTo INT NULL,
	Department_offers INT NULL
) ENGINE=InnoDB;

--
-- This table represents the association 'Department.employs'
--
CREATE table IF NOT EXISTS Department_employs__Person_belongs(
	Department_employs INT NULL,
	Person_belongs INT NULL
) ENGINE=InnoDB;



-- ----------------------------------------------------
-- This table represents the class'FinalGrade'
-- ----------------------------------------------------
CREATE table IF NOT EXISTS FinalGrade(
	pk INT NOT NULL auto_increment,
	value int NULL,
	course int NULL,
	student int NULL,
	primary key (pk)
) ENGINE=InnoDB;



-- ----------------------------------------------------
-- This table represents the class'Person'
-- ----------------------------------------------------
CREATE table IF NOT EXISTS Person(
	pk INT NOT NULL auto_increment,
	username text NULL,
	name text NULL,
	role int NULL,
	surname text NULL,
	password text NULL,
	belongs int NULL,
	primary key (pk)
) ENGINE=InnoDB;

--
-- This table represents the association 'Person.administers'
--
CREATE table IF NOT EXISTS Course_professor__Person_administers(
	Course_professor INT NULL,
	Person_administers INT NULL
) ENGINE=InnoDB;

--
-- This table represents the association 'Person.currCourses'
--
CREATE table IF NOT EXISTS Person_currCourses__ProvisionalGrade_student(
	Person_currCourses INT NULL,
	ProvisionalGrade_student INT NULL
) ENGINE=InnoDB;

--
-- This table represents the association 'Person.courseRequests'
--
CREATE table IF NOT EXISTS Person_courseRequests__TeachRequest_ta(
	Person_courseRequests INT NULL,
	TeachRequest_ta INT NULL
) ENGINE=InnoDB;

--
-- This table represents the association 'Person.pastCourses'
--
CREATE table IF NOT EXISTS FinalGrade_student__Person_pastCourses(
	FinalGrade_student INT NULL,
	Person_pastCourses INT NULL
) ENGINE=InnoDB;



-- ----------------------------------------------------
-- This table represents the class'ProvisionalGrade'
-- ----------------------------------------------------
CREATE table IF NOT EXISTS ProvisionalGrade(
	pk INT NOT NULL auto_increment,
	value int NULL,
	course int NULL,
	student int NULL,
	primary key (pk)
) ENGINE=InnoDB;



-- ----------------------------------------------------
-- This table represents the class'TeachRequest'
-- ----------------------------------------------------
CREATE table IF NOT EXISTS TeachRequest(
	pk INT NOT NULL auto_increment,
	course int NULL,
	ta int NULL,
	primary key (pk)
) ENGINE=InnoDB;



