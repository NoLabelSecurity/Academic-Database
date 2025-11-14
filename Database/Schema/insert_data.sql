/* ================================================================
   File Name:        insert_data.sql
   Developer:        Brian Lorick
   Organization:     NoLabel Security
   Created On:       03/2025
   Last Modified:    11/11/2025
   Version:          1.0.0
--------------------------------------------------------------------
   Description:
   This SQL script inserts dummy test data into the database for
   development and demonstration purposes. It populates tables such
   as Person, Phone, Address, Section, and Completion.

--------------------------------------------------------------------
   Features:
   - Adds sample people, phone numbers, and addresses.
   - Defines example course sections across multiple terms.
   - Records student completions and grades for testing.

--------------------------------------------------------------------
   Usage:
   Run after schema creation and base seeding:
       SOURCE dummy_data.sql;

--------------------------------------------------------------------
   Notes:
   - Data is purely for testing; replace or remove for production.
   - Some Person IDs, Term codes, or foreign keys assume prior inserts.
   - Ensure foreign key checks are disabled or adjusted as needed.

--------------------------------------------------------------------
   License:
   Proprietary – NoLabel Security
================================================================ */


-- Insert data into Person table
INSERT INTO Person (Per_ID, Per_FirstName, Per_LastName, Per_Suffix, Gen_Code, Per_DOB) VALUES
(1, 'John', 'Doe', NULL, 'M', '1990-01-01'),     -- John Doe, Male, born Jan 1, 1990
(2, 'Sally', 'Smith', NULL, 'F', '1995-02-15'),  -- Sally Smith, Female, born Feb 15, 1995
(3, 'Wade', 'Hampton', NULL, 'M', '1994-06-20'), -- Wade Hampton, Male, born Jun 20, 1994
(4, 'John', 'Doe', 'Jr.', 'M', '1993-11-30');    -- John Doe Jr., Male, born Nov 30, 1993


-- Insert for Phone
INSERT INTO Phone (Pho_AreaCode, Pho_Exchange, Pho_Extension, Per_ID, CT_ID) VALUES
(864, 940, 1234, 1, 1),  -- John Doe, home phone
(864, 657, 0152, 1, 2),  -- John Doe, parent contact
(864, 646, 1548, 1, 2),  -- John Doe, secondary contact
(864, 940, 8854, 2, 2),  -- Sally Smith, parent contact
(864, 646, 8788, 2, 2),  -- Sally Smith, alternate parent contact
(864, 357, 5578, 2, 2),  -- Sally Smith, campus phone
(864, 667, 1234, 3, 2),  -- Wade Hampton, parent contact
(864, 657, 0152, 4, 2);  -- John Doe Jr., parent contact


-- Insert data into Address table
-- Person 1 (John Doe)
INSERT INTO Address (Add_House, Add_Street, Zip_Code, Per_ID, CT_ID) VALUES
('123', 'Main', '25779', 1, 1);  -- Home address for John Doe

-- Person 2 (Sally Smith)
INSERT INTO Address (Add_House, Add_Street, Zip_Code, Per_ID, CT_ID) VALUES
('101', 'Elm', '29624', 2, 1),  -- Home address for Sally Smith
('146', '3rd', '40010', 2, 2);  -- Parents’ address for Sally Smith

-- Person 3 (Wade Hampton)
INSERT INTO Address (Add_House, Add_Street, Zip_Code, Per_ID, CT_ID) VALUES
('146', 'Mechanic', '25776', 3, 3);  -- Campus address for Wade Hampton

-- Person 4 (John Doe Jr.)
INSERT INTO Address (Add_House, Add_Street, Zip_Code, Per_ID, CT_ID) VALUES
('123', 'Main', '25779', 4, 1);  -- Home address for John Doe Jr.


