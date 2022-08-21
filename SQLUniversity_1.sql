USE University

UPDATE Courses
SET LectureId = 2
WHERE Id = 1

UPDATE Courses
SET LectureId = 3
WHERE Id = 2

UPDATE Courses
SET LectureId = 2
WHERE Id = 3

UPDATE Courses
SET LectureId = NULL
WHERE Id = 4

--Exc.2
SELECT c.CourseName, c.LectureId, l.FirstName + ' ' + l.LastName
FROM Courses c
JOIN Lecturer l 
ON c.LectureId = l.Id

--Exc.3
SELECT Courses.CourseName
FROM Courses

--Exc.4
SELECT l.FirstName, l.LastName, c.CourseName
FROM Lecturer l
LEFT JOIN Courses c 
ON l.Id = c.LectureId

--EXC.5
SELECT * FROM Courses 
WHERE Courses.LectureId = NULL

--Exc.6
SELECT * FROM Lecturer
WHERE Lecturer.Id NOT IN (SELECT LectureId FROM Courses c JOIN Lecturer l ON C.LectureId = l.Id )

--Exc.7
SELECT c.CourseName, l.FirstName, l.LastName
FROM Courses c
JOIN Lecturer l
ON C.LectureId = LectureId
