# Requirements

This project uses **MariaDB/MySQL via XAMPP (Windows)** as the backend database and **Microsoft Access** as the frontend interface. All development and execution rely on SQL scripts created manually and executed through the MySQL terminal.

---

## 1. Software Requirements

### Backend (Database Layer)
- **XAMPP for Windows**
  - Includes Apache, PHP, MySQL/MariaDB
- **MariaDB** (10.x or later)
- **MySQL Command-Line Client**  
  For running `.sql` scripts using:
  ```sql
  SOURCE filename.sql;
  ```

### Frontend (Application Layer)
- **Microsoft Access (MS Access 2010 or later)**
  - Used as the GUI frontend
  - Connects to MariaDB via ODBC
  - Reads and writes data through linked tables

### Development Tools
- **Notepad++** or any SQL-capable editor  
- Optional GUI tools:
  - **DBeaver**
  - **HeidiSQL**
  - **phpMyAdmin**
  - **MySQL Workbench**
- Optional:
  - **Git** for version control

---

## 2. Database Requirements

- MariaDB 10.x or compatible MySQL version  
- MySQL SQL Mode defaults (sufficient for project needs)  
- A database user with privileges:
  - `CREATE DATABASE`
  - `CREATE TABLE`
  - `INSERT`, `SELECT`, `UPDATE`, `DELETE`
  - `ALTER`, `DROP`

### Expected SQL Script Structure
The repository assumes a consistent folder structure, for example:

```
/sql/
  01_create_database.sql
  02_create_tables.sql
  03_insert_data.sql
```

---

## 3. Microsoft Access Requirements

### ODBC Connection Setup

1. Install **MariaDB Connector/ODBC** (32-bit or 64-bit depending on Access version)
2. Create a System DSN:
   - Driver: *MariaDB ODBC 3.1* or newer
   - Server: `localhost`
   - User: `root` or project-specific user
   - Database: your project DB name

3. In MS Access:
   - Go to **External Data → ODBC Database**
   - Select **Link to the data source by creating a linked table**
   - Choose the DSN you created
   - Link the tables from MariaDB

### Access Frontend Usage
- All forms, queries, and reports operate on **linked MariaDB tables**
- ODBC must remain active for Access to read/write data
- Optional: Custom VBA modules for automation or validation

---

## 4. Executing SQL Scripts (Terminal Workflow)

1. Start MySQL/MariaDB through the XAMPP Control Panel  
2. Open terminal:
   ```bash
   mysql -u root -p
   ```
3. Inside the MySQL client, execute your SQL scripts:
   ```sql
   SOURCE path/to/01_create_database.sql;
   SOURCE path/to/02_create_tables.sql;
   SOURCE path/to/03_insert_data.sql;
   ```

---

## 5. Optional Tools

The following tools are optional but recommended:

- **phpMyAdmin** (included with XAMPP)
- **DBeaver** (excellent cross-platform DB IDE)
- **HeidiSQL** (lightweight Windows DB tool)
- **DB Browser for MariaDB**
- **MySQL Workbench** (limited support with MariaDB but usable)

---

## 6. Summary

This project requires:

- XAMPP with MariaDB on Windows  
- Microsoft Access frontend via ODBC  
- SQL scripts executed through the MySQL terminal  
- Notepad++ for development  
- A basic SQL environment with ability to create and manage schemas and tables  

All components together allow a full backend–frontend workflow using MariaDB as the engine and Access as the UI interface.
