# **Project Report – SHLAV 3**

## **Cover Page**
**Submitted by:** Yoni Leventhal and chaim fox  

---

## **Table of Contents**
1. [Overview](#overview)
2. [Submitted Files](#submitted-files)
3. [Diagrams (ERD & DSD)](#diagrams-erd--dsd)
4. [Integration Decisions](#integration-decisions)
5. [SQL Files Description](#sql-files-description)
6. [Views and Queries](#views-and-queries)
7. [Backup File](#backup-file)
8. [Appendix: Screenshots](#appendix-screenshots)

---

## **Overview**
This phase finalizes the integration of the new department into the existing system and provides the completed diagrams, SQL scripts, views, and documentation.
Screenshots and explanations are included to clarify each step of the process.

---

## **Submitted Files**

1. ✅ DSD of the new department (`New_Department_DSD.png`)
2. ✅ ERD of the new department (`New_Department_ERD.png`)
3. ✅ Shared ERD including all departments (`Shared_ERD.png`)
4. ✅ Integrated DSD after merging all components (`Integrated_DSD.png`)
5. ✅ SQL file with CREATE and ALTER commands (`Integrate.sql`)
6. ✅ SQL file with all VIEWS and sample queries (`Views.sql`)
7. ✅ Backup file (`backup3.backup`)
8. ✅ Final project report - Phase C (`Project_Report_PhaseC.pdf`)

---

## **Diagrams (ERD & DSD)**

### **New Department ERD**
![new erd](https://github.com/user-attachments/assets/4b89daa5-13cc-43af-85e3-f44d3de6549a)


### **New Department DSD**
![Screenshot new dsd](https://github.com/user-attachments/assets/0232e4e8-1612-4ee2-becf-c075b7b640df)


### **Shared ERD**
!![shared erd](https://github.com/user-attachments/assets/ee628aa2-809c-47cb-b0cc-54ec4cab50c5)


### **Integrated DSD**
![shared dsd](https://github.com/user-attachments/assets/16893a9a-158b-4fa0-8b19-45d9c7cadf81)


---

## **Integration Decisions**

- All entity names were reviewed to avoid duplication.
- Key constraints were unified across departments.
- Common entities such as Employees and Rooms were merged with consistent attribute naming.
- Data types and foreign keys were aligned.
- Adjustments were made to ensure normalization up to 3NF.
- The integrated DSD reflects the logical structure of the complete system.

---

## **SQL Files Description**

### **Integrate.sql**
- Contains all CREATE TABLE and ALTER TABLE commands used during integration.
- Includes primary and foreign key declarations.
- Uses consistent naming conventions across tables.

### **Views.sql**
- Contains CREATE VIEW statements for key system views.
- Includes SELECT * queries to show results (first 10 rows).
- Useful for business insights and data summaries.

---

## **Views and Queries**

Each view is documented with:

1. 📌 View Name
2. 📝 Description of Purpose
3. 🔍 Example Query (SELECT *)
4. 📊 Example Output (First 10 rows)

Example:

### View: ResidentWithCaregivers

- **Purpose:** To display each resident and their primary caregiver.
- **SQL Code:**
```sql
CREATE VIEW View_ResidentsWithCaregivers AS
SELECT 
  r.ResidentID,
  r.FirstName AS ResidentFirstName,
  r.LastName AS ResidentLastName,
  r.Gender,
  r.MedicalStatus,
  c.CaregiverID,
  c.FirstName AS CaregiverFirstName,
  c.LastName AS CaregiverLastName,
  c.Specialization
FROM Resident r
JOIN MedicalTreatment mt ON r.ResidentID = mt.ResidentID
JOIN Caregiver c ON mt.CaregiverID = c.CaregiverID;

## 🔄 Backup File

- **File:** `backup3.backup`  
- **Description:** Includes the full integrated schema and all existing data.  
- **Creation Method:** Generated using pgAdmin’s backup tool with both structure and data options selected.

---

## 📎 Appendix: Screenshots

All relevant screenshots are included in the attached final report (`Project_Report_PhaseC.pdf`), including:

- 📐 ERD and DSD diagrams  
- 🔍 View outputs (first 10 rows)  
- 🧪 SELECT query results  
- 💾 pgAdmin backup and restore confirmation windows
