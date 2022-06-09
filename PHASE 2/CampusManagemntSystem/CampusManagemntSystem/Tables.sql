create table Campus (
uni_code varchar(10),
uni_name varchar(40),
City varchar(40),
Country varchar(40),
descript varchar(200),
Website varchar(200),
primary key(uni_code)
);

create table teacher(
	Teach_id int,
	first_name varchar(50),
	last_name varchar(50),
	phone_number bigint,
	[state] varchar(30),
	city varchar(30),
	zip int,
	date_of_birth date,
	email_id varchar(50),
	Teach_Dept varchar(50),
	CNIC decimal(13,0),
	Addres varchar(50),
	primary key(teach_id)
);

create table Department(
	d_Number varchar(10),
	d_Name varchar(20),
	HOD varchar(20),
	teach_id varchar(10),
	std_id varchar(10),
	primary key (d_Number)
);

create table std(
	std_id varchar(10),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	SSN INT,
	[state] VARCHAR(50),
	city VARCHAR(50),
	zip VARCHAR(50),
	mobile_number BIGINT,
	date_of_birth DATE,
	GPA DECIMAL(3,2),
	Dnumber varchar(10) NOT NULL,
	PRIMARY KEY (std_id),
	foreign key(Dnumber) references Department(d_Number)
);

create table registration (
	registration_id varchar(11),
	dept_id varchar(10),
	college_id VARCHAR(10),
	student_id varchar(10),
	admission_status varchar(20),
	year_of_application varchar(10),
	degree_type varchar(20),
	PRIMARY KEY (registration_id),
	FOREIGN KEY (college_id) REFERENCES Campus(uni_code),
	FOREIGN KEY (student_id) REFERENCES Std(std_id),
	Foreign Key (dept_id) REFERENCES DEPARTMENT(d_Number)
);

create table course(
	Cor_Name varchar(50),
	Cor_id int,
	Credit_hr int,
	Cor_tech varchar(50),
	startDate date,
	endDate date,
	primary key(Cor_id)
);

create table hostel(
	Hos_Name varchar(50),
	Total_room int,
	Hos_Locat varchar(50),
	Hos_warden varchar(20),
	Hos_type varchar(50),
	primary key(Hos_Name)
);

create table library (
	lib_branch int primary key not null,
	lib_location varchar(50),
	book_collection varchar(50)
);

create table Canteen (
	cant_branch int primary key not null,
	cant_location varchar(50),
	avail_Food varchar(50),
	food_price int
);

create table enrollment (
	std_id varchar(10),
	Cor_id int,
	foreign key (std_id) references std(std_id),
	foreign key (Cor_id) references course(Cor_id),
	primary key (std_id,Cor_id)
);

create table Std_Acc (
	Email varchar(50),
	pass varchar(15),
	Security_quest varchar(50),
	Security_ans varchar(50),
	Std_id int
	primary key (Email)
);

CREATE TABLE CLUB (
	club_id varchar(10),
	club_type varchar(100)
	primary key (club_id)
);

CREATE TABLE PARTICIPATES (
	participates_id varchar(10),
	club_id varchar(10),
	position varchar(25),
	join_date date,
	left_date date,
	primary key (participates_id),
	FOREIGN KEY (club_id) REFERENCES CLUB(club_id)
);

create table Transport(
	Bus_Num varchar(10),
	Driver_Num int,
	route_ varchar(40),
	Driver varchar(20),
	primary key (Bus_Num),
);

alter table std
add Bus_no varchar(10),
	club_id varchar(10),
	foreign key (club_id) references CLUB (club_id),
	foreign key (Bus_no) references Transport (Bus_Num);

alter table std
add Hos_Name varchar(50),
	foreign key (Hos_Name) references hostel (Hos_Name); 

alter table teacher
add Bus_no varchar(10),
	campus_code varchar(10),
	d_Number varchar(10),
foreign key (d_Number) references Department (d_Number),
foreign key (campus_code) references Campus (uni_code),
foreign key (Bus_no) references Transport (Bus_Num);

alter table Department
add campus_code varchar(10),
foreign key (campus_code) references Campus (uni_code);

alter table Department
drop column teach_id,std_id;

alter table Transport
drop column Driver_Num;

alter table Transport
add Driver_Num varchar(11);

alter table course
add teacher_id int,
foreign key (teacher_id) references teacher (Teach_id);

alter table library
add librarian varchar(20),
	campus_code varchar(10),
	foreign key (campus_code) references Campus (uni_code);

alter table Canteen
add campus_code varchar(10),
	foreign key (campus_code) references Campus (uni_code);

alter table Std_Acc
drop column Std_id;

alter table Std_Acc
add std_id varchar(10),
foreign key (std_id) references std (std_id);

create view student
AS
Select std_id,first_name,last_name
from std AS s
where s.Dnumber='A12e'

create view teach
AS
select first_name,last_name
from teacher as T 
where T.d_Number='A12e'


create view student_Travel
AS
select std_id,first_name,last_name,Bus_no
from std as s,Transport as t
where s.Bus_no=t.Bus_Num

select * from student_Travel

create view teacher_Travels
AS
select Teach_id,first_name,last_name,Bus_no
from teacher as te,Transport as t
where te.Bus_no=t.Bus_Num

select * from teacher_Travels