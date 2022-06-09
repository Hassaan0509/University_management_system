insert into Campus values
(01214,'University of Engineering and Technology','Lahore','Pakistan','','www.uetlhr.com'),
(01522,'University of Engineering and Technology','Kala Shah Kaku','Pakistan','','www.uetksk.com'),
(03546,'University of Engineering and Technology','Gujranwala','Pakistan','','www.uetgjr.com'),
(01095,'University of Engineering and Technology','Azad Kashmir','Pakistan','','www.uetKashmir.com');

insert into Canteen values
(210,'A-Block','Biryani',100,01214),
(211,'B-Block','Burger',80,01522),
(212,'C-Block','Qorma',120,03546),
(213,'D-Block','Daal',40,01095),
(214,'E-Block','Shawarma',70,01522),
(215,'F-Block','Pizza',200,01214),
(216,'G-Block','Fruit Salad',50,01095),
(217,'H-Block','Fries',50,01522),
(218,'I-Block','Tea',30,01214),
(219,'J-Block','Coffee',90,01095);

insert into library values
(110,'A-Block','Mathematics','Ali',01214),
(111,'B-Block','Biology','Ali',01522),
(112,'C-Block','Chemistry','Ali',03546),
(113,'D-Block','Islamiyat','Ali',01095),
(114,'E-Block','Pak Study','Ali',01522),
(115,'F-Block','Physics','Ali',01214),
(116,'G-Block','English','Ali',01095),
(117,'H-Block','Urdu','Ali',01214),
(118,'I-Block','Socialogy','Ali',01095),
(119,'J-Block','Economics','Ali',01522);

insert into Department values
('A12e','CS','Mushtaq',01214),
('D15c','CE','Allah dita',01214),
('N11r','SE','Rizwan',01214),
('F62g','EE','Usman',01214),
('H19v','ME','Qasim',01522),
('Q11y','CE','Sunil',01522),
('B12e','Civil Engineering','Javed',03546),
('U82t','BBA','Shoiab',03546),
('C12c','BBIT','Danish',01095),
('X12z','Arts','Farukh',01095);

UPDATE Department 
SET 
    d_Name = 'Maths'
WHERE
    d_Number = 'D15c';

insert into Transport values
('7086','To Qanachi','Naveed','03256835163'),
('1034','To Johar Town','Ijaz','03216273793'),
('0543','To Babu sabu','Rocky','03248639529'),
('2267','To Gujranwala','Yasir','03466458592'),
('1734','To Ghazi Road','Faraz','03313245674'),
('6547','To Mall road','Ali','03334768654'),
('1234','To DHA','Hussain','03164679896'),
('9099','To Main campus','Varun','03045478978'),
('7034','To Bahria Town','Masood','03123577895'),
('4056','To Canal','Ansar','03035687846');



insert into CLUB values
('174E','Welfare'),
('952A','Enjoyment'),
('225H','Informative'),
('509N','Learning');

insert into teacher values
('1411','Fawad','Rana',03163457373,'Punjab','Lahore','70785','1983/07/22','Frana123@gmail.com','CS',3520258744575,'Johar Town','7086',01214,'A12e'),
('1932','Muhammad','Ali',03218734578,'Punjab','Gujranwala','53164','1991/02/03','Ali86@gmail.com','EE',3587645878353,'Cantt','1034',01214,'F62g'),
('1852','Ali','Sarwar',03245457675,'Punjab','Sahiwal','562674','1978/05/09','MrAl913@gmail.com','CS',3520156867898,'Al-Rehamn Town','4056',01214,'A12e'),
('1543','Hassan','Ali',03123657843,'Punjab','Sargodha','13343','1997/12/21','Hassan23@gmail.com','ME',3520356678586,'Iqbal society','1034',01214,'H19v'),
('2173','Muhammad','Hassan',03017645754,'Punjab','Lahore','85774','1978/06/11','qwert23@gmail.com','CE',3520156678575,'Walton','7086',01214,'Q11y'),
('2245','Ali','Raza',03467654565,'Punjab','Lahore','65565','1987/05/05','Raza636@gmail.com','Arts',3520245547576,'DHA phase 5','1034',01214,'X12z'),
('2094','Muhammad','Ahmad',0322756674,'Punjab','Lahore','23256','1983/12/01','muhammad6236@gmail.com','Civil Engineering',3520575858957,'Johar Town','4056',01214,'B12e'),
('1634','Ahmad','Qasim',03163653573,'Punjab','Lahore','57535','1992/12/03','Ahamd-12@gmail.com','CS',3520262876534,'PAk Arab socirty','4056',01214,'A12e'),
('1853','Taimoor','Waris',03122345733,'Punjab','Gujranwala','45456','1994/08/08','Twaris_3424@gmail.com','EE',3520167545855,'Chaand ka qilla','7086',01214,'F62g'),
('1321','Muhammad','Butt',03245676474,'Punjab','Lahore','43665','1989/04/22','butt1342@gmail.com','SE',3520757768969,'Township','4056',01214,'N11r');

