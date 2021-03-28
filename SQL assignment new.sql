CREATE DATABASE YEAR8STUDENTGRADES;
USE YEAR8STUDENTGRADES;
CREATE TABLE year8_Maths ( 
StudentID int not null, 
StudentName varchar(100), 
StudentDOB date not null, 
SubjectName varchar(100), 
PredictedGrade int not null, 
ActualGrade int not null, 
primary key (StudentID), 
unique (StudentID) 
); 
Explain year8_maths;
INSERT INTO year8_Maths (StudentID, StudentName, StudentDOB, SubjectName, PredictedGrade, ActualGrade) 
VALUES ('83742','Teodora Larose','12/09/2009','Maths','5','6'), 
('91386','Mariella Eggen','01/02/2008','Maths','5','6'), 
('91387','Esther Giorgio','14/10/2009','Maths','6','6'), 
('91287','Marni Francois','14/04/2008','Maths','5','5'), 
('81926','Max Parkhill','24/02/2008','Maths','6','7'), 
('98126','Jed Soderstrom','30/07/2008','Maths','7','7'), 
('82371','Vance Peffer','06/05/2008','Maths','4','4'), 
('98346','Heriberto Minyard','31/11/2009','Maths','5','4'), 
('91873','Patrick Ree','19/03/2008','Maths','5','4'), 
('89355','Ollie Seeger','27/05/2008','Maths','5','4'); 

INSERT INTO year8_Maths (StudentID, StudentName, StudentDOB, SubjectName, PredictedGrade, ActualGrade) 
VALUES ('83742','Teodora Larose','2009-09-12','Maths','5','6'), 
('91386','Mariella Eggen','2008-02-01','Maths','5','6'), 
('91387','Esther Giorgio','2009-10-14','Maths','6','6'), 
('91287','Marni Francois','2008-04-14','Maths','5','5'), 
('81926','Max Parkhill','2008-02-24','Maths','6','7'), 
('98126','Jed Soderstrom','2008-07-30','Maths','7','7'), 
('82371','Vance Peffer','2008-05-06','Maths','4','4'), 
('98346','Heriberto Minyard','2009-11-30','Maths','5','4'), 
('91873','Patrick Ree','2008-03-19','Maths','5','4'), 
('89355','Ollie Seeger','2008-05-27','Maths','5','4'); 
explain year8_maths;
select * from year8_maths;
UPDATE year8_Maths 
SET ActualGrade = '6' 
WHERE StudentID= 98126; 
select * from year8_maths;
SELECT * FROM year8_maths; 
DELETE FROM year8_maths 
WHERE studentiD= 82371; 
select * from year8_maths;
DELETE FROM year8_maths 
WHERE studentID= 82371; 
select * from year8_maths;
SELECT ActualGrade FROM year8_Maths; 
SELECT StudentID, PredictedGrade, ActualGrade FROM year8_maths; 
SELECT * FROM year8_Maths ORDER BY ActualGrade ASC; 
use year8studentgrades;
select * from year8_maths;

USE YEAR8STUDENTGRADES;
CREATE TABLE year8_English ( 
StudentID int not null, 
StudentName varchar(100), 
StudentDOB date not null, 
SubjectName varchar(100), 
PredictedGrade int not null, 
ActualGrade int not null, 
 unique (StudentID) 
); 
INSERT INTO year8_English (StudentID, StudentName, StudentDOB, SubjectName, PredictedGrade, ActualGrade) 
VALUES ('83742','Teodora Larose','2009-09-12','English','6','6'), 
('91386','Mariella Eggen','2008-02-01','English','5','5'), 
('91387','Esther Giorgio','2009-10-14','English','6','6'), 
('91287','Marni Francois','2008-04-14','English','5','4'), 
('81926','Max Parkhill','2008-02-24','English','5','6'), 
('98126','Jed Soderstrom','2008-07-30','English','6','7'), 
('82371','Vance Peffer','2008-05-06','English','5','5'), 
('98346','Heriberto Minyard','2009-11-30','English','5','6'), 
('91873','Patrick Ree','2008-03-19','English','5','5'), 
('89355','Ollie Seeger','2008-05-27','English','5','5');

select*from year8_english;
select*from year8_maths;

SELECT year8_maths.actualgrade, year8_english.actualgrade
FROM year8_maths
INNER JOIN year8_english
ON year8_maths.ActualGrade = year8_english.ActualGrade;

DESCRIBE year8studentgrades.YEAR8_MATHS;
DESCRIBE year8studentgrades.YEAR8_ENGLISH;

SHOW TABLES FROM year8studentgrades;
use year8_maths;
select studentid,studentname,actualgrade
from year8_maths;

select * from year8_maths
where actualgrade between 5 and 6;

SELECT *
FROM year8_maths, year8_english
WHERE year8_maths.StudentID = year8_english.Studentid
AND year8_maths.studentid = '91873';

