/* ================================================================
   File Name:        seed_static.sql
   Developer:        Brian Lorick
   Organization:     NoLabel Security
   Created On:       03/2025
   Last Modified:    11/11/2025
   Version:          1.0.0
--------------------------------------------------------------------
   Description:
   This SQL script populates static reference and seed data for
   database tables used in the system. It inserts predefined records
   such as genders, grades, departments, states, and more.

--------------------------------------------------------------------
   Features:
   - Provides initial lookup and static data.
   - Useful for bootstrapping a fresh database.
   - Keeps consistent test and development datasets.

--------------------------------------------------------------------
   Usage:
   Run this script after creating the database schema:
       SOURCE seed_static.sql;
   It should be executed once to populate base data.

--------------------------------------------------------------------
   Notes:
   - Data assumes schema created via `create_db.sql`.
   - Do not run multiple times unless duplicates are handled.
   - Adjust IDs or constraints as needed for your environment.

--------------------------------------------------------------------
   License:
   Proprietary – NoLabel Security
================================================================ */

-- Insert for Completion: adds initial course completion records
INSERT INTO Completion (Per_ID, Sec_ID, Grd_Sym) VALUES
(1, 1, 'A'),   -- Person 1 completed Section 1 with grade A
(2, 2, 'B');   -- Person 2 completed Section 2 with grade B

-- Insert for ConType: defines various contact types
INSERT INTO ConType (CT_ID, CT_Desc) VALUES
('H', 'Home'),     -- Home address or phone
('P', 'Parents'),  -- Parent contact
('C', 'Campus'),   -- Campus-related contact
('W', 'Work'),     -- Work contact
('M', 'Mobile');   -- Mobile contact

-- Insert for Course: defines available courses
INSERT INTO Course (Sub_Abbr, Crs_Num, Crs_Title) VALUES
('CPT', 114, 'Computers And Programming'),  -- Intro programming course
('CPT', 167, 'Programming and Logic'),      -- Logical programming foundations
('CPT', 170, 'Microcomputer Applications I'), -- Basic applications course
('CPT', 270, 'Microcomputer Applications II'), -- Advanced applications
('ENG', 155, 'Communications I'),           -- English communication basics
('MAT', 155, 'College Math');               -- Basic college-level mathematics

-- Insert for Credential: degrees or academic credentials
INSERT INTO Credential (CRD_Title, DT_ID, CRD_Year, DPT_ID) VALUES
('Bachelor of Science', 1, 2016, 1),  -- Bachelor from department 1
('Master of Arts', 2, 2016, 2);       -- Master from department 2

-- Insert for DegType: degree types and levels
INSERT INTO DegType (DT_Title, DT_Level, DT_Abbr) VALUES
('Associate', 2, 'AS'),   -- Associate degree
('Bachelor', 4, 'BS'),    -- Bachelor’s degree
('Master', 6, 'MS'),      -- Master’s degree
('Doctorate', 8, 'PhD');  -- Doctoral degree

-- Insert for Department: academic departments
INSERT INTO Department (DPT_Name, Per_ID) VALUES
('Computer Technology', NULL),  -- Computer tech department
('Mathematics', NULL),          -- Math department
('English', NULL);              -- English department

-- Insert for Email: example person email entry
INSERT INTO Email (eMail_User, eMail_Domain, Per_ID, CT_ID) VALUES
('john.doe', 'example.com', 1, 1);  -- John Doe’s email record

-- Insert for Faculty: links persons to departments as faculty
INSERT INTO Faculty (Per_ID, DPT_ID) VALUES
(1, 1),  -- Faculty member 1 in department 1
(2, 2);  -- Faculty member 2 in department 2

-- Insert for Fulfillment: records completion of requirements
INSERT INTO Fulfillment (Req_ID, CMP_ID) VALUES
(1, 1),  -- Requirement 1 fulfilled by Completion 1
(2, 2);  -- Requirement 2 fulfilled by Completion 2

-- Insert for Gender: defines available gender options
INSERT INTO GENDER (Gen_Code, Gen_Desc) VALUES
('M', 'Male'),     -- Male gender
('F', 'Female'),   -- Female gender
('O', 'Other');    -- Other / non-binary gender

