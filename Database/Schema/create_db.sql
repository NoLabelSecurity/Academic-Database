/* ================================================================
   File Name:        create_db.sql
   Developer:        Brian Lorick
   Organization:     NoLabel Security
   Created On:       03/2025
   Last Modified:    11/11/2025
   Version:          1.0.0
--------------------------------------------------------------------
   Description:
   This SQL script creates the database schema for the system,
   defining all core entity tables, primary keys, and essential
   relationships (without foreign keys).

--------------------------------------------------------------------
   Features:
   - Creates all necessary entity tables for Person, Course, Degree, etc.
   - Defines consistent primary key naming conventions.
   - Sets up structure for relationships between entities.

--------------------------------------------------------------------
   Usage:
   Run this file in your SQL environment (e.g., MySQL, MariaDB)
   using a command such as:
       SOURCE create_db.sql;

--------------------------------------------------------------------
   Notes:
   - Ensure the database is created and selected before running.
   - Foreign keys can be added later as needed for referential integrity.

--------------------------------------------------------------------
   License:
   Proprietary – NoLabel Security
================================================================ */

-- Table: Address
CREATE TABLE Address (
    Add_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Unique ID for each address
    Add_House VARCHAR(20) NOT NULL,           -- House or building number
    Add_Street VARCHAR(20) NOT NULL,          -- Street name
    Zip_Code VARCHAR(10) NOT NULL,            -- Zip or postal code
    Per_ID INT NOT NULL,                      -- Links to Person table
    CT_ID INT NOT NULL                        -- Links to Contact Type
);

-- Table: Completion
CREATE TABLE Completion (
    Cmp_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Unique ID for completion record
    Per_ID INT NOT NULL,                      -- Person associated with record
    Sec_ID INT NOT NULL,                      -- Section identifier
    Grd_Sym CHAR(1)                           -- Grade symbol
);

-- Table: ConType
CREATE TABLE ConType (
    CT_ID CHAR PRIMARY KEY,                   -- Contact Type code
    CT_Desc VARCHAR(20) NOT NULL              -- Contact Type description
);

-- Table: Course
CREATE TABLE Course (
    CRS_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Unique Course ID
    Crs_Num INT(3) NOT NULL,                  -- Course number
    Sub_Abbr CHAR(3) NOT NULL,                -- Subject abbreviation
    Crs_Desc VARCHAR(200),                    -- Detailed course description
    Crs_Title VARCHAR(25) NOT NULL,           -- Course title
    CrS_Hrs INT NOT NULL                      -- Credit hours
);

-- Table: Credential
CREATE TABLE Credential (
    CRD_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Unique credential ID
    CRD_Title VARCHAR(25) NOT NULL,           -- Credential name or title
    DT_ID INT NOT NULL,                       -- Degree Type reference
    CRD_Year INT(4) NOT NULL,                 -- Year awarded
    DPT_ID INT NOT NULL                       -- Department reference
);

-- Table: DegType
CREATE TABLE DegType (
    DT_ID INT AUTO_INCREMENT PRIMARY KEY,     -- Degree type ID
    DT_Title VARCHAR(15) NOT NULL,            -- Degree title (e.g., BSc, MSc)
    DT_Level INT(2) NOT NULL,                 -- Degree level (e.g., 1=Undergrad)
    DT_Abbr CHAR(5)                           -- Abbreviation for degree
);

-- Table: Department
CREATE TABLE Department (
    DPT_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Department ID
    DPT_Name VARCHAR(35) NOT NULL,            -- Department name
    Per_ID INT                                -- Linked person (e.g., head)
);

-- Table: Email
CREATE TABLE Email (
    eMail_ID INT AUTO_INCREMENT PRIMARY KEY,  -- Email ID
    eMail_User VARCHAR(25) NOT NULL,          -- Username portion
    eMail_Domain VARCHAR(20) NOT NULL,        -- Domain portion
    Per_ID INT,                               -- Associated person
    CT_ID INT                                 -- Contact type (e.g., personal/work)
);

-- Table: Faculty
CREATE TABLE Faculty (
    Per_ID INT PRIMARY KEY,                   -- Faculty member's person ID
    DPT_ID INT NOT NULL                       -- Associated department
);

-- Table: Fulfillment
CREATE TABLE Fulfillment (
    Ful_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Fulfillment record ID
    Req_ID INT NOT NULL,                      -- Requirement fulfilled
    CMP_ID INT NOT NULL                       -- Completion ID reference
);

-- Table: Gender
CREATE TABLE Gender (
    Gen_Code CHAR(1) PRIMARY KEY,             -- Gender code
    Gen_Desc VARCHAR(10) NOT NULL             -- Description (e.g., Male/Female)
);

