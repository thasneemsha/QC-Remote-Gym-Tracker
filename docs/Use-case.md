# Use-Case Documentation

## 1. Purpose
The purpose of this documentation is to define the interactions between users and the **QFit Gym Tracker Web Application**.  
It outlines the functional requirements of the system from the user perspective, describing **how students will log workouts, view exercise information, and track progress**.  
This documentation guides developers and testers in understanding user needs, expected behaviors, and system responses.

---

## 2. Actors (need more discussion on Admin) 

| Actor | Description |
|-------|-------------|
| **Student** | A Queens College student who registers and logs into the system, logs workouts, views exercise information, and tracks progress. Must have a valid QC email to register. |
| **System (Gym Tracker App)** | The software system that handles frontend requests, stores and retrieves data from the MySQL database, interacts with external APIs, and returns JSON data to the frontend. |

---

## 3. Use Case List

| Use Case ID | Use Case Name | Primary Actor | Description |
|------------|---------------|---------------|-------------|
| UC00 | Register | Student | Student creates a new account using QC email. System validates and stores account in MySQL. |
| UC01 | Login | Student | Student logs in using registered QC email. System validates credentials and grants access to dashboard. |
| UC02 | Log Workout | Student | Student records an exercise, including sets, reps, weight, and notes. Data is saved in MySQL database. |
| UC03 | View Workout History | Student | Student retrieves past workouts stored in the database. System returns data in JSON format and displays it in a table or chart. |
| UC04 | View Exercise Information | Student | Student queries exercises from an external free API. System fetches JSON data and displays exercise name, muscle group, equipment, and instructions. |
| UC05 | Update Profile | Student | Student updates personal information (optional), which is stored in the database. |
| UC06 | Logout | Student | Student ends session securely; system terminates access to dashboard and clears session data. |

---

## 4. Detailed Use Cases

### **UC00: Register**
- **Actor:** Student  
- **Preconditions:** None (new student).  
- **Trigger:** Student opens the "Register" page.  
- **Main Flow:**
  1. Student enters QC email, password, and optional personal information.  
  2. System validates email format (must end with `@qc.cuny.edu`).  
  3. System checks if the email already exists.  
     - If yes → displays error message.  
     - If no → stores student account in MySQL database.  
  4. System confirms successful registration.  
- **Postconditions:** Student account is created; ready to log in.

---

### **UC01: Login**
- **Actor:** Student  
- **Preconditions:** Student has a registered account.  
- **Trigger:** Student opens the login page and submits credentials.  
- **Main Flow:**
  1. Student enters email and password.  
  2. System validates credentials against MySQL database.  
  3. If valid, system redirects student to dashboard.  
- **Alternative Flows:**
  - Invalid credentials → System displays error message and prompts retry.  
- **Postconditions:** Student is authenticated and session is active.

---

### **UC02: Log Workout**
- **Actor:** Student  
- **Preconditions:** Student is logged in.  
- **Trigger:** Student opens "Log Workout" page.  
- **Main Flow:**
  1. Student selects exercise (from API or manual entry).  
  2. Student enters sets, reps, weight, and optional notes.  
  3. System stores data in MySQL database.  
  4. System returns confirmation message.  
- **Postconditions:** Workout entry is saved and available in history.

---

### **UC03: View Workout History**
- **Actor:** Student  
- **Preconditions:** Student is logged in and has at least one workout recorded.  
- **Trigger:** Student navigates to "History" page.  
- **Main Flow:**
  1. System queries MySQL database for student’s past workouts.  
  2. System returns data in **JSON format**.  
  3. Frontend displays data in table and/or chart.  
- **Alternative Flows:**
  - No workouts → System displays “No workout history found.”  
- **Postconditions:** Student can view all past workouts.

---

### **UC04: View Exercise Information**
- **Actor:** Student  
- **Preconditions:** Student is logged in.  
- **Trigger:** Student searches for exercises or browses exercise list.  
- **Main Flow:**
  1. System fetches exercise data from **free external API**.  
  2. API returns data in **JSON format**.  
  3. System parses JSON and displays exercise details (name, muscle group, equipment, GIF or instructions).  
- **Postconditions:** Student sees exercise information for reference.

---

### **UC05: Update Profile**
- **Actor:** Student  
- **Preconditions:** Student is logged in.  
- **Trigger:** Student opens "Profile" page.  
- **Main Flow:**
  1. Student updates personal information (optional).  
  2. System validates input and stores it in the database.  
  3. System confirms the update.  
- **Postconditions:** Student profile updated.

---

### **UC06: Logout**
- **Actor:** Student  
- **Preconditions:** Student is logged in.  
- **Trigger:** Student clicks "Logout".  
- **Main Flow:**
  1. System ends student session.  
  2. Redirects student to login page.  
- **Postconditions:** Student session terminated; secure logout completed.

---

## 5. Use Case Diagram (ASCII for GitHub)
Got it! Since you don’t have all students preloaded, we need to add a Registration use case, adjust Login accordingly, and update the documentation professionally. Here’s the fully edited, GitHub-ready version:



# 🏋️ QFit Gym Tracker - Use Case Documentation

