#createing database of hospital managment
create database hospital_management_system;
use hospital_management_system;

create table physician(
employeeid int primary key,
name varchar(20),
position varchar(20),
ssn int);

create table department(
departmentid int primary key, name varchar(20), head int
);

create table affiliated_with(
physicianid int , departmentid int, primary_affiliation varchar(5),
foreign key (physicianid) references physician(employeeid),
foreign key (departmentid) references department(departmentid)
);

create table medical_procedure(
code int primary key, name varchar(30),cost int
);

create table trained_in(
physicianid int,treatmentid int, certificationdate date,certificationexpires date,
foreign key(physicianid) references physician(employeeid),
foreign key(treatmentid) references medical_procedure(code)
);

create table patient(
ssn int primary key, name varchar(20), address varchar(50), phonenum varchar(13), insuranceid int unique,
pcpid int,
foreign key(pcpid) references physician(employeeid)
);

create table nurse(
employeeid int primary key, name varchar(20),position varchar(20),registered varchar(1), ssn int
);

create table appointments(
appointmentid int primary key, patientid int,prepnurseid int ,physicianid int,
start_dt_time datetime,end_dt_time datetime, examinationroom varchar(5),
foreign key(patientid) references patient(ssn),
foreign key(prepnurseid) references nurse(employeeid),
foreign key(physicianid) references physician(employeeid)
);

create table medication(
code int primary key, name varchar(20), brand varchar(20), description varchar(100)
);

create table prescribes(
physicianid int, patientid int, medicationid int, `date` datetime, appointmentid int,
dose int,
foreign key(physicianid)references physician(employeeid),
foreign key(patientid)references patient(ssn),
foreign key(medicationid) references medication(code),
foreign key(appointmentid) references appointments(appointmentid)
);

create table `block`(
blockfloorid int, blockcodeid int,
primary key (blockfloorid,blockcodeid)
);

create table room(
roomnumber int primary key,roomtype varchar(8),blockfloorid int,blockcodeid int, unavailable varchar(3),
foreign key(blockfloorid,blockcodeid) references `block`(blockfloorid,blockcodeid)
);

create table on_call(
nurseid int,blockfloorid int,blockcodeid int,oncallstart datetime,oncallend datetime,
foreign key (nurseid) references nurse(employeeid),
foreign key(blockfloorid,blockcodeid) references `block`(blockfloorid,blockcodeid)
);

create table stay(
stayid int primary key,patientid int,roomid int,start_time date,end_time date,
foreign key(patientid)references patient(ssn),
foreign key(roomid) references room(roomnumber)
);

create table undergoes(
patientid int, procedureid int,stayid int,`date` date, physicianid int,assistingnurseid int,
foreign key (patientid)references patient(ssn),
foreign key (procedureid)references medical_procedure(code),
foreign key (stayid) references stay(stayid),
foreign key(physicianid) references physician(employeeid),
foreign key(assistingnurseid) references nurse(employeeid)
);
