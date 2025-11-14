/* ================================================================
   File Name:        export_data.sql
   Developer:        Brian Lorick
   Organization:     NoLabel Security
   Created On:       03/2025
   Last Modified:    11/11/2025
   Version:          1.0.0
--------------------------------------------------------------------
   Description:
   This SQL script exports data from all database tables into
   separate CSV files for backup, data review, or external use.
   Each table’s contents are written to a file within the directory:
       C:/Database_Exports/Exported_CSV_Files/

--------------------------------------------------------------------
   Features:
   - Exports all tables to CSV with clear file naming.
   - Fields are quoted, comma-separated, and CRLF terminated.
   - Works across Windows and UNIX systems with FILE privilege.

--------------------------------------------------------------------
   Usage:
   1. Ensure the export directory exists.
   2. Run this script in MySQL or MariaDB:
        SOURCE export_data.sql;
   3. Access the generated CSVs in:
        C:/Database_Exports/Exported_CSV_Files/

--------------------------------------------------------------------
   Notes:
   - Each execution overwrites existing files.
   - Ensure MySQL has permission to write to the specified path.
   - Compatible with standard data import tools (Excel, Python, etc).

--------------------------------------------------------------------
   License:
   Proprietary – NoLabel Security
================================================================ */


-- Export Address table
SELECT
    *                                                           -- Select all fields
FROM
    Address                                                     -- Source table: Address
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Address.csv' -- Export file path for Address table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Completion table
SELECT
    *                                                           -- Select all fields
FROM
    Completion                                                  -- Source table: Completion
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Completion.csv' -- Export file path for Completion table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export ConType table
SELECT
    *                                                           -- Select all fields
FROM
    ConType                                                     -- Source table: ConType
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/ConType.csv' -- Export file path for ConType table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Course table
SELECT
    *                                                           -- Select all fields
FROM
    Course                                                      -- Source table: Course
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Course.csv'  -- Export file path for Course table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Credential table
SELECT
    *                                                           -- Select all fields
FROM
    Credential                                                  -- Source table: Credential
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Credential.csv' -- Export file path for Credential table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export DegType table
SELECT
    *                                                           -- Select all fields
FROM
    DegType                                                     -- Source table: DegType
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/DegType.csv' -- Export file path for DegType table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Department table
SELECT
    *                                                           -- Select all fields
FROM
    Department                                                  -- Source table: Department
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Department.csv' -- Export file path for Department table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Email table
SELECT
    *                                                           -- Select all fields
FROM
    Email                                                       -- Source table: Email
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Email.csv'   -- Export file path for Email table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Faculty table
SELECT
    *                                                           -- Select all fields
FROM
    Faculty                                                     -- Source table: Faculty
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Faculty.csv' -- Export file path for Faculty table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Fulfillment table
SELECT
    *                                                           -- Select all fields
FROM
    Fulfillment                                                 -- Source table: Fulfillment
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Fulfillment.csv' -- Export file path for Fulfillment table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Gender table
SELECT
    *                                                           -- Select all fields
FROM
    Gender                                                      -- Source table: Gender
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Gender.csv'  -- Export file path for Gender table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Grade table
SELECT
    *                                                           -- Select all fields
FROM
    Grade                                                       -- Source table: Grade
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Grade.csv'   -- Export file path for Grade table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Graduation table
SELECT
    *                                                           -- Select all fields
FROM
    Graduation                                                  -- Source table: Graduation
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Graduation.csv' -- Export file path for Graduation table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Person table
SELECT
    *                                                           -- Select all fields
FROM
    Person                                                      -- Source table: Person
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Person.csv'  -- Export file path for Person table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Phone table
SELECT
    *                                                           -- Select all fields
FROM
    Phone                                                       -- Source table: Phone
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Phone.csv'   -- Export file path for Phone table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export PreReq table
SELECT
    *                                                           -- Select all fields
FROM
    PreReq                                                      -- Source table: PreReq
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/PreReq.csv'  -- Export file path for PreReq table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Requirement table
SELECT
    *                                                           -- Select all fields
FROM
    Requirement                                                 -- Source table: Requirement
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Requirement.csv' -- Export file path for Requirement table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Section table
SELECT
    *                                                           -- Select all fields
FROM
    Section                                                     -- Source table: Section
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Section.csv' -- Export file path for Section table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Semester table
SELECT
    *                                                           -- Select all fields
FROM
    Semester                                                    -- Source table: Semester
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Semester.csv' -- Export file path for Semester table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export State table
SELECT
    *                                                           -- Select all fields
FROM
    State                                                       -- Source table: State
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/State.csv'   -- Export file path for State table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Student table
SELECT
    *                                                           -- Select all fields
FROM
    Student                                                     -- Source table: Student
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Student.csv' -- Export file path for Student table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Subject table
SELECT
    *                                                           -- Select all fields
FROM
    Subject                                                     -- Source table: Subject
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Subject.csv' -- Export file path for Subject table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Term table
SELECT
    *                                                           -- Select all fields
FROM
    Term                                                        -- Source table: Term
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Term.csv'    -- Export file path for Term table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export Year table
SELECT
    *                                                           -- Select all fields
FROM
    Year                                                        -- Source table: Year
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/Year.csv'    -- Export file path for Year table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)


-- Export ZipCode table
SELECT
    *                                                           -- Select all fields
FROM
    ZipCode                                                     -- Source table: ZipCode
INTO OUTFILE 'C:/Database_Exports/Exported_CSV_Files/ZipCode.csv' -- Export file path for ZipCode table
FIELDS ENCLOSED BY '"'                                           -- Enclose each field in double quotes
TERMINATED BY ','                                                -- Separate fields using commas
ESCAPED BY '"'                                                   -- Escape internal double quotes
LINES TERMINATED BY '\r\n';                                      -- Use CRLF for line breaks (Windows format)