insert into course values
('Data Structures',101,3,'Ali Sarwar','2022/01/01','2022/04/01',1852),
('Data Structures(Lab)',102,1,'Fawad Rana','2022/01/01','2022/04/01',1411),
('Control Structures',201,3,'Muhammad Ali','2022/03/01','2022/07/01',1932),
('Control Structures (Lab)',202,1,'Taimoor Hussain','2022/03/01','2022/03/01',1853),
('Fluid Mechanics',501,3,'Hassan Ali','2022/02/01','2022/06/01',1543),
('Fluid Mechanics (Lab)',502,1,'Hassan Ali','2022/02/01','2022/06/01',1543),
('Computer Organization and Assembly language',113,3,'Ahmad Qasim','2022/01/01','2022/04/01',1634),
('Computer Organization and Assembly language (Lab)',114,1,'Ahmad Qasim','2022/01/01','2022/04/01',1634),
('Chemistry',901,3,'Muhammad Hassan','2022/01/01','2022/04/04',2173),
('Chemistry (Lab)',903,1,'Muhammad Hassan','2022/01/01','2022/04/04',2173);

insert into hostel values
('A',24,'A-block','Ali Mirza','Male'),
('B',24,'B-block','Hassan Javed','Male'),
('C',24,'C-block','Abdul-ur-Rehman','Faculty Male'),
('D',24,'D-block','Kashif Raiz','Faculty Female'),
('E',24,'E-block','jhanzaib jaan','Female');

insert into std values
('1','Sheikh','Hamza','Shk1166@gmail.com','M',7684,'Punjab','Lahore','64737',03161734789,'2002/07/22',3.4,'A12e','7086','174E',NULL),
('2','Syed','Hamza','Syed5665@gmail.com','M',7464,'Punjab','Lahore','84455',032161703755,'2002/01/26',2.9,'A12e','4056','174E',NULL),
('3','Ahtesham','Ahsan','ShonaMunda420@gmail.com','M',1366,'Punjab','Lahore','34646',03141714144,'2012/12/25',3.8,'C12c',NULL,'952A','A'),
('4','Dawood','Zahid','dawood439@gmail.com','M',5686,'Punjab','Lahore','87345',03416876678,'2000/12/02',3.2,'Q11y','1734','509N',NULL),
('5','Hassaan','Ahmad','hahmad2205@gmail.com','M',768,'Punjab','Lahore','78323',03042747561,'2002/01/22',3.4,'H19v','1234','225H',NULL),
('6','Syed','Ghani','Vilen1276@gmail.com','M',547,'Punjab','Lahore','8750',03248476109,'2002/09/05',3.6,'B12e',NULL,NULL,'B'),
('7','Asad','Baig','Builder888@gmail.com','M',2343,'Punjab','Lahore','13647',03427138947,'2002/04/12',3.3,'X12z',NULL,NULL,'B'),
('8','Syed','Ali','Ali1374@gmail.com','M',1214,'Punjab','Lahore','46536',03165847129,'2002/02/02',3.4,'D15c','9099','225H',NULL),
('9','Subhan','Zaheer','Muhammad63@gmail.com','M',23,'Punjab','Lahore','46438',03119427400,'2002/07/29',3.1,'U82t',NULL,'509N','A'),
('10','Anas','Jamal','Anas@gmail.com','M',2344,'Punjab','Lahore','32546',03333188661,'2002/11/21',2.8,'A12e','2267',NULL,NULL);

insert into registration values
('2020-CS-671','A12e','1214','1','Approved','2020','Bachelors'),
('2016-SE-234','Q11y','1214','4','Approved','2016','Bachelors'),
('2019-ME-534','H19v','1214','5','Approved','2019','Bachelors'),
('2019-ME-163','B12e','1214','6','Approved','2019','Bachelors'),
('2020-EE-245','X12z','1214','7','Approved','2020','Bachelors'),
('2020-CS-637','A12e','1214','2','Approved','2020','Bachelors'),
('2018-EE-252','U82t','1214','9','Approved','2018','Bachelors'),
('2021-CE-747','A12e','1214','10','Approved','2021','Bachelors'),
('2021-CS-623','C12c','1214','3','Approved','2021','Bachelors'),
('2020-SE-642','D15c','1214','8','Approved','2020','Bachelors');

insert into enrollment values 
(3,113),
(4,901),
(3,101),
(1,101),
(2,113),
(1,113),
(2,101),
(2,102),
(4,903),
(1,102),
(10,102),
(1,114),
(2,114),
(5,501),
(10,114),
(10,101);

insert into PARTICIPATES values
('A1','174E','Member','2022/01/22',''),
('A12','174E','Director','2020/01/14',''),
('B16','509N','Deputy','2021/07/27',''),
('B45','509N','Director','2020/09/04',''),
('C43','225H','Director','2020/01/14',''),
('C64','225H','Vice-president','2021/07/27',''),
('D45','952A','President','2020/01/01','');

insert into Std_Acc values
('2020CS671@student.uet.edu.pk','Eq24fw','','','1'),
('2016SE234@student.uet.edu.pk','J78fcgT','','','2'),
('2019ME534@student.uet.edu.pk','2hgyyt','','','3'),
('2019CS163@student.uet.edu.pk','VYr75B','','','4'),
('2020EE245@student.uet.edu.pk','H65fTGV','','','5'),
('2020CS637@student.uet.edu.pk','FT578tf','','','6'),
('2018EE252@student.uet.edu.pk','KN76Tcx','','','7'),
('2021CE747@student.uet.edu.pk','Ug6645dfc','','','8'),
('2021CS623@student.uet.edu.pk','W34fej','','','9'),
('2020SE642@student.uet.edu.pk','R43ff','','','10');

