# **Project Report - Phase A**

## **Cover Page**
**Submitted by:** Yoni Leventhal and Chaim David Fox  
**System Name:** Nursing Home, Residents  

---

## **Table of Contents**
1. [Introduction](#introduction)
2. [Diagrams (ERD & DSD)](#diagrams-erd--dsd)
3. [Design Decisions](#design-decisions)
4. [Data Entry Methods](#data-entry-methods)
5. [Data Backup and Restoration](#data-backup-and-restoration)

---

## **Introduction**
**System Description:**  
The `resident` class stores all information about the residents, including their apartment details, caregivers and treatments, visitors, and personal information such as age. Additionally, we store information about all caregivers, including their employment start date, as well as details about the types of treatments available.

---

## **Diagrams (ERD & DSD)**
### **ERD Diagram**  
"C:\Users\Yonil\Downloads\WhatsApp Image 2025-03-31 at 10.49.44 (1).jpeg"

### **DSD Diagram**  
"C:\Users\Yonil\Downloads\WhatsApp Image 2025-03-31 at 10.50.10 (1).jpeg"

---

## **Design Decisions**  
(Details of the design decisions made during planning, including justifications for each decision.)
  Database Design with at least 6 Entities:
  In our system, we designed a database schema consisting of six main entities:
    Caregiver
    Department
    Room
    Resident
    MedicalTreatment
    FamilyVisit
    
    Each entity includes at least three attributes,
    and we made sure to use two DATE attributes in the Caregiver and Resident tables,
    which are essential for tracking key dates such as hire and admission dates.

  ERD Design:
    The database design was modeled using the ERD (Entity Relationship Diagram) in the ERDPlus tool.
    We have ensured that all the entities and their relationships were carefully defined and illustrated.
    The final ERD was saved and stored in the required file format.
    The ERD diagram includes attributes for each entity, and relationships between entities are represented using foreign keys.

  Schema Verification and DSD Design:
    After the ERD was finalized, we validated the schema to ensure it does not contain any errors or unnecessary links.
    This step is crucial for ensuring that the database schema aligns with the system's needs.
    We also created a DSD (Data Structure Diagram) based on the ERD and saved it in the appropriate file format.

  Normalization:
  The schema was normalized to at least the third normal form (3NF).
  We ensured that data redundancy was minimized, and that all non-key attributes were fully functionally dependent on the primary key of each table.
  This ensures that the database is efficient, reliable, and consistent.
  
---

## **Data Entry Methods**  
Three selected methods for data entry with screenshots:

1. **First Method:**  
   ![Screenshot (227)](https://github.com/user-attachments/assets/9c78fc5d-4b53-4b07-a31a-b1d91603a82d)

2. **Second Method:**  
   ![Screenshot (228)](https://github.com/user-attachments/assets/45912d47-ef28-4305-81df-74e79f209955)

3. **Third Method:**  
   ![Screenshot (229)](https://github.com/user-attachments/assets/1473ed08-ce43-4c29-b2f9-a11c6b3c2e9b)

---

## **Data Backup and Restoration**  
Screenshots demonstrating data backup and restoration processes:

- **Data Backup:**  
  ![image](https://github.com/user-attachments/assets/1c6207bd-a1f9-4326-af46-3c519e797b84)

- **Data Restoration:**  
  ![image](https://github.com/user-attachments/assets/2ecac5c6-c019-4013-9780-dccdaddb3c18)

---

**End of Report**
