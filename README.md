<!-- Project Logo -->
<p align="center">
  <img src="Assets/gifs/logo.gif" 
    alt="AcademicDB Logo" 
    width="225" 
    height="200">
</p>

<!-- Demo GIFs Side by Side -->
<p align="center">
  <table>
    <tr>
      <td align="center">
        <img src="Assets/gifs/terminal select.gif" 
             alt="AcademicDB Terminal Demo" 
             width="475" 
             height="275">
      </td>
      <td align="center">
        <img src="Assets/gifs/forms_view.gif" 
             alt="AcademicDB Forms View Demo" 
             width="475" 
             height="275">
      </td>
    </tr>
  </table>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/MS%20Access-A4373A?style=for-the-badge&logo=microsoft-access&logoColor=white" />
  <img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=database&logoColor=white" />
  <img src="https://img.shields.io/badge/XAMPP-FB7A24?style=for-the-badge&logo=xampp&logoColor=white" />
  <img src="https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white" />
  <img src="https://img.shields.io/badge/Notepad++-90E59A?style=for-the-badge&logo=notepadplusplus&logoColor=black" />
  <img src="https://img.shields.io/badge/ODBC-006699?style=for-the-badge&logo=databricks&logoColor=white" />
</p>


## Project Description

**AcademicDB** is a structured academic information system designed to manage student, course, faculty, and institutional data using a hybrid architecture that combines the usability of **Microsoft Access** with the power and scalability of **MariaDB** (running through XAMPP).

The system uses **Access forms, queries, and reports** as the primary front-end interface while leveraging a **MariaDB/MySQL relational database** as the backend storage engine. This architecture provides the convenience of a desktop UI with the robustness of a full SQL server.

All database schema, tables, relationships, and stored procedures are authored and maintained using **hand-written MySQL scripts**, executed via the terminal using the `SOURCE` command. This ensures full control, transparency, and portability of the database logic.

AcademicDB is designed for educational institutions, researchers, and administrative offices that require a **local, secure, customizable academic data system** without relying on cloud infrastructure or proprietary SIS platforms.

---

## Key Components

### **1. Microsoft Access Frontend (Forms, Queries, Reports)**
The Access frontend serves as the primary user interface for interacting with the database.  
It provides a structured and user-friendly environment for entering, reviewing, and managing academic records.  
Key elements include:

- **Data Entry Forms:**  
  Organized interfaces for students, courses, faculty, subjects, grades, and enrollment data.

- **Navigation Panels / Switchboards:**  
  Allow quick access to key sections of the system.

- **Queries:**  
  Predefined and dynamic Access queries for filtering, searching, and summarizing academic data.

- **Reports:**  
  Printable academic reports (student lists, class schedules, course rosters, etc.).

- **ODBC Connectivity:**  
  Access communicates with MariaDB in real time through an ODBC DSN configuration.

---

### **2. MariaDB Relational Database (via XAMPP)**
MariaDB functions as the backend data engine, hosting all academic tables and enforcing data integrity.  
The XAMPP environment ensures local hosting, full control, and offline operation.

**Core functions include:**

- **Relational Data Storage:**  
  Well-organized tables for Students, Courses, Faculty, Subjects, Departments, Grade Levels, Enrollments, and supporting metadata.

- **Foreign Key Constraints:**  
  Ensures accurate relationships (e.g., students ↔ grades, courses ↔ departments).

- **Indexed Performance:**  
  Indexed fields make searches and joins efficient, even with large datasets.

- **ACID Compliance:**  
  Prevents data corruption and guarantees reliable transactions.

---

### **3. SQL Schema & Script Library**
All database structures are defined and maintained through a fully scripted SQL environment, written manually in Notepad++.

This includes:

- **Table Creation Scripts**  
- **Primary/Foreign Key Constraints**  
- **Insert Scripts for Lookup Tables**  
- **Views and Data Dictionaries**  
- **Stored Procedures / Triggers** (if implemented)  
- **Data Export and Verification Scripts**  

Scripts are executed via the MySQL terminal using commands like:

  mysql -u root -p
  SOURCE /path/to/schema.sql;
  SOURCE /path/to/insert_data.sql;
  SOURCE /path/to/select_all.sql;
  
This ensures the database is fully reproducible, version-controlled, and portable.

---

### **4. XAMPP Server Environment**
XAMPP provides the MariaDB server runtime and administrative tools.

**Key responsibilities:**

- Hosting MariaDB locally  
- Allowing command-line SQL access  
- Centralizing configuration files  
- Ensuring a fully offline, secure environment  
- Letting developers test and rebuild the database consistently  

XAMPP makes the system easy to deploy on any Windows machine without complex setup.

---

### **5. Real-Time Integration Layer (Access ↔ ODBC ↔ MariaDB)**
Communication between the frontend and backend occurs through an ODBC connection.

