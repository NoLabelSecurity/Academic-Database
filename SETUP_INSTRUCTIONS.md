# Setup Instructions

This document provides complete setup instructions for the Academic-Database project using **XAMPP (MariaDB)** as the backend and **Microsoft Access** as the frontend GUI.

---

## 1. Install Required Software

### 1.1 Install XAMPP for Windows
1. Download XAMPP from:
   https://www.apachefriends.org/
2. Run installer and select:
   - Apache
   - MySQL/MariaDB
   - PHP (optional)
3. Launch **XAMPP Control Panel**.
4. Start **MySQL**.

### 1.2 Install MariaDB ODBC Connector
Required to allow MS Access to connect to MariaDB.

1. Download MariaDB ODBC driver (32-bit or 64-bit depending on your Access version):
   https://mariadb.com/downloads/connectors/odbc/
2. Install the driver.

### 1.3 Install Microsoft Access
Any version **2010 or later** will work.

### 1.4 Install Notepad++ (or any editor)
Used to create `.sql` files.
https://notepad-plus-plus.org/

---

## 2. Database Setup (MariaDB via Terminal)

### 2.1 Open MySQL Terminal
You can use either:

#### Option A — XAMPP Shell
- Click **Shell** in XAMPP Control Panel  
- Run:
  ```bash
  mysql -u root -p
  ```

#### Option B — Windows CMD or PowerShell
1. Navigate to:
   ```
   C:\xampp\mysql\bin
   ```
2. Run:
   ```bash
   mysql -u root -p
   ```

### 2.2 Execute SQL Scripts

All SQL files should be located in your project's `/sql/` folder.

Example structure:
```
/sql/
  01_create_database.sql
  02_create_tables.sql
  03_insert_data.sql
```

To execute them:

```sql
SOURCE C:/path/to/01_create_database.sql;
SOURCE C:/path/to/02_create_tables.sql;
SOURCE C:/path/to/03_insert_data.sql;
```

### 2.3 Confirm Database Creation
Run:
```sql
SHOW DATABASES;
USE your_database_name;
SHOW TABLES;
```

---

## 3. Configure ODBC for Microsoft Access

### 3.1 Open ODBC Data Source Administrator
- Press **Win + R**
- Type:
  ```
  odbcad32
  ```
- Choose the correct version:
  - **32-bit** for 32-bit Access
  - **64-bit** for 64-bit Access

### 3.2 Create a New DSN (Data Source Name)

1. Go to the **System DSN** tab.
2. Click **Add**.
3. Choose:
   - `MariaDB ODBC 3.1 Driver` (or version installed)
4. Fill in:
   - **Data Source Name:** AcademicDB
   - **Server:** localhost
   - **User:** root (or another user)
   - **Password:** (your MariaDB password)
   - **Database:** select your project’s DB

5. Click **Test** to verify connection.
6. Save.

---

## 4. Link MariaDB Tables into Microsoft Access

### 4.1 Open MS Access
Create a new blank database (`.accdb` file).

### 4.2 Import Linked Tables
1. Go to **External Data** tab.
2. Choose **ODBC Database**.
3. Select:
   - **Link to the data source by creating a linked table**
4. Choose your DSN (e.g., **AcademicDB**).
5. Select tables to link.

After linking, your MariaDB tables appear in Access with a 🔗 link icon.

---

## 5. Using Access with MariaDB

- You can now build **forms, queries, macros, and reports** using the linked tables.
- Changes in Access immediately affect the MariaDB backend.
- ODBC must remain active for real-time data sync.

### Notes
- Access handles front-end logic (UI, reports, queries).
- MariaDB holds all data storage and SQL integrity.
- VBA modules (optional) can automate tasks or enforce business rules.

---

## 6. Running and Updating the Database

### 6.1 Modify SQL Scripts
Edit the `.sql` files in `/sql/` using Notepad++.

### 6.2 Re-run SQL Changes
Execute again in terminal:

```sql
SOURCE updated_file.sql;
```

### 6.3 Backup Database
```sql
mysqldump -u root -p your_database > backup.sql
```

---

## 7. Optional Tools

### GUI Database Tools
- **phpMyAdmin** (Included with XAMPP)
- **DBeaver** (Recommended)
- **HeidiSQL**
- **MySQL Workbench**

### Developer Tools
- **Git** for version control
- **VS Code** for SQL and VBA

---

## 8. Summary

Following these steps, your system will be fully configured:

- MariaDB backend running in XAMPP  
- SQL scripts applied via terminal  
- MS Access frontend linked via ODBC  
- Complete CRUD operations through Access  
- SQL schema and data versioned in `/sql/`

Your environment is now ready for development and use.

