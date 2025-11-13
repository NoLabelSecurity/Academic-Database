# 🎓 Academic Database System  
A fully normalized academic information management system integrating a MySQL/MariaDB backend, Microsoft Access front-end UI, ERD documentation, automated SQL reporting, CSV datasets, and full project documentation.

---

## 📛 Badges
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Database](https://img.shields.io/badge/Database-MySQL-blue)
![Access](https://img.shields.io/badge/Frontend-Microsoft%20Access-7A0)
![Schema](https://img.shields.io/badge/Design-ERD%20%2F%203NF-blueviolet)
![Status](https://img.shields.io/badge/Maintained-Yes-success)
![Repo Owner](https://img.shields.io/badge/GitHub-NoLabelSecurity-black)

---

# 📚 Table of Contents
- [Overview](#overview)
- [Key Features](#key-features)
- [Repository Structure](#repository-structure)
- [System Architecture](#system-architecture)
- [Entity-Relationship Diagram](#entity-relationship-diagram)
- [Database Schema](#database-schema)
- [Microsoft Access Application](#microsoft-access-application)
- [Data Dictionary](#data-dictionary)
- [Sample Data and Backups](#sample-data-and-backups)
- [SQL Scripts](#sql-scripts)
- [Installation & Setup](#installation--setup)
- [Screenshots & Media](#screenshots--media)
- [Skills Demonstrated](#skills-demonstrated)
- [Future Enhancements](#future-enhancements)
- [License](#license)

---

# 🧾 Overview
The **Academic Database System** centralizes core institutional data including student demographics, faculty assignments, course catalogs, degree requirements, prerequisites, completions, grades, and semester offerings.

The project includes:
- Schema design  
- ERD modeling  
- SQL development  
- Automated reporting  
- CSV dataset backups  
- A fully functional Microsoft Access front-end  

Built for academic workflows, portfolio demonstration, and database architecture practice.

---

# ⭐ Key Features

- **Normalized SQL Schema (3NF+)** with 25+ entities
- **Full ERD** in Crow’s Foot notation
- **Microsoft Access application** with forms, queries, reports
- **Data Dictionary** (PDF + DOCX)
- **Automated scripts** for transcripts, reports, DB creation
- **CSV dataset backups** for all tables
- **Demo videos** and documentation
- **Professional repo structure**

---

# 📁 Repository Structure

<details>
<summary><strong>Click to expand</strong></summary>

```text
Academic-Database/
|-- Application/
|   |-- Academic_Database.accdb
|   |-- README.txt
|   |-- assets/
|       |-- forms_view.png
|       |-- relationship_view.png
|       |-- reports_preview.png
|       |-- README.txt
|
|-- Database/
|   |-- README.txt
|   |-- Schema/
|   |   |-- create_db.sql
|   |   |-- seed_static.sql
|   |   |-- insert_data.sql
|   |   |-- schema_overview.png
|   |
|   |-- Data/
|   |   |-- export_data.sql
|   |   |-- my_data.sql
|   |   |-- record_transcript.sql
|   |   |-- select_all.sql
|   |
|   |-- Scripts/
|   |   |-- report_script.sql
|   |   |-- transcript.sql
|   |   |-- sample_query.sql
|   |
|   |-- Backups/
|       |-- Sample_Data/  (CSV files for all tables)
|       |-- README.txt
|
|-- Docs/
|   |-- ERD/
|   |   |-- Student_Faculty_Database_ERD.png
|   |   |-- Relationships_Report.pdf
|   |   |-- Objects_Report.pdf
|   |   |-- README.txt
|   |
|   |-- Data_Dictionary/
|   |   |-- Updated_Data_Dictionary.docx
|   |   |-- Updated_Data_Dictionary.pdf
|   |   |-- README.txt
|   |
|   |-- Project_Report.pdf
|   |-- Presentation_Slides.pptx
|   |-- Project_Summary.md
|   |-- README.txt
|
|-- Assets/
|   |-- screenshots/
|   |-- videos/
|   |-- banner.png
|   |-- logo.png
|
|-- Notes/
|   |-- Project_Notes.txt
|   |-- Repo Structure.txt
|
|-- .gitignore
|-- LICENSE
|-- README.md
|-- CONTRIBUTING.txt
|-- CODE_OF_CONDUCT.txt
|-- setup_instructions.txt
|-- requirements.txt
|-- CHANGELOG.txt

```

🖼️ Screenshots & Media

(Place your media in /Assets/screenshots and /Assets/videos)

Database relationship view
Forms UI
Transcript reporting
Application walkthrough videos

📄 License

This project is licensed under the MIT License.


</details>

---

# 🏛️ System Architecture

## 🔹 Backend Technologies
- MySQL / MariaDB  
- SQL DDL & DML  
- Foreign key constraints  
- 3rd Normal Form schema design  

## 🔹 Frontend Technologies
- Microsoft Access (ACCDB)  
- Data entry forms  
- Lookup forms  
- Reporting tools  
- Query builder  

## 🔹 Documentation
- ERD diagrams  
- Data dictionary  
- Project report  
- Presentation slides  
- Demo videos  

---

# 🧩 Entity-Relationship Diagram

Includes 25+ fully normalized entities, including:

`Student`, `Faculty`, `Course`, `Subject`, `Requirement`, `Credential`,  
`Semester`, `PreReq`, `Graduation`, `Fulfillment`, `Address`,  
`Department`, `Gender`, `Grade`, `Term`, `Year`, `ZipCode`, etc.

---

# 🗄️ Database Schema

Scripts include:

### **Creation**
- `create_db.sql`
- `seed_static.sql`
- `insert_data.sql`

### Key Schema Features
- Primary & foreign keys  
- Composite keys  
- Many-to-many linking tables  
- Prerequisite enforcement  
- Faculty load structure  
- Degree requirement mapping  

---

# 🖥️ Microsoft Access Application

### **Forms**
- Student entry  
- Faculty entry  
- Course lookup  
- Credential tracking  
- Enrollment & completion  

### **Reports**
- Student transcript  
- Degree progress report  
- Faculty load summary  

### **Queries**
- Parameterized  
- Lookup joins  
- Aggregated summaries  

---

# 📘 Data Dictionary
Includes a detailed description of:
- Fields  
- Data types  
- Constraints  
- Key relationships  
- Table definitions  

Located under `Docs/Data_Dictionary/`.

---

# 📦 Sample Data and Backups
`Backups/Sample_Data/` includes CSV exports for every table for easy import, testing, or data restoration.

---

# 🛠️ SQL Scripts

### **Data Scripts**
- `my_data.sql`
- `export_data.sql`
- `record_transcript.sql`

### **Automation Scripts**
- `transcript.sql`
- `report_script.sql`
- `sample_query.sql`

---

# 🚀 Installation & Setup

```bash
# 1. Clone the repository
git clone https://github.com/NoLabelSecurity/Academic-Database.git
cd Academic-Database

# 2. Build the database
source create_db.sql
source seed_static.sql
source insert_data.sql

Open the Access front-end:
Application/Academic_Database.accdb


- - -

# 🖼️ Screenshots & Media

(Place your media in /Assets/screenshots and /Assets/videos)

- Database relationship view
- Forms UI
- Transcript reporting
- Application walkthrough videos

# 🧠 Skills Demonstrated

- Relational database design
- SQL schema development (DDL/DML)
- 3NF normalization
- ERD modeling (Crow’s Foot notation)
- Microsoft Access UI development
- Report generation
- CSV dataset engineering
- Documentation & technical writing
- Repo structuring for professional workflows

🌱 Future Enhancements

- Web version (Flask, Django, or Node.js)
- Automated PDF transcript generator
- Analytics dashboard
- API endpoints
- Role-based authorization

📄 License

This project is licensed under the MIT License.





