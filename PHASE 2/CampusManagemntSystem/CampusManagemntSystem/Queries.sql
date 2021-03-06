select * from campus

select * from canteen

select * from library

select * from Department

select * from transport

select * from CLUB

select * from teacher

select * from course

select * from hostel

select * from std

select * from registration

select * from participates

select * from Std_Acc

select * from enrollment

select * from student

select Teach_id,first_name,last_name
from teacher
where Teach_Dept='CS'

select std_id,first_name,last_name
from std
where Bus_no = (select Bus_Num
				from Transport
				where Driver='Naveed')

select participates_id,position
from PARTICIPATES AS P
where P.club_id=(select club_id
				from CLUB
				where club_type='Welfare')

select d_Number,d_Name
from department AS D,Campus AS C
where D.campus_code=C.uni_code

SELECT Teach_id,first_name,last_name
FROM teacher AS T
INNER JOIN Department AS D
ON T.d_Number = D.d_Number

SELECT d_Number,d_Name
FROM Department AS D
LEFT JOIN Campus AS C
ON D.campus_code=C.uni_code

SELECT std_id,first_name,last_name
FROM std AS S
LEFT JOIN Transport AS T
ON S.Bus_No = T.Bus_Num

SELECT std_id,first_name,last_name
FROM std AS S
RIGHT JOIN Transport AS T
ON S.Bus_No = T.Bus_Num

SELECT std_id,first_name,last_name
FROM std AS S
INNER JOIN Transport AS T
ON S.Bus_No = T.Bus_Num

SELECT Cor_Name,Cor_id,Credit_hr
FROM course AS C
INNER JOIN teacher AS T
ON C.Cor_tech = T.first_name+' '+T.last_name

select first_name+' '+last_name
from teacher

select Cor_tech
from course

select distinct first_name+' '+last_name
from std AS S
INNER JOIN enrollment AS E
ON S.std_id = E.std_id

select distinct first_name+' '+last_name
from std AS S
where std_id IN (select std_id
				from enrollment
				where Cor_id = '101')

select * from teach