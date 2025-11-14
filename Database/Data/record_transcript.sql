/* ================================================================
   File Name:        record_transcript.sql
   Developer:        Brian Lorick
   Organization:     NoLabel Security
   Created On:       03/2025
   Last Modified:    11/11/2025
   Version:          1.0.0
--------------------------------------------------------------------
   Description:
   Generates an academic transcript showing each student’s completed
   courses, grades, subjects, and academic term/year details.

--------------------------------------------------------------------
   Features:
   - Displays student info with corresponding course history.
   - Includes subject, grade, and term information.
   - Can generate a full list or filter by student ID.
   - Orders results chronologically for readability.

--------------------------------------------------------------------
   Usage:
   1. Run this file in MySQL or MariaDB:
        SOURCE transcript.sql;
   2. To view all transcripts, run the main SELECT query.
   3. To view a specific student’s record, set the variable below.

--------------------------------------------------------------------
   Notes:
   - Requires joins between Student, Person, Completion, Section,
     Course, Subject, Grade, Term, and Year.
   - Ensure all tables contain valid reference data.

--------------------------------------------------------------------
   License:
   Proprietary – NoLabel Security
================================================================ */


-- ================================================================
-- View: Full Transcript Report for All Students
-- ================================================================
SELECT 
    Student.Per_ID AS Student_ID,                                -- Unique student ID
    CONCAT(Person.Per_FirstName, ' ', Person.Per_LastName, 
           ' ', IFNULL(Person.Per_Suffix, '')) AS Student_Name,   -- Full student name
    Course.Crs_Num AS Course_Number,                              -- Course number identifier
    Course.Crs_Desc AS Course_Name,                               -- Course title/description
    Subject.Sub_Abbr AS Subject,                                  -- Subject code (e.g., ENG, MAT)
    Subject.Sub_Name AS Subject_Description,                      -- Subject full name
    Grade.Grd_Sym AS Grade,                                       -- Grade symbol (A, B, etc.)
    Grade.Grd_Desc AS Grade_Description,                          -- Grade meaning (Excellent, etc.)
    Grade.Grd_Pts AS Grade_Points,                                -- Grade point value
    Grade.Grd_Credit AS Passed,                                   -- Credit earned indicator
    Term.Trm_Desc AS Term,                                        -- Term description (e.g., Spring)
    Year.Yr_Year AS Year                                          -- Academic year
FROM 
    Student                                                       -- Primary table for student records
INNER JOIN Person ON Student.Per_ID = Person.Per_ID               -- Join to get personal information
INNER JOIN Completion ON Student.Per_ID = Completion.Per_ID       -- Join for completion records
INNER JOIN Section ON Completion.Sec_ID = Section.Sec_ID          -- Join for section details
INNER JOIN Course ON Section.Crs_Num = Course.Crs_Num             -- Join for course info
INNER JOIN Subject ON Course.Sub_Abbr = Subject.Sub_Abbr          -- Join for subject details
INNER JOIN Grade ON Completion.Grd_Sym = Grade.Grd_Sym            -- Join for grade details
INNER JOIN Term ON Section.Trm_Num = Term.Trm_Num                 -- Join for term info
INNER JOIN Year ON Section.Yr_Year = Year.Yr_Year                 -- Join for academic year
ORDER BY 
    Student.Per_ID, Year.Yr_Year, Term.Trm_Desc;                  -- Order by student and term/year


-- ================================================================
-- Optional: View Transcript for a Specific Student
-- ================================================================
-- Change the Per_ID value as needed to target a specific student.
SELECT 
    Student.Per_ID AS Student_ID,                                 -- Unique student ID
    CONCAT(Person.Per_FirstName, ' ', Person.Per_LastName, 
           ' ', IFNULL(Person.Per_Suffix, '')) AS Student_Name,   -- Full student name
    Course.Crs_Num AS Course_Number,                              -- Course number
    Course.Crs_Desc AS Course_Name,                               -- Course title
    Subject.Sub_Abbr AS Subject,                                  -- Subject abbreviation
    Subject.Sub_Name AS Subject_Description,                      -- Full subject name
    Grade.Grd_Sym AS Grade,                                       -- Letter grade
    Grade.Grd_Desc AS Grade_Description,                          -- Grade explanation
    Grade.Grd_Pts AS Grade_Points,                                -- Grade point value
    Grade.Grd_Credit AS Passed,                                   -- Whether credit was earned
    Term.Trm_Desc AS Term,                                        -- Term description
    Year.Yr_Year AS Year                                          -- Academic year
FROM 
    Student
INNER JOIN Person ON Student.Per_ID = Person.Per_ID
INNER JOIN Completion ON Student.Per_ID = Completion.Per_ID
INNER JOIN Section ON Completion.Sec_ID = Section.Sec_ID
INNER JOIN Course ON Section.Crs_Num = Course.Crs_Num
INNER JOIN Subject ON Course.Sub_Abbr = Subject.Sub_Abbr
INNER JOIN Grade ON Completion.Grd_Sym = Grade.Grd_Sym
INNER JOIN Term ON Section.Trm_Num = Term.Trm_Num
INNER JOIN Year ON Section.Yr_Year = Year.Yr_Year
WHERE 
    Student.Per_ID = 5;                                           -- Filter for a specific student (example: ID = 5)