-- Insert for Grade: defines letter grades and descriptions
INSERT INTO Grade (Grd_Sym, Grd_Pts, Grd_Desc) VALUES
('A', '90 - 100', 'Excellent'),       -- Excellent performance
('B', '80 - 89', 'Good'),             -- Good performance
('C', '70 - 79', 'Average'),          -- Average performance
('D', '60 - 69', 'Below Average'),    -- Below average
('F', '0 - 59', 'Failing'),           -- Failing grade
('W', NULL, 'Withdrawal');            -- Withdrawal (no grade)

-- Insert for Graduation: person’s graduation record
INSERT INTO Graduation (Per_ID, CRD_ID, Grad_Date) VALUES
(1, 1, '2016');  -- Person 1 graduated with Credential 1 in 2016

-- Insert for PreReq: defines prerequisite course relationships
INSERT INTO PreReq (Sub_Abbr, Crs_Num, Pre_Sub_Abbr, Pre_Crs_Num) VALUES
('ENG', 202, 'ENG', 101),  -- ENG 202 requires ENG 101
('MTH', 202, 'MTH', 101);  -- MTH 202 requires MTH 101

-- Insert for Requirement: course requirements per credential
INSERT INTO Requirement (CRD_ID, CRS_ID) VALUES
(1, 1),  -- Credential 1 requires Course 1
(2, 2);  -- Credential 2 requires Course 2

-- Insert for Section: defines course sections, instructors, term, and year
INSERT INTO Section (Sec_Num, Sub_Abbr, Crs_Num, Per_ID, Trm_Num, Yr_Year) VALUES
(101, 'CPT', 114, 1, '01', 2017),  -- CPT 114 section 101 taught by Person 1, Term 01, Year 2017
(102, 'CPT', 167, 1, '01', 2017),  -- CPT 167 section 102 taught by Person 1, Term 01, Year 2017
(103, 'CPT', 170, 1, '01', 2017),  -- CPT 170 section 103 taught by Person 1, Term 01, Year 2017
(104, 'CPT', 270, 1, '01', 2017),  -- CPT 270 section 104 taught by Person 1, Term 01, Year 2017
(105, 'ENG', 155, 1, '01', 2017),  -- ENG 155 section 105 taught by Person 1, Term 01, Year 2017
(106, 'MAT', 155, 1, '01', 2017);  -- MAT 155 section 106 taught by Person 1, Term 01, Year 2017

-- Insert for Semester: defines semester periods and dates
INSERT INTO Semester (Trm_Num, Yr_Year, Sem_Start, Sem_End) VALUES
('FA', 2017, '2017-08-21', '2017-12-15'),  -- Fall 2017
('SP', 2017, '2017-01-15', '2017-05-10'),  -- Spring 2017
('SU', 2017, '2017-06-03', '2017-07-26');  -- Summer 2017

-- Insert for State: defines states
INSERT INTO State (Sta_Abbr, Sta_Name) VALUES
('SC', 'South Carolina'),   -- South Carolina
('DC', 'Washington DC');    -- District of Columbia

-- Insert for Student: defines students linked to credentials
INSERT INTO Student (Per_ID, CRD_ID) VALUES
(1, 1),  -- Student 1 in credential 1
(2, 2);  -- Student 2 in credential 2

-- Insert for Subject: defines subjects by department
INSERT INTO Subject (Sub_Abbr, Sub_Name) VALUES
('CPT', 'Computer Technology'),  -- Computer Technology subject
('ENG', 'English'),              -- English subject
('MAT', 'Mathematics');          -- Mathematics subject

-- Insert for Term: defines academic terms
INSERT INTO Term (Trm_Num, Trm_Desc) VALUES
('FA', 'Fall'),      -- Fall term
('SP', 'Spring'),    -- Spring term
('SU', 'Summer');    -- Summer term

-- Insert for Year: defines academic years
INSERT INTO Year (Yr_Year) VALUES
(2017);  -- Year 2017

-- Insert for ZipCode: defines postal codes and locations
INSERT INTO ZipCode (Zip_Code, Zip_City, Sta_Abbr) VALUES
(25779, 'Clemson', 'SC'),     -- Clemson, South Carolina
(29624, 'Anderson', 'SC'),    -- Anderson, South Carolina
(40010, 'Washington', 'DC'),  -- Washington, DC
(25776, 'Pendleton', 'SC');   -- Pendleton, South Carolina
