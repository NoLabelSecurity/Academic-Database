# Contributing Guidelines

Thank you for your interest in contributing to the **Academic-Database** project!  
This document provides guidelines for contributing SQL scripts, documentation, and Microsoft Access frontend updates.

---

## 1. How to Contribute

### Step 1 — Fork the Repository
Click **Fork** on GitHub to create your own copy of the project.

### Step 2 — Create a New Branch
Use a descriptive branch name:
```
feature/add-new-table
fix/typo-in-sql
docs/update-setup-guide
```

### Step 3 — Make Your Changes
Depending on your contribution, this may include:
- Adding or updating `.sql` files
- Modifying the MS Access frontend (forms, queries, reports)
- Updating documentation (`README`, `SETUP_INSTRUCTIONS`, etc.)

### Step 4 — Test Your Changes
Before submitting:
- Run all SQL scripts through the terminal using:
  ```sql
  SOURCE your_script.sql;
  ```
- Verify tables load correctly in MS Access
- Confirm ODBC connections still work
- Ensure there are no syntax errors in SQL scripts

### Step 5 — Commit Your Work
Use clear and conventional commit messages:
```
feat: add new student table script
fix: correct foreign key reference in courses table
docs: update setup instructions for ODBC
```

### Step 6 — Submit a Pull Request
Open a PR explaining:
- What you changed  
- Why the change was needed  
- Any impact on existing scripts or MS Access objects  

A project maintainer will review your PR and may provide feedback.

---

## 2. SQL Coding Standards

To ensure consistency across contributions:

### 2.1 SQL File Formatting
- Use uppercase for SQL keywords:
  ```
  CREATE TABLE, INSERT INTO, SELECT, DEFAULT, CONSTRAINT
  ```
- End statements with `;`
- Indent nested queries
- Use clear file names:
  ```
  01_create_database.sql
  02_create_tables.sql
  03_insert_data.sql
  ```

### 2.2 Table Design Guidelines
- All tables should include:
  - A primary key  
  - Data types appropriate for MariaDB  
  - Foreign keys where applicable  
- Use `InnoDB` engine unless otherwise needed

---

## 3. Microsoft Access Contribution Guidelines

If contributing to the Access frontend:

### 3.1 File Structure
- Store the `.accdb` file in `/frontend/`
- Linked tables must remain connected to the MariaDB DSN

### 3.2 Forms and Reports
If modifying or adding:
- Use consistent naming conventions
  - `frmStudents`, `frmCourses`, `rptGrades`
- Ensure navigation paths remain intact
- Ensure all objects work with the linked MariaDB schema

### 3.3 Macros or VBA
- Comment your code
- Use meaningful names for functions and modules

---

## 4. Documentation Standards

### Required Updates When Contributing
If your contribution:
- Adds a new SQL script  
- Modifies database structure  
- Changes Access functionality  
- Updates installation/setup steps  

You **must** update:
- `CHANGELOG.md`
- `SETUP_INSTRUCTIONS.md`
- Any related documentation

---

## 5. Code of Conduct

All contributors must:
- Follow professional and respectful communication  
- Avoid hostile or unconstructive feedback  
- Collaborate openly and document clearly  

---

## 6. License

By contributing to this repository, you agree that your contributions will be released under the project’s license.

---

Thank you for helping make this project better!  
Your contributions are greatly appreciated.
