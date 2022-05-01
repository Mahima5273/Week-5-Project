----INDEX 1-------

CREATE INDEX IDX_Birthdate ON Student(DateOfBirth);

select *from Student where DateOfBirth='1992-04-12';



----INDEX 2-------

CREATE INDEX IDX_SubjectName ON Subject(SubjectName);


select *from Subject where SubjectName='OOPS';


-- View 1
Create view StudentFeesDetails
as
SELECT S.StudentName,S.IsFeePaid,AVG(T.FeesDetails) 
FROM Student S JOIN Transportation T
ON S.StudentID=T.StudentID 
GROUP BY S.StudentName,S.IsFeePaid;

Select * from StudentFeesDetails;


-- View 2

Create view StudentDetails
as
SELECT S.StudentName,SUB.SubjectName,T.FeesDetails
FROM Student S JOIN Transportation T JOIN Subject SUB JOIN StudentSubject SS
ON S.StudentID=T.StudentID AND S.StudentID=SS.StudentID AND SUB.SubjectID=SS.SubjectID
GROUP BY S.StudentName,SUB.SubjectName;

Select * from StudentDetails;