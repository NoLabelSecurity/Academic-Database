/* ================================================================
   File Name:        select_all.sql
   Developer:        Brian Lorick
   Organization:     NoLabel Security
   Created On:       03/2025
   Last Modified:    11/11/2025
   Version:          1.0.0
--------------------------------------------------------------------
   Description:
   This SQL script retrieves all records from each table in the
   database schema for inspection, debugging, or data validation.

--------------------------------------------------------------------
   Features:
   - Executes SELECT statements for every table.
   - Provides complete visibility into the database contents.
   - Useful for verifying inserts and schema structure.

--------------------------------------------------------------------
   Usage:
   Run this file after data has been inserted into the database:
       SOURCE select_all.sql;
   This will display all table contents in sequence.

--------------------------------------------------------------------
   Notes:
   - Intended for development or testing environments.
   - Avoid running on production databases with large datasets,
     as it may produce excessive output.

--------------------------------------------------------------------
   License:
   Proprietary – NoLabel Security
================================================================ */

SELECT * FROM Address;        -- Retrieves all columns and rows from the Address table
SELECT * FROM Completion;     -- Retrieves all completion records (student, section, grade)
SELECT * FROM ConType;        -- Retrieves all contact types (e.g., phone, email)
SELECT * FROM Course;         -- Retrieves all available courses
SELECT * FROM Credential;     -- Retrieves all credential types and related data
SELECT * FROM DegType;        -- Retrieves degree types (e.g., Associate, Bachelor)
SELECT * FROM Department;     -- Retrieves all departments
SELECT * FROM Email;          -- Retrieves all email addresses
SELECT * FROM Faculty;        -- Retrieves all faculty members and their departments
SELECT * FROM Fulfillment;    -- Retrieves all fulfillment records (requirement completions)
SELECT * FROM Gender;         -- Retrieves gender codes and descriptions
SELECT * FROM Grade;          -- Retrieves all possible grades and grading info
SELECT * FROM Graduation;     -- Retrieves all graduation records
SELECT * FROM Person;         -- Retrieves all persons in the system
SELECT * FROM Phone;          -- Retrieves all phone records
SELECT * FROM PreReq;         -- Retrieves all course prerequisites
SELECT * FROM Requirement;    -- Retrieves all course or degree requirements
SELECT * FROM Section;        -- Retrieves all course sections
SELECT * FROM Semester;       -- Retrieves all semester information
SELECT * FROM State;          -- Retrieves all state entries
SELECT * FROM Student;        -- Retrieves all student records
SELECT * FROM Subject;        -- Retrieves all subject areas
SELECT * FROM Term;           -- Retrieves all term definitions
SELECT * FROM Year;           -- Retrieves all academic years
SELECT * FROM ZipCode;        -- Retrieves all zip code entries

