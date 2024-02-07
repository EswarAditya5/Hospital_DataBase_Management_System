-- inserting the data

-- physicians data
INSERT INTO Physician(employeeid,name,position,ssn) 
VALUES (1,'John Dorian','Staff Internist',111111111),
(2,'Elliot Reid','Attending Physician',222222222),
(3,'Christopher Turk','Surgical Attending Physician',333333333),
(4,'Percival Cox','Senior Attending Physician',444444444),
(5,'Bob Kelso','Head Chief of Medicine',555555555),
(6,'Todd Quinlan','Surgical Attending Physician',666666666),
(7,'John Wen','Surgical Attending Physician',777777777),
(8,'Keith Dudemeister','MD Resident',888888888),
(9,'Molly Clock','Attending Psychiatrist',999999999);

-- department data
insert into department 
values (1,'General Medicine', 4),
(2,'Surgery',7),
(3,'Psychiatry',9);

-- affiliation data
INSERT INTO affiliated_with(physicianid,departmentid,primary_affiliation) 
VALUES (1,1,'t'),
(2,1,'t'),
(3,1,'f'),
(3,2,'t'),
(4,1,'t'),
(5,1,'t'),
(6,2,'t'),
(7,1,'f'),
(7,2,'t'),
(8,1,'t'),
(9,3,'t');

-- medical procedure
INSERT INTO medical_procedure(code,name,cost) VALUES (1,'Reverse Rhinopodoplasty',1500),
 (2,'Obtuse Pyloric Recombobulation',3750),
 (3,'Folded Demiophtalmectomy',4500),
 (4,'Complete Walletectomy',10000),
 (5,'Obfuscated Dermogastrotomy',4899),
 (6,'Reversible Pancreomyoplasty',5600),
 (7,'Follicular Demiectomy',25);

-- trained_in
INSERT INTO trained_in(physicianid,treatmentid,certificationdate,certificationexpires)
 VALUES (3,1,'1/1/2008','31/12/2008'),
 (3,2,'1/1/2008','31/12/2008'),
 (3,5,'1/1/2008','31/12/2008'),
 (3,6,'1/1/2008','31/12/2008'),
 (3,7,'1/1/2008','31/12/2008'),
 (6,2,'1/1/2008','31/12/2008'),
 (6,5,'1/1/2007','31/12/2007'),
 (6,6,'1/1/2008','31/12/2008'),
 (7,1,'1/1/2008','31/12/2008'),
 (7,2,'1/1/2008','31/12/2008'),
 (7,3,'1/1/2008','31/12/2008'),
 (7,4,'1/1/2008','31/12/2008'),
 (7,5,'1/1/2008','31/12/2008'),
 (7,6,'1/1/2008','31/12/2008'),
 (7,7,'1/1/2008','31/12/2008');

-- patient data
INSERT INTO Patient(ssn,name,address,phonenum,insuranceid,pcpid)
 VALUES (100000001,'John Smith','42 Foobar Lane','555-0256',68476213,1),
(100000002,'Grace Ritchie','37 Snafu Drive','555-0512',36546321,2),
(100000003,'Random J. Patient','101 Omgbbq Street','555-1204',65465421,2),
(100000004,'Dennis Doe','1100 Foobaz Avenue','555-2048',68421879,3);

-- nurse data
INSERT INTO Nurse(employeeid,name,position,registered,ssn) 
VALUES 
(101,'Carla Espinosa','Head Nurse','t',111111110),
(102,'Laverne Roberts','Nurse','t',222222220),
(103,'Paul Flowers','Nurse','f',333333330);

-- appointments data
INSERT INTO appointments(appointmentid,patientid,prepnurseid,Physicianid,start_dt_time,end_dt_time,examinationroom) VALUES (13216584,100000001,101,1,'24/4/2008','24/4/2008','A'),
  (26548913,100000002,101,2,'24/4/2008','24/4/2008','B'),
  (36549879,100000001,102,1,'25/4/2008','25/4/2008','A'),
  (46846589,100000004,103,4,'25/4/2008','25/4/2008','B'),
  (59871321,100000004,NULL,4,'26/4/2008','26/4/2008','C'),
  (69879231,100000003,103,2,'26/4/2008','26/4/2008','C'),
  (76983231,100000001,NULL,3,'26/4/2008','26/4/2008','C'),
  (86213939,100000004,102,9,'27/4/2008','21/4/2008','A'),
  (93216548,100000002,101,2,'27/4/2008','27/4/2008','B');

