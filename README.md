# Hospital_DataBase_Management_System

The SQL script defines the structure of a relational database for a healthcare management system. It includes tables to store information about physicians, departments, medical procedures, patients, nurses, appointments, medications, rooms, and blocks within a healthcare facility.

### Key Components:

1. Physician: Stores details of physicians including their employee ID, name, position, and social security number (SSN).
2. Department: Stores information about different departments within the healthcare facility, including the department ID, name, and head.
3. Medical Procedure: Contains details of medical procedures offered, such as procedure code, name, and cost.
4. Patient: Stores patient information including SSN, name, address, phone number, insurance ID, and primary care physician (PCP).
5. Nurse: Contains information about nurses including their employee ID, name, position, registration status, and SSN.
6. Appointment: Stores details of patient appointments including appointment ID, patient, preparing nurse, physician, start and end date/time, and examination room.
7. Medication: Contains information about medications including medication code, name, brand, and description.
9. Room: Stores details of rooms within the facility including room number, room type, block floor, block code, and availability status.
10. Block: Contains information about blocks within the facility including block floor and block code.

### Why Do We Need It?
A healthcare management system is essential for efficiently organizing and managing various aspects of healthcare delivery within a healthcare facility. It helps in:

1. Streamlining administrative tasks such as appointment scheduling, room assignments, and medication management.
2. Enhancing patient care by providing quick access to accurate patient information and personalized treatment plans.
3. Ensuring compliance with regulatory standards by maintaining accurate records and documentation.
4. Optimizing resource allocation and operational efficiency through automation and data-driven decision-making.

# ER Diagram of the tables which are used in this data

<div align="center"><img src="Hospital_db_final_ER_diagram.png" alt="Image"></div> 

# Summary   
In summary, the SQL script defines the database schema for a healthcare management system, facilitating efficient management of patient care and administrative processes within a healthcare facility.

