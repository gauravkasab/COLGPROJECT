CREATE TABLE STUDENT (
  srollno INTEGER PRIMARY KEY,
  sname TEXT NOT NULL,
  scourse TEXT NOT NULL,
  sclass TEXT NOT NULL,
  sbatch TEXT NOT NULL,
  sdob DATE NOT NULL,
  sphone NUMERIC UNIQUE NOT NULL,
  semail text UNIQUE NOT NULL,
  susername text UNIQUE NOT NUll,
  spassword text UNIQUE NOT NUll,
  saddress text 
);
INSERT into STUDENT values(1,'Ram Pawar','BCA','TYBCA','B5','2002-06-15',1234567890,'abc@123gmail.com','Ram2003','3002@maR','Pune');

CREATE TABLE TEACHER (
  tid INTEGER PRIMARY KEY,
  tname TEXT NOT NULL,
  tdob DATE NOT NULL,
  teachingexp INTEGER,
  subjectstaught TEXT NOT NULL,
  classestaught TEXT NOT NULL,
  batchestaught TEXT NOT NULL,
  pthone NUMERIC UNIQUE NOT NULL,
  temail text UNIQUE NOT NULL,
  tusername text UNIQUE NOT NUll,
  tpassword text UNIQUE NOT NUll,
  taddress text 
);
INSERT into TEACHER values(111,'Pawar N.P','1992-09-05',7,ARRAY['C','Java','PHP'],ARRAY['FYBCA','SYBCA','TYBCA'],ARRAY['B1','B2','B3'],
                           897616712921,'abc@1gmail.com','nppawar','cprg@1','Pune');
						   
CREATE TABLE LAB(
  labno varchar(10) PRIMARY KEY,
  labname text,
  lablocation text,
  pcs INTEGER
);
INSERT into LAB values('I','BCA Lab-1','1st floor',22);

CREATE TABLE COURSES(
	cid VARCHAR(10) primary key,
	cname varchar(10) 
);

CREATE TABLE BATCHES (
    bid VARCHAR(10) PRIMARY KEY,
    cid VARCHAR(10), 
    bname VARCHAR(10),
    bcapacity INT,
    FOREIGN KEY (cid) REFERENCES courses(cid)
);

CREATE TABLE PRACTICALSCHEDULES (
    schedule_id SERIAL PRIMARY KEY,
    srollno integer REFERENCES STUDENT(srollno),
    bid varchar REFERENCES BATCHES(bid),
    day_of_week VARCHAR(20) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    subject VARCHAR(100) NOT NULL
);

CREATE TABLE ASSIGNMENTS (
  ID SERIAL PRIMARY KEY,
  Assignment INTEGER,
  RollNo VARCHAR,
  Completed BOOLEAN
);