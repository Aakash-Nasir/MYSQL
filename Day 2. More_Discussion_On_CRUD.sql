-- Previous Lesson Commands
-- SHOW databases;
-- USE mysql_bootcamp_with_priya_bhatia;
-- select database();
-- show tables;
-- desc employees;

use mysql_bootcamp_with_priya_bhatia;

-- CREATE A TABLE BY NAME OF COURSES HAVING FEILD NAMED COURSE_ID COURSE_NAME COURSEDURATION_MONTHS COURSE_FEE ;

create table COURSE (
CourseId int  Primary key auto_increment , 
CourseName varchar(50) not null,
CourseDuration_Months int not null,
CourseFee int not null
);

desc COURSE;

-- Insert the course details inside the table named courses 
-- " The Complete Excel Mastery Course" ,3,1499
-- " DSA for Interview Prepration" ,2,4999 
-- " SQL BootCamp" , 1,2999

insert into COURSE (CourseName,CourseDuration_Months,CourseFee) 
values ("The Complete Excel Mastery Course", 3,1499),
(" DSA for Interview Prepration",2,4999),
( " SQL BootCamp" , 1,2999);
 
 select * from course;

create table LEARNER(
Learner_Id int auto_increment,
LearnerFirstName varchar(50) not null,
LearnerLastName varchar (50) NOT null,
LearnerEmailID varchar(50) not null,
LearnerPhoneNum  varchar(10) not null,
LearnerEnrollmentDate timestamp not null,
SelectedCourses int not null,
YearOfExperience int not null, 
LearnerCompany varchar(50) ,
SourceOfJoining varchar(50) not null,
Batch_Start_Date timestamp not null,
-- TIME STAMP FORMAT (yyyy-mm-dd hh:mm:ss)
Location varchar(50) not null,
primary key(Learner_Id),
unique key(LearnerEmailID),
foreign key(SelectedCourses) references COURSE(CourseId)
);
desc LEARNER;


 -- insert the learner details in the table
 -- Batch start date 1 "2024-02-29"
 -- Batch start date 2 "2024-01-16"
 -- Batch start date 3 "2024-03-25"
 
 INSERT INTO LEARNER (
    LearnerFirstName,
    LearnerLastName,
    LearnerEmailID,
    LearnerPhoneNum,
    LearnerEnrollmentDate,
    SelectedCourses,
    YearOfExperience,
    LearnerCompany,
    SourceOfJoining,
    Batch_Start_Date,
    Location
) 
VALUES 
	("Aman", "Raj", "amanraj151@gmail.com", "9256319778", "2024-01-10", 2, 3, "Apple", "Linkedin", "2023-02-11", "Panipat"),
    ("Bhavishay", "Kumar", "bhavishaykumar71@gmail.com", "9352423170", "2024-02-02", 2, 3, "Facebook", "Community", "2024-01-27", "Delhi"),
   ("Aakash", "Nasir", "aakashnasir9@gmail.com", "8398093170", "2024-01-21", 1, 4, "MicroSoft", "Youtube", "2024-01-09", "Gurugram"),
    ("Arpit", "Dalal", "arpitdalal10@gmail.com", "9812349048", "2024-01-29", 2, 3, "Amazon", "Youtube", "2024-02-01", "Delhi"),
    ("Haresh", "Kumar", "hareshkumar33@gmail.com", "9563417870", "2024-01-01", 1, 1, "Google", "Linkedin", "2024-01-09", "Guruwara"),
    ("Aman", "Rao", "amanrao51@gmail.com", "9256319008", "2024-01-19", 2, 3, "Apple", "Linkedin", "2023-02-11", "Rewari"),
    ("Bhavesh", "Nasir", "bhaveshnasir91@gmail.com", "8352423170", "2024-02-01", 2, 3, "Facebook", "Youtube", "2024-01-28", "Pataudi"),
    ("Harshit", "Thakaran", "harshitthakaran33@gmail.com", "8695417870", "2024-02-07", 3, 3, "Google", "Linkedin", "2024-01-12", "Gurugram");

       select * from Learner;
	
    -- DATA ANALYSIS [EMPLOYEES , COURSE,LEARNER]
    -- 1. GIVE RECORDS OF EMP WHO ARE GETTING HIGHEST SALARY
select * FROM employees ORDER BY SALARY DESC LIMIT 3;
/*
 FLOW OF ABOVE COMMAND 
 FROM -> SELECT -> ORDER BY -> LIMIT
 */
-- 2. GIVE RECORD OF EMP GETTING HIGHEST SALARY AND AGE BIGGER THAN 25
SELECT * FROM employees WHERE AGE >25 order by SALARY DESC LIMIT 1; 
    /*
 FLOW OF ABOVE COMMAND  
 FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT
 */
   
    -- 3. DISPLAY NO. OF ENROLLMENTS IN THE WEBSITE OF mysql_bootcamp_with_priya_bhatia
       select count(*) as num_of_enrollments from LEARNER;
       
       -- 4. DISPLAY THE NUM OF ENROLLMENTS FOR THE COURS ID = 3 [SQL BOOTCAMP]
       SELECT COUNT(*) AS NUM_0F_ENROLLEMENTS_SQL_BOOTCAMP FROM LEARNER WHERE SELECTEDCOURSES = 3;
       
       -- 5. COUNT THE NUMBER OF LEARNER ENROLLED IN THE MONTH OF JAN
    select count(*) FROM LEARNER WHERE LearnerEnrollmentDate like '%-01-%';
    
    -- 6 update the Aakash data with yoe as 5 years and learner company as Apple
	update Learner set YearOfExperience = 5, LearnerCompany = 'Apple' where Learner_ID = 1;
    select * from Learner;
    
    -- 7 count num of compaines where learner currently doing their job 
     -- count -> count the not null entries
     -- Distinct -> unique count of the entries
    
    select count(distinct LearnerCompany) as Distinct_Companies from Learner;