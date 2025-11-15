<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/512px-YouTube_full-color_icon_%282017%29.svg.png" alt="" align="middle" width="225" height="150"><h1 align="center">AcademicDB</h1>
<p align="center"><a href="#project-description">Project Description</a> - <a href="#key-features">Key Features</a> - <a href="#technology-stack">Tech Stack</a></p>

<img src="https://repolaunch.vercel.app/assets/img/yt.webp" alt="" align="middle" width="auto" height="auto">

## Project Description

**AcademicDB** is a structured academic information system designed to manage student, course, faculty, and institutional data using a hybrid architecture that combines the usability of **Microsoft Access** with the power and scalability of **MariaDB** (running through XAMPP).

The system uses **Access forms, queries, and reports** as the primary front-end interface while leveraging a **MariaDB/MySQL relational database** as the backend storage engine. This architecture provides the convenience of a desktop UI with the robustness of a full SQL server.

All database schema, tables, relationships, and stored procedures are authored and maintained using **hand-written MySQL scripts**, executed via the terminal using the `SOURCE` command. This ensures full control, transparency, and portability of the database logic.

AcademicDB is designed for educational institutions, researchers, and administrative offices that require a **local, secure, customizable academic data system** without relying on cloud infrastructure or proprietary SIS platforms.

---

## Key Components

### **1. Microsoft Access Frontend (Forms + Queries + Reports)**
Access serves as the primary user interface layer and includes:
- Input forms for student, faculty, course, and enrollment data  
- Navigation menus and switchboards  
- Query-based views for searching and filtering records  
- Automated reports for exporting academic summaries  
- VBA modules (optional) for enhanced logic or UI automation  

### **2. MariaDB Backend (via XAMPP)**
The backend is powered by **MariaDB**, offering:
- Full ACID-compliant relational storage  
- Support for constraints, foreign keys, cascading rules  
- High performance for indexing, large datasets, and relational joins  
- Compatibility with MySQL syntax, tools, and utilities  

The Access frontend connects to MariaDB using ODBC, providing real-time data access while maintaining a smooth desktop-driven workflow.

### **3. SQL Schema & Script Set**
All database structures are written manually in `.sql` files using **Notepad++** for clean version-controlled editing.  
Scripts include:
- Table creation statements  
- Constraints and foreign keys  
- Views and indexes  
- Seed data  
- Stored procedures and triggers (if used)

Scripts are executed using:
## Key Components

UserForm

```javascript
const UserForm = () => {
  const [name, setName] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    alert(`Hello, ${name}`);
  };

  return (
    <form onSubmit={handleSubmit}>
      <input
        type="text"
        value={name}
        onChange={(e) => setName(e.target.value)}
        placeholder="Enter your name"
      />
      <button type="submit">Submit</button>
    </form>
  );
};

export default UserForm;

```

  
ToggleMessage

```javascript
const ToggleMessage = () => {
  const [isVisible, setIsVisible] = useState(false);

  return (
    
<div>
      <button onClick={() => setIsVisible(!isVisible)}>
        {isVisible ? 'Hide' : 'Show'} Message
      </button>
      {isVisible && 
<p>This is a toggled message!</p>
}
    </div>

  );
};

export default ToggleMessage;

```

## Key Features

This project replicates the core functionalities of YouTube, including:

*   **Video Streaming**: Users can upload and stream high-definition videos.
*   **User Authentication**: Secure sign-up/login using OAuth2.0.
*   **Video Recommendations**: A recommendation system that suggests relevant content based on user preferences.
*   **Cloud Integration**: Uploaded videos are stored in the cloud, with seamless playback across devices.

This project showcases a comprehensive technology stack involving full-stack web development and cloud services.

## Tech Stack

**Frontend**: React, Tailwind CSS, Redux  
**Backend**: Node.js, Express, MongoDB  
**Cloud & DevOps**: AWS (S3, CloudFront), Docker  
**Other**: OAuth2.0, WebSockets
