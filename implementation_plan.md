# Plan: Run Travel Management System

The goal is to get the Travel Management System running. Currently, the project is missing dependencies (JAR files) and relies on a hardcoded absolute path database configuration. Specifically, `rs2xml.jar` and `mysql-connector-java` are missing, and no SQL schema file was provided.

## User Review Required

> [!IMPORTANT]
> **MySQL Required**: You must have MySQL installed and running. I will attempt to connect to localhost:3306 with user `root` and password `root` (as hardcoded in the app). If your password differs, we will need to update `src/travel/management/system/Conn.java`.

> [!WARNING]
> **Assignments**: I will create a `lib` directory and attempt to download `mysql-connector-java` and `rs2xml.jar`. If I cannot automatically download them (due to network restrictions), I will ask you to provide them.

## Proposed Changes

### Configuration
#### [MODIFY] [build.xml](file:///c:/Users/TANOT/Downloads/Travel-and-Toursim-Management-System-master/Travel-and-Toursim-Management-System-master/Travel%20Management%20System/build.xml)
- Update build classpath to include the local `lib` directory instead of hardcoded paths.

### Database
#### [NEW] [schema.sql](file:///C:/Users/TANOT/.gemini/antigravity/brain/7a1fa360-be73-457e-affe-58b90d19c76c/schema.sql)
- I have reconstructed the database schema from the Java source code.
- I will run this script to create the `tms` database and necessary tables.

### Dependencies
#### [NEW] `lib/` directory
- I will create this directory to store JARs.
- I will attempt to download:
    - `mysql-connector-java-5.1.49.jar`
    - `rs2xml.jar`

## Verification Plan

### Automated Tests
- None available in the project.

### Manual Verification
1.  **Database Setup**: Run `mysql` command to source `schema.sql`. Verify tables exist.
2.  **Compilation**: Run `ant compile` or use strict javac commands to ensure all classes compile.
3.  **Execution**: Run the `Login` class.
    - Check if the Login window appears.
    - Test "Signup" to create a user.
    - Test "Login" with the created user.

### Git Setup
#### [NEW] [Version Control]
- Initialize Git repository: `git init`
- Add remote: `git remote add origin https://github.com/Tanot2006/guvi-project.git`
- Commit all changes: `git add .` && `git commit -m "Initial commit"`
- Push to GitHub: `git push -u origin master` (Requires user credentials or existing auth)
