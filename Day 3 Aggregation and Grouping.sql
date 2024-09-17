show databases;
use mysql_bootcamp_with_priya_bhatia;
show tables;

select * from learner;
update learner set SourceOfJoining = "community" where Learner_Id = 52; 

-- COUNT OF THE NUMBER OF STUDENTS WHO JOINED THE COURSE VIA LINKEDIN , YOUTUBE ,COMMUNITY
select Sourceofjoining , count(*) as num_of_students from learner group by SourceOfJoining;

-- group by via location and souceofjoininig
select SourceOfjoining,Location , count(*) as num_of_students from learner 
group by SourceOfJoining,Location;

-- Corresponding to each course how many students have enrolled
desc learner;
select SelectedCourses , count(*) as num_of_students_enrolled from learner group by SelectedCourses;

-- Corresponding to individual sourceofjoining give the maximun yoe any person
select SourceOfJoining , max(YearOfExperience) as maximum_experience from learner group by SourceOfJoining; 

-- Corresponding to individual sourceofjoining give the minimun yoe any person
select SourceOfJoining, min(YearOfExperience) as Mininmum_Exp from learner group by SourceOfJoining;


-- Corresponding to individual sourceofjoining give the Average yoe any person
select SourceOfJoining, avg(YearOfExperience) as Average_Exp from learner group by SourceOfJoining;

/*
filteration after aggregation function then use  Having clause
after group By clause instead of where claue 
*/ 

-- Display the records of those learners who have joined the course via Youtube
select SourceOfJoining , count(*) as num_of_students from learner
group by SourceOfJoining having SourceOfJoining = "Youtube";

-- Display the count of thosestudents who joined via linkedin
select SourceOfJoining ,count(*) as num_of_students from learner group by SourceOfJoining having SourceOfJoining = "Linkedin";

-- Display the course which doesent include "Excel"
select * from course where CourseName Not Like "%Excel%";

-- Display the reports of those students have less than 5 yoe and soj is youtube and location is gurugram
select *from learner where YearOfExperience < 5 and SourceOfJoining = "Youtube" and Location = "gurugram";

-- display the records of those who have yof between 1 to 3 years
select * from learner where YearOfExperience between  1 and 3;

-- Display the reports of those students have less than 5 yoe or soj is youtube or location is gurugram
select *from learner where YearOfExperience < 5 or SourceOfJoining = "Youtube" or Location = "gurugram";

-- ------------------ ALTER COMMAND --------------------
desc employees;
alter table employees add column jobPosition varchar(50);
alter table employees modify column jobPosition varchar(40);
alter table employees drop column jobPosition;

-- TRUNCATE COMMAND IN SQL
-- DELETE VS TRUNCATE VS DROP COMMNAD -- > INTERVIEW QUESTION


-- DATA TYPES IN SQL

select * from course; 

-- UPDATE COURSE TABLE 
create table COURSE_UPDATE (
CourseId int  Primary key auto_increment , 
CourseName varchar(50) not null,
CourseDuration_Months decimal(3,1) not null,
CourseFee int not null,
Changed_at timestamp default now() ON update now()
);

desc COURSE_UPDATE;

-- Insert the course details inside the table named courses 
-- " The Complete Excel Mastery Course" ,3,1499
-- " DSA for Interview Prepration" ,2,4999 
-- " SQL BootCamp" , 1,2999
--  "Machine Learning",3.5,5000

insert into COURSE_UPDATE (CourseName,CourseDuration_Months,CourseFee) 
values ("The Complete Excel Mastery Course", 3,1499),
(" DSA for Interview Prepration",2,4999),
( " SQL BootCamp" , 1,2999),
("Machine Learning",3.5,5000); 

 select * from COURSE_UPDATE;
 
 -- update the coursefee of sql bootcamp to 3999
 update course_update set coursefee = 3999 where CourseId = 3;