## 1. Purpose
The purpose of this Use Case documentation is to define the interactions between users and the **QFit Gym Tracker Web Application**.  
It outlines the functional requirements of the system from the user perspective, describing **how students will register, log workouts, view exercise information, and track progress**.  
This documentation guides developers and testers in understanding user needs, expected behaviors, and system responses.

---

## 2. Actors

| Actor | Description |
|-------|-------------|
| **Student** | A Queens College student who registers and logs into the system, logs workouts, views exercise information, and tracks progress. Must have a valid QC email to register. |
| **System (Gym Tracker App)** | The software system that handles frontend requests, stores and retrieves data from the MySQL database, interacts with external APIs, and returns JSON data to the frontend. |

---

## 3. Use Case List

| Use Case ID | Use Case Name | Primary Actor | Description |
|------------|---------------|---------------|-------------|
| UC00 | Register | Student | Student creates a new account using QC email. System validates and stores account in MySQL. |
| UC01 | Login | Student | Student logs in using registered QC email. System validates credentials and grants access to dashboard. |
| UC02 | Log Workout | Student | Student records an exercise, including sets, reps, weight, and notes. Data is saved in MySQL database. |
| UC03 | View Workout History | Student | Student retrieves past workouts stored in the database. System returns data in JSON format and displays it in a table or chart. |
| UC04 | View Exercise Information | Student | Student queries exercises from an external free API. System fetches JSON data and displays exercise name, muscle group, equipment, and instructions. |
| UC05 | Update Profile | Student | Student updates personal information (optional), which is stored in the database. |
| UC06 | Logout | Student | Student ends session securely; system terminates access to dashboard and clears session data. |

---

## 4. Detailed Use Cases

### **UC00: Register**
- **Actor:** Student  
- **Preconditions:** None (new student).  
- **Trigger:** Student opens the "Register" page.  
- **Main Flow:**
  1. Student enters QC email, password, and optional personal information.  
  2. System validates email format (must end with `@qc.cuny.edu`).  
  3. System checks if the email already exists.  
     - If yes → displays error message.  
     - If no → stores student account in MySQL database.  
  4. System confirms successful registration.  
- **Postconditions:** Student account is created; ready to log in.

---

### **UC01: Login**
- **Actor:** Student  
- **Preconditions:** Student has a registered account.  
- **Trigger:** Student opens the login page and submits credentials.  
- **Main Flow:**
  1. Student enters email and password.  
  2. System validates credentials against MySQL database.  
  3. If valid, system redirects student to dashboard.  
- **Alternative Flows:**
  - Invalid credentials → System displays error message and prompts retry.  
- **Postconditions:** Student is authenticated and session is active.

---

### **UC02: Log Workout**
- **Actor:** Student  
- **Preconditions:** Student is logged in.  
- **Trigger:** Student opens "Log Workout" page.  
- **Main Flow:**
  1. Student selects exercise (from API or manual entry).  
  2. Student enters sets, reps, weight, and optional notes.  
  3. System stores data in MySQL database.  
  4. System returns confirmation message.  
- **Postconditions:** Workout entry is saved and available in history.

---

### **UC03: View Workout History**
- **Actor:** Student  
- **Preconditions:** Student is logged in and has at least one workout recorded.  
- **Trigger:** Student navigates to "History" page.  
- **Main Flow:**
  1. System queries MySQL database for student’s past workouts.  
  2. System returns data in **JSON format**.  
  3. Frontend displays data in table and/or chart.  
- **Alternative Flows:**
  - No workouts → System displays “No workout history found.”  
- **Postconditions:** Student can view all past workouts.

---

### **UC04: View Exercise Information**
- **Actor:** Student  
- **Preconditions:** Student is logged in.  
- **Trigger:** Student searches for exercises or browses exercise list.  
- **Main Flow:**
  1. System fetches exercise data from **free external API**.  
  2. API returns data in **JSON format**.  
  3. System parses JSON and displays exercise details (name, muscle group, equipment, GIF or instructions).  
- **Postconditions:** Student sees exercise information for reference.

---

### **UC05: Update Profile**
- **Actor:** Student  
- **Preconditions:** Student is logged in.  
- **Trigger:** Student opens "Profile" page.  
- **Main Flow:**
  1. Student updates personal information (optional).  
  2. System validates input and stores it in the database.  
  3. System confirms the update.  
- **Postconditions:** Student profile updated.

---

### **UC06: Logout**
- **Actor:** Student  
- **Preconditions:** Student is logged in.  
- **Trigger:** Student clicks "Logout".  
- **Main Flow:**
  1. System ends student session.  
  2. Redirects student to login page.  
- **Postconditions:** Student session terminated; secure logout completed.

---

## 5. Use Case Diagram 

Got it! ASCII diagrams in GitHub Markdown can break if spacing isn’t perfect. A more reliable way is to use a monospace code block with fixed-width alignment. I’ve redone your Use Case Diagram so it displays correctly in GitHub.



## 5. Use Case Diagram



            +-----------------+
            |     Student     |
            +--------+--------+
                     |
    +----------------+----------------+
    |                |                |
    Register            Login       Log Workout
                                         |
                                         |
                                 View Workout History
                                         |
                                         |
                                  View Exercises
                                         |
                                         |
                                       Logout




---