-- medication data
INSERT INTO MEDICATION(code,name,brand,description) 
VALUES (1,'Procrastin-X',NULL,'N/A'),
 (2,'Thesisin','Foo Labs','N/A'),
 (3,'Awakin','Bar Laboratories','N/A'),
 (4,'Crescavitin','Baz Industries','N/A'),
 (5,'Melioraurin','Snafu Pharmaceuticals','N/A');

-- prescibes data
INSERT INTO prescribes(physicianid,patientid,medicationid,date,appointmentid,dose) 
VALUES (1,100000001,1,'24/4/2008',13216584,5),
 (9,100000004,2,'27/4/2008',86213939,10),
 (9,100000004,2,'30/4/2008',NULL,5);

-- block data
insert into block values(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1),
(3,2),
(3,3),
(4,1),
(4,2),
(4,3);

-- room data
INSERT INTO room(roomnumber,roomtype,blockfloorid,blockcodeid,unavailable) 
VALUES (101,'Single',1,1,'f'),
 (102,'Single',1,1,'f'),
 (103,'Single',1,1,'f'),
 (111,'Single',1,2,'f'),
 (112,'Single',1,2,'t'),
 (113,'Single',1,2,'f'),
 (121,'Single',1,3,'f'),
 (122,'Single',1,3,'f'),
 (123,'Single',1,3,'f'),
 (201,'Single',2,1,'t'),
 (202,'Single',2,1,'f'),
 (203,'Single',2,1,'f'),
 (211,'Single',2,2,'f'),
 (212,'Single',2,2,'f'),
 (213,'Single',2,2,'t'),
 (221,'Single',2,3,'f'),
 (222,'Single',2,3,'f'),
 (223,'Single',2,3,'f'),
 (301,'Single',3,1,'f'),
 (302,'Single',3,1,'t'),
 (303,'Single',3,1,'f'),
 (311,'Single',3,2,'f'),
 (312,'Single',3,2,'f'),
 (313,'Single',3,2,'f'),
 (321,'Single',3,3,'t'),
 (322,'Single',3,3,'f'),
 (323,'Single',3,3,'f'),
 (401,'Single',4,1,'f'),
 (402,'Single',4,1,'t'),
 (403,'Single',4,1,'f'),
 (411,'Single',4,2,'f'),
 (412,'Single',4,2,'f'),
 (413,'Single',4,2,'f'),
 (421,'Single',4,3,'t'),
 (422,'Single',4,3,'f'),
 (423,'Single',4,3,'f');
 
 -- oncall data
INSERT INTO on_call(nurseid,blockfloorid,blockcodeid,oncallstart,ONCALLEND) 
VALUES (101,1,1,'4/11/2008','4/11/2008'),
 (101,1,2,'4/11/2008','4/11/2008'),
 (102,1,3,'4/11/2008','4/11/2008'),
 (103,1,1,'4/11/2008','4/11/2008'),
 (103,1,2,'4/11/2008','4/11/2008'),
 (103,1,3,'4/11/2008','4/11/2008');
 
 -- stay data
INSERT INTO STAY(stayid,patientid,roomid,start_time,end_time) 
VALUES (3215,100000001,111,'1/5/2008','4/5/2008'),
(3216,100000003,123,'3/5/2008','14/5/2008'),
(3217,100000004,112,'2/5/2008','3/5/2008');

-- undergoes data
INSERT INTO Undergoes(patientid,procedureid,stayid,`date`,physicianid,assistingnurseid) 
VALUES (100000001,6,3215,'2/5/2008',3,101),
(100000001,2,3215,'3/5/2008',7,101),
(100000004,1,3217,'7/5/2008',3,102),
(100000004,5,3217,'9/5/2008',6,NULL),
(100000001,7,3217,'10/5/2008',7,101),
(100000004,4,3217,'13/5/2008',3,103);