This layer provides:

- **Live database reads/writes**  
- **Automatic form updates when SQL data changes**  
- **User-friendly Access UI powered by real SQL queries**  
- **Secure, controlled data flow from Access to the database**  

This hybrid architecture combines a desktop-friendly interface with SQL-level stability and structure.

---

### **6. Documentation, Scripts, and Demo Assets**
The repository includes supporting materials such as:

- **GIFs and screen recordings** demonstrating terminal queries and Access form usage  
- **Schema scripts** for reproducing the database  
- **Notepad++ SQL development examples**  
- **Usage examples and test query outputs**  

These assets help users understand the system structure and how to deploy or modify it.

---

## Key Features

### 📁 1. User-Friendly Access Frontend
AcademicDB provides a structured Microsoft Access interface for managing academic information.  
Users can easily enter, update, and browse student, faculty, course, and enrollment data through well-organized forms, dropdowns, and navigation menus—without needing SQL knowledge.

---

### 🗄️ 2. Clean, Normalized Relational Database (MariaDB)
The backend is built on a properly normalized MariaDB schema, ensuring data consistency and logical relationships across all academic entities.  
The database design includes tables for Students, Courses, Subjects, Departments, Faculty, and Enrollment records.

#### **Relationship Diagram (ERD View)**  
This screenshot shows the actual database relationships used in AcademicDB:

<p align="center">
  <img src="Assets/screenshots/relationship_view.png" alt="AcademicDB Relationship View" width="700">
</p>

---

### 🧾 3. SQL Script–Driven Setup
All tables, fields, constraints, and sample data are created using manual SQL scripts.  
Developers can rebuild the entire schema using the MySQL terminal:

mysql -u root -p
SOURCE schema.sql;
SOURCE inserts.sql;

This keeps the project transparent, reproducible, and easy to modify.

#### **Schema Creation Example (create_db.sql)**
Below is a sample of the core table definitions that build the AcademicDB structure:

    CREATE TABLE Person (
        Per_ID INT AUTO_INCREMENT PRIMARY KEY,
        Per_FirstName VARCHAR(20) NOT NULL,
        Per_LastName VARCHAR(20) NOT NULL,
        Per_Suffix VARCHAR(20),
        Gen_Code CHAR(1),
        Per_DOB DATE NOT NULL
    );
    
    CREATE TABLE Course (
        CRS_ID INT AUTO_INCREMENT PRIMARY KEY,
        Crs_Num INT(3) NOT NULL,
        Sub_Abbr CHAR(3) NOT NULL,
        Crs_Desc VARCHAR(200),
        Crs_Title VARCHAR(25) NOT NULL,
        CrS_Hrs INT NOT NULL
    );

These CREATE TABLE statements define the fundamental entities used throughout the database.

#### **Sample Data Insert Example (insert_data.sql)**
Your database also includes pre-built test data for immediate use inside the Access frontend:

    INSERT INTO Person (Per_ID, Per_FirstName, Per_LastName, Per_Suffix, Gen_Code, Per_DOB) VALUES
    (1, 'John', 'Doe', NULL, 'M', '1990-01-01'),
    (2, 'Sally', 'Smith', NULL, 'F', '1995-02-15');

    INSERT INTO Phone (Pho_AreaCode, Pho_Exchange, Pho_Extension, Per_ID, CT_ID) VALUES
    (864, 940, 1234, 1, 1),
    (864, 657, 0152, 1, 2);

    

This approach ensures every developer or tester starts with a consistent and fully linked dataset, making debugging and UI demonstrations significantly easier.


---

### 🔌 4. Real-Time Access ↔ MariaDB Integration (ODBC)
The frontend interacts with the SQL backend through an ODBC DSN connection, enabling:

- Live read/write operations  
- Auto-updating forms  
- Reliable data synchronization  

This hybrid design combines the simplicity of Access with the power of a real database engine.

---

### 🖥️ 5. Local-First, Secure, and Offline Ready
Because AcademicDB runs entirely on XAMPP/MariaDB and MS Access:

- No internet is required  
- Data remains private and under local control  
- Deployment is fast and simple  
- Perfect for small institutions, labs, or training environments  

---

### 🔍 6. Built-In Queries & Data Filtering
AcademicDB includes pre-built Access and SQL queries for viewing and analyzing academic records.  
Users can quickly filter students, lookup course assignments, check enrollment counts, and generate useful summaries.

---

### 📑 7. Printable Academic Reports
Access reporting tools allow staff to generate:

- Student lists  
- Course catalogs  
- Faculty rosters  
- Enrollment summaries  

Reports can be printed or exported for offline use.

---

### 🚀 8. Easy to Extend
The system is structured so new modules can be added easily, such as schedules, attendance, or grade tracking.  
Both the Access frontend and SQL backend are designed with clarity in mind, making customization straightforward.



---