-- Table: Grade
CREATE TABLE Grade (
    Grd_Sym CHAR(1) PRIMARY KEY,              -- Grade symbol (A, B, etc.)
    Grd_Desc VARCHAR(20) NOT NULL,            -- Grade description
    Grd_Credit BOOLEAN NOT NULL,              -- Whether credit is earned
    Grd_Pts INT NOT NULL,                     -- Grade points
    Grd_GPA BOOLEAN NOT NULL                  -- Whether counted in GPA
);

-- Table: Graduation
CREATE TABLE Graduation (
    Grad_ID INT AUTO_INCREMENT PRIMARY KEY,   -- Graduation record ID
    Per_ID INT NOT NULL,                      -- Person graduating
    CRD_ID INT NOT NULL,                      -- Credential obtained
    Grad_Date DATE NOT NULL                   -- Date of graduation
);

-- Table: Person
CREATE TABLE Person (
    Per_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Unique ID per person
    Per_FirstName VARCHAR(20) NOT NULL,       -- First name
    Per_LastName VARCHAR(20) NOT NULL,        -- Last name
    Per_Suffix VARCHAR(20),                   -- Name suffix (Jr., Sr., etc.)
    Gen_Code CHAR(1),                         -- Gender code reference
    Per_DOB DATE NOT NULL                     -- Date of birth
);

-- Table: Phone
CREATE TABLE Phone (
    Pho_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Phone ID
    Pho_AreaCode INT(3),                      -- Area code
    Pho_Exchange INT(3) NOT NULL,             -- Exchange number
    Pho_Extension INT(4) NOT NULL,            -- Extension
    Per_ID INT,                               -- Person reference
    CT_ID INT                                 -- Contact type reference
);

-- Table: PreReq
CREATE TABLE PreReq (
    PRQ_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Prerequisite ID
    Sub_Abbr CHAR(3) NOT NULL,                -- Subject abbreviation
    Crs_Num INT NOT NULL,                     -- Course number
    Pre_Sub_Abbr CHAR(3) NOT NULL,            -- Prerequisite subject abbreviation
    Pre_Crs_Num INT NOT NULL                  -- Prerequisite course number
);

-- Table: Requirement
CREATE TABLE Requirement (
    Req_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Requirement ID
    CRD_ID INT NOT NULL,                      -- Credential reference
    CRS_ID INT NOT NULL                       -- Course reference
);

-- Table: Section
CREATE TABLE Section (
    Sec_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Section ID
    Sec_Num INT(3) NOT NULL,                  -- Section number
    Sub_Abbr CHAR(3) NOT NULL,                -- Subject abbreviation
    Crs_Num INT NOT NULL,                     -- Course number
    Per_ID INT NOT NULL,                      -- Instructor or responsible person
    Trm_Num CHAR(2) NOT NULL,                 -- Term number
    Yr_Year INT NOT NULL                      -- Year
);

-- Table: Semester
CREATE TABLE Semester (
    Sem_ID INT AUTO_INCREMENT PRIMARY KEY,    -- Semester ID
    Trm_Num CHAR(2) NOT NULL,                 -- Term number
    Yr_Year INT NOT NULL,                     -- Year
    Sem_Start DATE,                           -- Start date
    Sem_End DATE                              -- End date
);

-- Table: State
CREATE TABLE State (
    Sta_Abbr CHAR(2) PRIMARY KEY,             -- State abbreviation
    Sta_Name VARCHAR(25) NOT NULL             -- Full state name
);

-- Table: Student
CREATE TABLE Student (
    Per_ID INT PRIMARY KEY,                   -- Student person ID
    CRD_ID INT NOT NULL                       -- Credential program reference
);

-- Table: Subject
CREATE TABLE Subject (
    Sub_Abbr CHAR(3) PRIMARY KEY,             -- Subject abbreviation
    Sub_Name VARCHAR(25) NOT NULL,            -- Full subject name
    DPT_ID INT NOT NULL                       -- Department reference
);

-- Table: Term
CREATE TABLE Term (
    Trm_Num CHAR(2) PRIMARY KEY,              -- Term number
    Trm_Desc VARCHAR(10),                     -- Term description (e.g., Fall)
    Trm_Length INT(2)                         -- Term length in weeks
);

-- Table: Year
CREATE TABLE Year (
    Yr_Year INT PRIMARY KEY                   -- Academic year
);

-- Table: ZipCode
CREATE TABLE ZipCode (
    Zip_Code VARCHAR(10) PRIMARY KEY,         -- Zip or postal code
    Zip_City VARCHAR(25) NOT NULL,            -- City name
    Sta_Abbr CHAR(2) NOT NULL                 -- State abbreviation reference
);