-- Insert data into Section table (mapping courses to sections)
INSERT INTO Section (Sec_ID, Sec_Num, Sub_Abbr, Crs_Num, Per_ID, Trm_Num, Yr_Year) VALUES
(1, 101, 'CPT', 114, 1, 'FA', 2017),  -- Section 101: CPT 114, taught by Person 1, Fall 2017
(2, 102, 'CPT', 167, 1, 'FA', 2017),  -- Section 102: CPT 167, taught by Person 1, Fall 2017
(3, 103, 'CPT', 167, 1, 'SP', 2017),  -- Section 103: CPT 167, taught by Person 1, Spring 2017
(4, 104, 'CPT', 170, 1, 'FA', 2017),  -- Section 104: CPT 170, taught by Person 1, Fall 2017
(5, 105, 'ENG', 155, 1, 'FA', 2017),  -- Section 105: ENG 155, taught by Person 1, Fall 2017
(6, 106, 'MAT', 155, 1, 'SP', 2017),  -- Section 106: MAT 155, taught by Person 1, Spring 2017
(7, 107, 'CPT', 270, 1, 'SP', 2017),  -- Section 107: CPT 270, taught by Person 1, Spring 2017
(8, 108, 'CPT', 114, 2, 'FA', 2017),  -- Section 108: CPT 114, taught by Person 2, Fall 2017
(9, 109, 'CPT', 170, 2, 'FA', 2017),  -- Section 109: CPT 170, taught by Person 2, Fall 2017
(10, 110, 'CPT', 270, 2, 'SP', 2017), -- Section 110: CPT 270, taught by Person 2, Spring 2017
(11, 111, 'ENG', 155, 2, 'SU', 2017), -- Section 111: ENG 155, taught by Person 2, Summer 2017
(12, 112, 'ENG', 155, 3, 'SU', 2017), -- Section 112: ENG 155, taught by Person 3, Summer 2017
(13, 113, 'CPT', 114, 3, 'SU', 2017), -- Section 113: CPT 114, taught by Person 3, Summer 2017
(14, 114, 'MAT', 155, 3, 'SU', 2017), -- Section 114: MAT 155, taught by Person 3, Summer 2017
(15, 115, 'CPT', 170, 4, 'FA', 2017); -- Section 115: CPT 170, taught by Person 4, Fall 2017


-- Insert data into Completion table (linking students to course sections and grades)
-- Person 1 (John Doe)
INSERT INTO Completion (Per_ID, Sec_ID, Grd_Sym) VALUES
(1, 1, 'A'),  -- CPT 114, Fall 2017, Grade A
(1, 2, 'F'),  -- CPT 167, Fall 2017, Grade F
(1, 3, 'C'),  -- CPT 167, Spring 2017, Grade C
(1, 4, 'B'),  -- CPT 170, Fall 2017, Grade B
(1, 5, 'B'),  -- ENG 155, Fall 2017, Grade B
(1, 6, 'C'),  -- MAT 155, Spring 2017, Grade C
(1, 7, 'A');  -- CPT 270, Spring 2017, Grade A

-- Person 2 (Sally Smith)
INSERT INTO Completion (Per_ID, Sec_ID, Grd_Sym) VALUES
(2, 8, 'B'),  -- CPT 114, Fall 2017, Grade B
(2, 9, 'B'),  -- CPT 170, Fall 2017, Grade B
(2, 10, 'B'), -- CPT 270, Spring 2017, Grade B
(2, 11, 'B'); -- ENG 155, Summer 2017, Grade B

-- Person 3 (Wade Hampton)
INSERT INTO Completion (Per_ID, Sec_ID, Grd_Sym) VALUES
(3, 12, 'A'),  -- ENG 155, Summer 2017, Grade A
(3, 13, 'C'),  -- CPT 114, Summer 2017, Grade C
(3, 14, 'C');  -- MAT 155, Summer 2017, Grade C

-- Person 4 (John Doe Jr.)
INSERT INTO Completion (Per_ID, Sec_ID, Grd_Sym) VALUES
(4, 15, 'W');  -- CPT 170, Fall 2017, Grade W (Withdrawal)

