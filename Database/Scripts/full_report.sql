/* ============================================================
   FILE:           db_full_report.sql
   PROJECT:        Academic Database System
   ORGANIZATION:   NoLabelSecurity Development
   AUTHOR:         NoLabelSecurity
   VERSION:        1.0
   CREATED:        2025-02-14
   LAST UPDATED:   2025-02-14

   SCRIPT: Full Database Report Generator (Pure SQL)

   DESCRIPTION:
       This script generates a complete metadata and structural
       report for the currently selected MariaDB/MySQL database.

       The report includes:
           • List of all tables
           • Columns & data types
           • Primary keys
           • Foreign keys
           • Indexes
           • Row counts
           • Storage size (MB)
           • Full CREATE TABLE statements
           • View definitions (if any)
           • Routine / trigger metadata (if any)

       Output:
           • Prints formatted report directly in the terminal
           • Exports report to:
                 db_full_report.txt
             (Located in the same directory as this script)

   EXECUTION:
       1. Launch MariaDB/MySQL terminal (XAMPP or standalone)
       2. Select the target database:
              USE Academic_Database;
       3. Run this report script:
              SOURCE db_full_report.sql;

   ENVIRONMENT REQUIREMENTS:
       • MariaDB or MySQL running under XAMPP (Windows)
       • secure-file-priv MUST be disabled or set to ""
       • script must have permission to write output file

   CHANGE NOTES:
       • v1.0 – Initial release of report generator script.
         Added full schema introspection and text export.

   INTERNAL REFERENCE:
       SOURCE DIRECTORY:
           I:/PROJECTS/Academic Database/Database/Scripts/
       This script may be executed independently or as part of
       the full automation pipeline.

   ============================================================ */


/* ============================================================
   FULL DATABASE REPORT GENERATOR (XAMPP MariaDB Compatible)
   Pure SQL – Runs inside MySQL terminal
   Exports to: db_full_report.txt
   ============================================================ */

SET @DB = DATABASE(); -- store the name of the currently selected database

SET @OUTFILE = 'I:/PROJECTS/Academic Database/Database/Scripts/db_full_report.txt'; -- output file location for exported report

DROP TABLE IF EXISTS report_tmp; -- remove temporary table if it already exists

CREATE TABLE report_tmp (line TEXT); -- create a table to hold each line of the final report

DROP PROCEDURE IF EXISTS add_line; -- remove procedure if it exists already

DELIMITER $$ -- switch delimiter so we can safely define a stored procedure

CREATE PROCEDURE add_line(IN txt TEXT) -- procedure to append one line to the report table
BEGIN
    INSERT INTO report_tmp VALUES (txt); -- insert the text line into the report table
END$$ -- end of procedure definition

DELIMITER ; -- restore normal delimiter

CALL add_line(CONCAT('=== FULL DATABASE REPORT FOR: ', @DB, ' ===')); -- add report header showing database name

CALL add_line(CONCAT('Generated: ', NOW())); -- add timestamp of when report ran

CALL add_line('-----------------------------------------------------'); -- add visual separator

CALL add_line('\n=== TABLES ==='); -- section header for table listing

INSERT INTO report_tmp
SELECT TABLE_NAME -- table name
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = @DB; -- restrict to current database

CALL add_line('\n=== COLUMNS & DATA TYPES ==='); -- section header for columns metadata

INSERT INTO report_tmp
SELECT CONCAT(TABLE_NAME, '.', COLUMN_NAME, ' - ', COLUMN_TYPE,
              ' NULL:', IS_NULLABLE, ' KEY:', COLUMN_KEY, ' EXTRA:', EXTRA) -- format column info
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = @DB
ORDER BY TABLE_NAME, ORDINAL_POSITION; -- list columns in defined order

CALL add_line('\n=== PRIMARY KEYS ==='); -- section header for primary keys

INSERT INTO report_tmp
SELECT CONCAT(TABLE_NAME, ': ', COLUMN_NAME) -- format PK info
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = @DB
AND CONSTRAINT_NAME = 'PRIMARY'; -- only primary key constraints

CALL add_line('\n=== FOREIGN KEYS ==='); -- section header for foreign keys

INSERT INTO report_tmp
SELECT CONCAT(TABLE_NAME, '.', COLUMN_NAME, ' -> ',
              REFERENCED_TABLE_NAME, '.', REFERENCED_COLUMN_NAME) -- FK relationship text
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = @DB
AND REFERENCED_TABLE_NAME IS NOT NULL; -- ensure it's a foreign key

CALL add_line('\n=== INDEXES ==='); -- section header for indexes

INSERT INTO report_tmp
SELECT CONCAT(TABLE_NAME, ' (', INDEX_NAME, ') ', COLUMN_NAME,
              ' UNIQUE:', IF(NON_UNIQUE=0,'YES','NO')) -- format index info
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = @DB; -- restrict to current database

CALL add_line('\n=== ROW COUNTS ==='); -- section header for row counts

INSERT INTO report_tmp
SELECT CONCAT(TABLE_NAME, ': ', TABLE_ROWS, ' rows') -- format row count
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = @DB; -- restrict to current database

CALL add_line('\n=== TABLE SIZE (MB) ==='); -- section header for table storage sizes

INSERT INTO report_tmp
SELECT CONCAT(TABLE_NAME, ': ',
              ROUND((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024, 2), ' MB') -- compute size in MB
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = @DB; -- restrict to current database

CALL add_line('\n=== CREATE TABLE STATEMENTS ==='); -- section header for create table DDL

SET SESSION group_concat_max_len = 1000000; -- increase max length so DDL is not truncated

INSERT INTO report_tmp
SELECT CONCAT('\n---- ', TABLE_NAME, ' ----\n', CREATE_TABLE) -- format create table output
FROM (
    SELECT 
        t.TABLE_NAME,
        (SELECT CREATE_STATEMENT
         FROM INFORMATION_SCHEMA.TABLES
         WHERE TABLE_SCHEMA = @DB
         AND TABLE_NAME = t.TABLE_NAME) AS CREATE_TABLE -- retrieve full DDL text
    FROM INFORMATION_SCHEMA.TABLES t
    WHERE t.TABLE_SCHEMA = @DB
) AS x; -- subquery needed for formatting

CALL add_line('\n=== REPORT COMPLETE ==='); -- final footer line

SELECT line
FROM report_tmp
INTO OUTFILE @OUTFILE
LINES TERMINATED BY '\n'; -- write entire report to text file on disk

SELECT 'Report written to: db_full_report.txt' AS Status; -- confirmation message in terminal

