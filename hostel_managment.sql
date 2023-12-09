create database Hostel_Management;
use Hostel_Management;
create table Boys_Hostel(
hostel_id int (10) not null,
no_of_rooms int (25) not null,
no_of_student int (22) not null,
annual_expences int (25) not null,
location varchar (10) not null,
primary key (hostel_id)
);
select * from Boys_Hostel;

create table room(
room_id int (10) not null,
capacity int (10) not null,
hostel_id int (10) not null,
name_of_student varchar (40) not null,
room_status varchar(10) not null,
primary key (room_id),
foreign key (hostel_id) references boys_hostel (hostel_id)
);
select*from room;

create table student(
student_id int (10) not null,
student_name varchar (40) not null,
student_father_name varchar (40),
department varchar (30) not null,
address varchar (40) not null,
cell_no varchar (20) not null,
student_age int (5) not null,
student_DOB varchar (15) not null,
hostel_id int (10) not null,
room_id int (10) not null,
primary key (student_id),
foreign key (hostel_id) references boys_hostel (hostel_id),
foreign key (room_id) references room (room_id)
);
select * from student;

create table mess(
mess_incharge_Id varchar (20) not null,
monthly_avg_expence varchar (30) not null,
mess_bf_timing varchar (45) not null,
mess_dinner_timing varchar (45) not null,
sunday_bf_timing varchar (45) not null,
primary key ( mess_incharge_Id)
);
select*from mess;

create table staff(
emp_name varchar (40) not null,
emp_id int (20) not null,
emp_address varchar (50) not null,
emp_salary int (20) not null,
emp_cellno varchar (20) not null,
hostel_id int (10) not null,
emp_designation varchar (40) not null,
mess_incharge_Id varchar (20),
primary key (emp_id),
foreign key (hostel_id) references boys_hostel (hostel_id),
foreign key (mess_incharge_id) references mess (mess_incharge_id)
);
 CREATE table visitor(
visitor_id int (34) not null,
student_id int (10) not null,
visitor_name varchar (40) not null,
visitor_time_in varchar (40) not null,
visitor_time_out varchar (40) not null,
student_name varchar (40) not null,
date_entring varchar (24) not null,
primary key (visitor_id),
foreign key (student_id) references student (student_id)
);
create table Fee
(fee_month_year varchar (40) not null,
fee_status varchar (40) not null,
student_id int (10) not null,
student_name varchar (40) not null,
primary key (fee_month_year,student_id),
foreign key (student_id) references student (student_id)
);
