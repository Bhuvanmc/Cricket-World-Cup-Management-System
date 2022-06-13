drop table team cascade constraints;
drop table player cascade constraints;
drop table batsman cascade constraints;
drop table bowler cascade constraints;
drop table umpire cascade constraints;
drop table coach cascade constraints;
drop table captain cascade constraints;
drop table matches cascade constraints;
drop table results cascade constraints;
drop table stadium cascade constraints;
drop table points_table cascade constraints;
drop table umpired_by cascade constraints;


create table team
(
    team_id varchar2(30) primary key,
    country_name varchar2(30),
    no_of_batsmen number,
    no_of_bowlers number
);

insert into team values('IND','India',8,8);
insert into team values('AFG','Afghanistan',7,9);
insert into team values('AUS','Austrelia',7,9);
insert into team values('BAN','Bangladesh',6,10);
insert into team values('ENG','England',8,8);
insert into team values('NZ','New Zealand',7,9);
insert into team values('PAK','Pakistan',6,10);
insert into team values('SA','South Africa',5,11);
insert into team values('SL','Shri Lanka',5,11);
insert into team values('WI','West Indies',6,10);
SELECT * FROM TEAM;

create table player
(
    player_id varchar2(30) primary key,
    player_name varchar2(30),
    dob date,
    type_of_player varchar2(30),
    no_of_tests number,
    no_of_t20s number,
    no_of_ODIs number,
    team_id varchar2(30) references team(team_id) on delete cascade 
);

insert into player values('IND01','Virat Kohli','05-NOV-1988','Batsman',91,89,254,'IND');
insert into player values('IND02','Rohit Sharma','30-APR-1987','Batsman',38,111,227,'IND');
insert into player values('IND03','Mayank Agarwal','16-FEB-1991','Batsman',14,0,5,'IND');
insert into player values('IND04','K L Rahul','18-APR-1992','Batsman',36,48,38,'IND');
insert into player values('IND05','M S Dhoni','07-JULY-1981','Batsman',90,98,350,'IND');
insert into player values('IND06','Jasprit Bumrah','06-DEC-1993','Bowler',19,49,67,'IND');
insert into player values('IND07','Yuzvendra Chahal','03-july-1990','Bowler',0,48,54,'IND');
insert into player values('IND08','Ravindra Jadeja','06-dec-1988','Batsman',51,50,168,'IND');
insert into player values('IND09','Shikhar Dhawan','05-dec-1985','Batsman',34,64,142,'IND');
insert into player values('IND10','Bhuvneshwar Kumar','05-FEB-1990','Bowler',21,48,117,'IND');
insert into player values('IND11','Kuldeep Yadhav','14-DEC-1994','Bowler',7,20,63,'IND');
insert into player values('IND12','Rishabh Pant','10-MAR-1997','Batsman',30,20,300,'IND');
insert into player values('IND13','Kedar Jadhav','05-APR-1994','Batsman',25,20,63,'IND');
insert into player values('IND14','Hardik Pandya','05-DEC-1993','All Rounder',37,30,306,'IND');
insert into player values('IND15','Krunal Pandya','16-FEB-1995','All Rounder',37,30,145,'IND');
insert into player values('IND16','Harshal Patel','23-JUN-1996','Bowler',17,15,55,'IND');

delete from player where player_id='IND17';

insert into player values('AFG01','Hazartullah Zazai','23-mar-1998','Batsman',0,15,16,'AFG');
insert into player values('AFG02','Hashmatullah Shahidi','04-NOV-1994','Batsman',5,3,42,'AFG');
insert into player values('AFG03','Asghar Afghan','22-DEC-1987','Batsman',6,72,115,'AFG');
insert into player values('AFG04','Najibullah Zadran','28-FEB-1993','Batsman',0,63,70,'AFG');
insert into player values('AFG05','Noor Ali Zadran','10-JULY-1988','Batsman',0,19,51,'AFG');
insert into player values('AFG06','Dawlat Zadran','19-mar-1988','Bowler',0,34,82,'AFG');
insert into player values('AFG07','Mujeeb Ur Rahman','28-mar-2001','Bowler',1,19,43,'AFG');
insert into player values('AFG08','Aftab Alam','30-nov-1992','Bowler',0,13,27,'AFG');
insert into player values('AFG09','Hamid Hassan','01-june-1987','Bowler',0,21,39,'AFG');
insert into player values('AFG10','Rashid Khan','20-sep-1998','Bowler',5,51,74,'AFG');
insert into player values('AFG11','Mohammad Nabi','01-jan-1985','All Rounder',3,80,128,'AFG');
insert into player values('AFG12','Nasir Jamal','11-jan-1987','Batsman',13,80,128,'AFG');
insert into player values('AFG13','Usman Ghani','12-feb-1986','Batsman',23,84,118,'AFG');
insert into player values('AFG14','Javed Ahmadi','21-mar-1987','All Rounder',13,83,118,'AFG');
insert into player values('AFG15','Fazal Niazai','19-jul-1988','All Rounder',33,70,108,'AFG');
insert into player values('AFG16','Amir Hazama','14-jul-1989','Bowler',23,35,58,'AFG');

insert into player values('AUS01','Aaron Finch','17-nov-1986','Batsman',5,71,132,'AUS');
insert into player values('AUS02','David Warner','27-oct-1986','Batsman',86,81,128,'AUS');
insert into player values('AUS03','Steven Smith','02-june-1989','Batsman',77,45,128,'AUS');
insert into player values('AUS04','Glenn Maxwell','14-oct-1988','All Rounder',7,72,116,'AUS');
insert into player values('AUS05','Marcus Stoinis','16-aug-1989','All Rounder',0,28,45,'AUS');
insert into player values('AUS06','Mitchell Starc','30-jan-1990','Bowler',61,35,96,'AUS');
insert into player values('AUS07','Kane Richardson','12-FEB-1991','Bowler',0,26,25,'AUS');
insert into player values('AUS08','Pat Cummins','08-MAY-1993','Bowler',34,30,69,'AUS');
insert into player values('AUS09','Adam Zampa','31-MAR-1992','Bowler',0,41,61,'AUS');
insert into player values('AUS10','Nathan Lyon','20-NOV-1987','Bowler',100,2,29,'AUS');
insert into player values('AUS11','Sean Abbott','29-FEB-1992','Bowler',0,7,2,'AUS');
insert into player values('AUS12','Nathan Coulter Nile','11-OCT-1987','Bowler',32,28,3,'AUS');
insert into player values('AUS13','Ricky Pointing','14-FEB-1986','Batsman',50,117,89,'AUS');
insert into player values('AUS14','Mathew Haiden','25-MAR-1979','Batsman',100,117,122,'AUS');
insert into player values('AUS15','Andrew Symonds','19-JUL-1972','All Rounder',110,137,112,'AUS');
insert into player values('AUS16','Shawn Maichels','17-Mar-1982','Bowler',40,57,62,'AUS');


insert into player values('BAN01','Tamim Iqbal','20-mar-1989','Batsman',64,78,216,'BAN');
insert into player values('BAN02','Liton Das','13-oct-1994','Batsman',24,32,44,'BAN');
insert into player values('BAN03','Soumya Sarkar','25-feb-1993','Batsman',16,53,61,'BAN');
insert into player values('BAN04','Sabbir Rahman','22-nov-1991','Batsman',11,66,44,'BAN');
insert into player values('BAN05','Mohammad Mithun','02-mar-1991','Batsman',10,17,31,'BAN');
insert into player values('BAN06','Mashrafe Mortaza','05-oct-1983','Bowler',36,54,220,'BAN');
insert into player values('BAN07','Rubel Hossain','01-jan-1990','Bowler',27,28,104,'BAN');
insert into player values('BAN08','Mustafizur Rahman','06-sep-1995','Bowler',14,42,42,'BAN');
insert into player values('BAN09','Abu Jayed','02-aug-1993','Bowler',64,78,216,'BAN');
insert into player values('BAN10','Shakib Al Hasan','24-mar-1987','All Rounder',57,76,212,'BAN');
insert into player values('BAN11','Mahmudullah','04-feb-1986','All Rounder',49,89,197,'BAN');
insert into player values('BAN12','Mohammed Saifudin','24-feb-1986','All Rounder',29,49,187,'BAN');
insert into player values('BAN13','Mosadeek Hussain','23-apr-1987','Batsman',79,19,97,'BAN');
insert into player values('BAN14','Mushfiqur Rahim','29-Jun-1989','Bowler',59,69,57,'BAN');
insert into player values('BAN15','Mehidi Hasan Miraz','25-oct-1996','All Rounder',28,56,108,'BAN');
insert into player values('BAN16','Mushfiqur Ali','25-Jan-1996','All Bowler',49,23,67,'BAN');

insert into player values('ENG01','Eoin Morgan','10-sep-1986','Batsman',16,73,102,'ENG');
insert into player values('ENG02','Jason Roy','21-july-1990','Batsman',5,43,96,'ENG');
insert into player values('ENG03','Joe Root','30-dec-1990','Batsman',103,32,149,'ENG');
insert into player values('ENG04','Dawid Malan','03-sep-1987','Batsman',15,24,3,'ENG');
insert into player values('ENG05','Dawid Malan','17-feb-1988','Bowler',19,57,109,'ENG');
insert into player values('ENG06','Mark Wood','11-jan-1990','Bowler',18,15,55,'ENG');
insert into player values('ENG07','Jofra Archer','01-apr-1995','Bowler',13,12,17,'ENG');
insert into player values('ENG08','Olly Stone','09-oct-1993','Bowler',2,0,4,'ENG');
insert into player values('ENG09','Moeen Ali','18-jun-1987','All Rounder',61,34,109,'ENG');
insert into player values('ENG10','Chris Woakes','02-mar-1989','All Rounder',38,8,104,'ENG');
insert into player values('ENG11','Tom Curran','12-mar-1995','All Rounder',2,28,26,'ENG');
insert into player values('ENG12','Ben Stokes','04-Jun-1991','All Rounder',84,76,30,'ENG');
insert into player values('ENG13','Jhonny Bairstow','26-Sep-1989','Batsman',63,67,39,'ENG');
insert into player values('ENG14','James Vince','14-mar-1991','All Rounder',12,28,29,'ENG');
insert into player values('ENG15','Alex Hales','03-jan-1989','Batsman',70,86,16,'ENG');
insert into player values('ENG16','Adil Rashid','17-Feb-1988','Bowler',88,69,35,'ENG');


insert into player values('NZ01','Kane Williamson','08-aug-1990','Batsman',82,67,151,'NZ');
insert into player values('NZ02','Martin Guptill','30-sep-1986','Batsman',47,102,186,'NZ');
insert into player values('NZ03','Henry Nicholls','15-nov-1991','Batsman',37,5,2,'NZ');
insert into player values('NZ04','Ross Taylor','08-march-1984','Batsman',105,102,233,'NZ');
insert into player values('NZ05','Colin Munro','11-mar-1987','Batsman',1,65,57,'NZ');
insert into player values('NZ06','Terent Boult','22-july-1989','Batsman',71,34,93,'NZ');
insert into player values('NZ07','Ish Sodhi','31-oct-1992','Bowler',17,57,33,'NZ');
insert into player values('NZ08','Matt Henry','14-dec-1991','Bowler',13,6,55,'NZ');
insert into player values('NZ09','Lockie Ferguson','13-june-1991','Bowler',1,13,37,'NZ');
insert into player values('NZ10','James Neesham','17-sep-1990','All Rounder',12,29,66,'NZ');
insert into player values('NZ11','Mitchell Santner','05-feb-1992','All Rounder',23,52,75,'NZ');
insert into player values('NZ12','Tim Southee','11-Dec-1988','Bowler',139,152,73,'NZ');
insert into player values('NZ13','Tom Blundell','01-Sep-1990','Batsman',0,10,12,'NZ');
insert into player values('NZ14','Colin DeGrandhome','22-Jul-1986','All Rounder',28,50,65,'NZ');
insert into player values('NZ15','Daniel Vetorri','10-Dec-1982','Bowler',125,152,79,'NZ');
insert into player values('NZ16','Kori Anderson','25-Oct-1992','All Rounder',123,112,45,'NZ');




insert into player values('PAK01','Fakhar Zaman','10-apr-1990','Batsman',3,50,46,'PAK');
insert into player values('PAK02','Imam-ul-Haq','12-dec-1995','Batsman',11,2,43,'PAK');
insert into player values('PAK03','Babar','15-oct-1994','Batsman',33,54,80,'PAK');
insert into player values('PAK04','Asif Ali','1-oct-1991','Batsman',0,29,20,'PAK');
insert into player values('PAK05','Soaib Malik','01-feb-1982','All Rounder',35,116,35,'PAK');
insert into player values('PAK06','Shaheen Afridi','06-apr-2000','Bowler',17,25,25,'PAK');
insert into player values('PAK07','Hasan Ali','02-july-1994','Bowler',13,36,54,'PAK');
insert into player values('PAK08','Mohammad Hasnain','05-apr-2000','Bowler',0,14,8,'PAK');
insert into player values('PAK09','Wahab Riaz','28-june-1985','Bowler',27,36,91,'PAK');
insert into player values('PAK10','Mohammad Amir','13-apr-1992','Bowler',36,50,61,'PAK');
insert into player values('PAK11','Shadab Khan','04-oct-1998','All Rounder',6,46,45,'PAK');
insert into player values('PAK12','Imad Wasim','18-Dec-1988','All Rounder',46,66,55,'PAK');
insert into player values('PAK13','Mohammed Hafeez','17-oct-1980','All Rounder',210,146,65,'PAK');
insert into player values('PAK14','Wakar Yonis','24-Dec-1978','Bowler',266,246,145,'PAK');
insert into player values('PAK15','Misbah Ul-Haq','27-Mar-1988','Batsman',96,146,125,'PAK');
insert into player values('PAK16','Wasim Akram','13-Jan-1968','Bowler',256,146,245,'PAK');


insert into player values('SA01','Faf du Plessis','03-july-1984','Batsman',69,50,143,'SA');
insert into player values('SA02','David Miller','10-june-1999','Batsman',0,81,134,'SA');
insert into player values('SA03','Aiden Markram','04-oct-1994','Batsman',24,6,29,'SA');
insert into player values('SA04','Hashim Amla','31-mar-1993','Batsman',124,44,181,'SA');
insert into player values('SA05','Rassie van der Dussen','07-feb-1989','Batsman',8,20,23,'SA');
insert into player values('SA06','Kagiso Rabada','25-may-1995','Bowler',45,26,77,'SA');
insert into player values('SA07','Lungi Ngidi','29-mar-1996','Bowler',8,16,25,'SA');
insert into player values('SA08','Imran Tahir','27-mar-1979','Bowler',20,38,107,'SA');
insert into player values('SA09','Tabraiz Shamsi','18-feb-1990','Bowler',2,32,24,'SA');
insert into player values('SA10','Beuran Hendricks','08-jun-1990','Bowler',1,17,8,'SA');
insert into player values('SA11','Jean-Paul Duminy','14-apr-1984','All Rounder',46,81,199,'SA');
insert into player values('SA12','Dwaine Pretorius','29-Mar-1989','All Rounder',96,51,19,'SA');
insert into player values('SA13','Dale Steyn','27-Jun-1983','Bowler',146,181,100,'SA');
insert into player values('SA14','Anrich Nortje','16-Nov-1993','Bowler',4,8,1,'SA');
insert into player values('SA15','Chris Morris','30-apr-1987','All Rounder',146,96,99,'SA');
insert into player values('SA16','Pollok','23-Mar-1978','Bowler',246,181,199,'SA');


insert into player values('SL01','Dimuth Karunaratne','21-apr-1988','Batsman',72,0,34,'SL');
insert into player values('SL02','Avishka Fernando','05-apr-1998','Batsman',0,14,18,'SL');
insert into player values('SL03','Lahiru thirimanne','09-aug-1989','Batsman',42,26,127,'SL');
insert into player values('SL04','Kusal Mendis','02-feb-1995','Batsman',47,26,79,'SL');
insert into player values('SL05','Jaffrey Vandeersay','05-feb-1990','Batsman',0,10,12,'SL');
insert into player values('SL06','Lasith Malinga','28-dec-1983','Bowler',30,83,226,'SL');
insert into player values('SL07','Suranga lakma','10-mar-1987','Bowler',66,11,86,'SL');
insert into player values('SL08','Kasun Ranjtha','01-jun-1993','Bowler',9,10,9,'SL');
insert into player values('SL09','Angelo Mathews','02-jun-1987','All Rounder',90,78,218,'SL');
insert into player values('SL10','Milinda Siriwardana','04-dec-1985','All Rounder',5,22,27,'SL');
insert into player values('SL11','Dhananjaya de Silva','06-sep-1991','All Rounder',36,15,48,'SL');
insert into player values('SL12','Kusal Parera','17-Aug-1990','All Rounder',136,115,48,'SL');
insert into player values('SL13','Thisara Parera','03-Apr-1989','All Rounder',126,115,68,'SL');
insert into player values('SL14','Isuru Udana','17-Feb-1988','Bowler',36,15,28,'SL');
insert into player values('SL15','Jevana Mendis','15-jan-1983','All Rounder',55,25,26,'SL');
insert into player values('SL16','Nuwan Pradeep','19-oct-1986','Bowler',35,5,8,'SL');




insert into player values('WI01','Cheris Gayle','21-sep-1979','Batsman',103,61,301,'WI');
insert into player values('WI02','Evin Lewis','27-dec-1991','Batsman',0,35,54,'WI');
insert into player values('WI03','Dawyne Bravo','07-oct-1983','Batsman',40,74,164,'WI');
insert into player values('WI04','Shimron Hetmyer','26-dec-1996','Batsman',16,27,45,'WI');
insert into player values('WI05','Sunil Ambris','23-mar-1993','Batsman',6,16,0,'WI');
insert into player values('WI06','Fabian Allen','07-may-1995','All Rounder',0,19,17,'WI');
insert into player values('WI07','Ashley Nurse','22-dec-1988','Bowler',0,13,54,'WI');
insert into player values('WI08','Kemar Roach','30-jun-1988','Bowler',63,11,92,'WI');
insert into player values('WI09','Oshane Thomas','18-feb-1997','Bowler',0,15,20,'WI');
insert into player values('WI10','Sheldon Cottrell','19-aug-1989','Bowler',3,30,35,'WI');
insert into player values('WI11','Shannon Gabriel','28-apr-1988','Bowler',54,2,25,'WI');
insert into player values('WI12','Shai Hope','10-nov-1983','Batsman',54,22,25,'WI');
insert into player values('WI13','Nichols Pooran','02-oct-1995','Bowler',1,2,3,'WI');
insert into player values('WI14','Andre Russel','29-apr-1988','Bowler',52,22,24,'WI');
insert into player values('WI15','Jason Holder','05-nov-1991','All Rounder',95,65,45,'WI');
insert into player values('WI16','Carlos Braithwaite','18-Jul-1988','All Rounder',33,22,15,'WI');

SELECT * FROM PLAYER;


create table batsman
(
    player_id varchar2(30) primary key references player(player_id) on delete set null,
    batsman_type varchar2(30),
    number_of_sixes number,
    number_of_fours number,
    total_runs number,
    highest_runs number,
    batting_average number
);

insert into batsman values('IND05','Right-Handed',150,201,10000,183,75);
insert into batsman values('IND04','Right-Handed',145,220,6000,200,85);
insert into batsman values('IND03','Right-Handed',120,225,7000,145,79);
insert into batsman values('IND02','Right-Handed',110,224,8000,190,85);
insert into batsman values('IND01','Right-Handed',100,240,9000,169,96);
insert into batsman values('IND09','Left-Handed',150,300,18000,154,98);
insert into batsman values('IND12','Left-Handed',123,214,8000,108,85);
insert into batsman values('IND13','Right-Handed',50,30,4000,86,79);



insert into batsman values('AFG05','Right-Handed',150,201,10000,183,75);
insert into batsman values('AFG04','Left-Handed',145,220,5000,200,85);
insert into batsman values('AFG03','Right-Handed',120,225,7000,145,79);
insert into batsman values('AFG02','Left-Handed',110,224,8000,190,85);
insert into batsman values('AFG01','Left-Handed',100,240,4000,169,96);
insert into batsman values('AFG12','Right-Handed',78,152,6000,123,84);
insert into batsman values('AFG13','Right-Handed',63,127,7000,94,85);


insert into batsman values('AUS05','Right-Handed',158,201,6000,183,75);
insert into batsman values('AUS04','Left-Handed',147,220,3000,200,85);
insert into batsman values('AUS03','Right-Handed',130,225,7000,145,79);
insert into batsman values('AUS02','Left-Handed',150,224,15000,190,85);
insert into batsman values('AUS01','Left-Handed',165,240,10000,169,96);
insert into batsman values('AUS13','Right-Handed',165,240,11000,169,96);
insert into batsman values('AUS14','Right-Handed',165,240,12000,176,89);


insert into batsman values('BAN05','Right-Handed',75,201,6000,103,75);
insert into batsman values('BAN04','Right-Handed',47,230,5000,100,85);
insert into batsman values('BAN03','Left-Handed',100,205,7000,115,79);
insert into batsman values('BAN02','Left-Handed',78,100,5000,150,85);
insert into batsman values('BAN01','Left-Handed',85,135,1000,109,96);
insert into batsman values('BAN13','Right-Handed',45,145,6000,96,85);


insert into batsman values('ENG04','Right-Handed',147,250,15000,100,85);
insert into batsman values('ENG03','Left-Handed',100,245,10000,115,79);
insert into batsman values('ENG02','Right-Handed',118,140,15000,150,85);
insert into batsman values('ENG01','Left-Handed',185,165,12300,109,96);
insert into batsman values('ENG12','Left-Handed',185,165,12300,109,96);
insert into batsman values('ENG14','Right-Handed',185,165,12300,109,96);
insert into batsman values('ENG15','Right-Handed',185,165,12300,109,96);
insert into batsman values('ENG13','Right-Handed',185,165,12300,109,96);



insert into batsman values('NZ05','Right-Handed',175,101,16000,103,75);
insert into batsman values('NZ06','Right-Handed',185,201,7000,123,79);
insert into batsman values('NZ04','Right-Handed',147,130,10000,140,85);
insert into batsman values('NZ03','Left-Handed',100,105,1560,15,79);
insert into batsman values('NZ02','Left-Handed',178,200,4500,150,85);
insert into batsman values('NZ01','Left-Handed',185,135,10000,109,96);
insert into batsman values('NZ13','Right-Handed',185,135,10000,109,96);


insert into batsman values('PAK05','Right-Handed',75,71,3000,103,75);
insert into batsman values('PAK04','Right-Handed',47,50,2000,140,85);
insert into batsman values('PAK03','Left-Handed',10,50,1560,15,63);
insert into batsman values('PAK02','Left-Handed',78,20,5000,150,43);
insert into batsman values('PAK01','Right-Handed',85,35,3000,109,74);
insert into batsman values('PAK15','Right-Handed',85,35,3000,109,74);


insert into batsman values('SA05','Right-Handed',158,201,6000,183,75);
insert into batsman values('SA04','Left-Handed',147,220,3000,200,85);
insert into batsman values('SA03','Right-Handed',130,225,7000,145,69);
insert into batsman values('SA02','Right-Handed',150,224,15000,190,75);
insert into batsman values('SA01','Left-Handed',165,240,10000,169,85);



insert into batsman values('SL05','Right-Handed',75,201,6000,103,75);
insert into batsman values('SL04','Right-Handed',47,230,5000,100,85);
insert into batsman values('SL03','Left-Handed',100,205,7000,115,79);
insert into batsman values('SL02','Left-Handed',78,100,5000,150,85);
insert into batsman values('SL01','Right-Handed',85,135,1000,109,96);



insert into batsman values('WI05','Right-Handed',158,201,6000,183,75);
insert into batsman values('WI04','Left-Handed',147,220,3000,200,85);
insert into batsman values('WI03','Right-Handed',130,225,7000,145,79);
insert into batsman values('WI02','Left-Handed',150,224,15000,190,85);
insert into batsman values('WI01','Left-Handed',165,240,10000,169,96);
insert into batsman values('WI12','Right-Handed',166,242,10000,159,86);

SELECT * FROM BATSMAN;

create table bowler
(
    player_id varchar2(30) primary key references player(player_id) on delete set null,
    bowler_type varchar2(30),
    number_of_wickets number,
    highest_speed number,
    economy number
);

insert into bowler values('IND06','Medium-Pace',108,153.26,4.66);
insert into bowler values('IND07','Spin',92,109,5.21);
insert into bowler values('IND08','Left-Arm-Spin',168,110,4.92);
insert into bowler values('IND10','Medium-Pace',107,136.4,3.9);
insert into bowler values('IND11','Left-Arm-Spin',132,106,6.0);
insert into bowler values('IND16','Fast',122,86,7.0);


insert into bowler values('AFG06','Medium-Pace',81,153.26,7.66);
insert into bowler values('AFG07','Leg-Break-Bowler',92,109,5.21);
insert into bowler values('AFG08','Left-Arm-Spin',85,110,7.92);
insert into bowler values('AFG09','Left-Arm-Spin',68,110,6.92);
insert into bowler values('AFG10','Medium-Pace',75,136.4,7.9);
insert into bowler values('AFG11','Medium-Pace',65,106,8.0);
insert into bowler values('AFG16','Medium-Pace',55,120,8.0);

insert into bowler values('BAN06','Medium-Pace',71,133.26,7.66);
insert into bowler values('BAN07','Medium-Pace',92,129,5.21);
insert into bowler values('BAN08','Medium-Pace',75,130,7.92);
insert into bowler values('BAN09','Spin',68,107,6.92);
insert into bowler values('BAN10','Left-Arm-Spin',75,103,7.9);
insert into bowler values('BAN11','Spin',65,109,8.0);
insert into bowler values('BAN14','Spin',55,129,8.0);
insert into bowler values('BAN16','Spin',67,119,8.0);

insert into bowler values('AUS04','Spin',81,105,7.66);
insert into bowler values('AUS05','Medium-Pace',92,124,5.21);
insert into bowler values('AUS06','Left-Arm-Fast',85,153.6,7.92);
insert into bowler values('AUS07','Medium-Pace',68,135,6.92);
insert into bowler values('AUS08','Medium-Pace',75,136.4,7.9);
insert into bowler values('AUS09','Leg-Break-Bowler',65,106,8.0);
insert into bowler values('AUS10','Spin',75,104.6,7.9);
insert into bowler values('AUS11','Medium-Pace',65,124,8.0);
insert into bowler values('AUS16','Medium-Pace',65,114,8.0);


insert into bowler values('ENG05','Medium-Pace',72,124,5.21);
insert into bowler values('ENG06','Fast',75,153.6,8.92);
insert into bowler values('ENG07','Medium-Pace',78,135,7.92);
insert into bowler values('ENG08','Spin',67,108.6,6.9);
insert into bowler values('ENG09','Spin',95,106,7.0);
insert into bowler values('ENG10','Spin',69,104.6,8.9);
insert into bowler values('ENG11','Medium-Pace',65,124,7.0);
insert into bowler values('ENG16','Spin',165,134,8.0);


insert into bowler values('NZ07','Medium-Pace',98,135,7.92);
insert into bowler values('NZ08','Medium-Pace',97,108.6,6.9);
insert into bowler values('NZ09','Fast',95,150.9,7.0);
insert into bowler values('NZ10','Medium-Pace',89,104.6,8.9);
insert into bowler values('NZ11','Left-Arm-Spin',85,124,6.0);
insert into bowler values('NZ12','Fast',75,104,8.0);
insert into bowler values('NZ15','Left-Arm-Spin',285,224,4.0);


insert into bowler values('PAK06','Leg-Break-Bowler',175,110.9,8.92);
insert into bowler values('PAK07','Spin',98,107,6.92);
insert into bowler values('PAK08','Medium-Pace',67,136.6,7.9);
insert into bowler values('PAK09','Left-Arm-Fast',125,151.6,7.0);
insert into bowler values('PAK10','Left-Arm-Fast',115,150.0,8.9);
insert into bowler values('PAK11','Medium-Pace',65,124,7.0);    
insert into bowler values('PAK14','Fast',265,214,7.0); 
insert into bowler values('PAK16','Left-Arm-Fast',155,244,7.0); 


insert into bowler values('SA06','Fast',155,149.9,7.92);
insert into bowler values('SA07','Medium-Pace',130,139.4,6.92);
insert into bowler values('SA08','Leg-Break-Bowler',67,103.6,7.9);
insert into bowler values('SA09','Medium-Pace',115,138.6,7.0);
insert into bowler values('SA10','Medium-Pace',125,140.0,8.9);
insert into bowler values('SA11','Left-Arm-Spin',75,104,7.0);    
insert into bowler values('SA13','Fast',175,104,7.0);    
insert into bowler values('SA14','Fast',275,104,7.0);    
insert into bowler values('SA16','Fast',165,104,7.0);    


insert into bowler values('SL06','Fast',195,154.5,7.92);
insert into bowler values('SL07','Spin',98,107,6.92);
insert into bowler values('SL08','Medium-Pace',67,136.6,7.9);
insert into bowler values('SL09','Spin',105,110,7.0);
insert into bowler values('SL10','Medium-Pace',115,136.4,8.3);
insert into bowler values('SL11','Medium-Pace',65,124,7.0);    
insert into bowler values('SL14','Medium-Pace',265,114,7.0);  
insert into bowler values('SL16','Medium-Pace',115,104,7.0);  


insert into bowler values('WI06','Spin',65,109.6,8.92);
insert into bowler values('WI07','Left-Arm-Spin',78,114.6,7.92);
insert into bowler values('WI08','Medium-Pace',87,140.6,6.9);
insert into bowler values('WI09','Left-Arm-Fast',95,145.9,7.0);
insert into bowler values('WI10','Left-Arm-Fast',99,146.6,7.8);
insert into bowler values('WI11','Spin',65,116.7,7.0);
insert into bowler values('WI13','Medium-Pace',165,126.7,7.0);
insert into bowler values('WI14','Medium-Pace',115,136.7,7.0);

SELECT * FROM BOWLER;




create table umpire
(
    u_id varchar2(30) primary key ,
    u_name varchar2(30),
    u_country varchar2(30),
    number_of_matches number,
    u_experience number
);
insert into umpire values('ump01','Aleem Dar','Pakistan',200,18);
insert into umpire values('ump02','Kumar Dharmasena','Sri Lanka',95,10);
insert into umpire values('ump03','Marais Erasmus','South Africa',82,11);
insert into umpire values('ump04','Chris Gaffaney','New Zealand',62,6);
insert into umpire values('ump05','Ian Gould','England',135,10);
insert into umpire values('ump06','Richard Illingworth','England',59,7);
insert into umpire values('ump07','Richard Kettleborough','England',82,10);
insert into umpire values('ump08','Nigel Llong','England',123,8);
insert into umpire values('ump09','Bruce Oxenford','Australia',90,10);
insert into umpire values('ump10','Sundaram Ravi','India',100,11);
insert into umpire values('ump11','Paul Reiffel','Australia',63,8);
insert into umpire values('ump12','Rod Tucker','Australia',78,11);
insert into umpire values('ump13','Michael Gough','England',54,2);
insert into umpire values('ump14','Joel Wilson','West Indies',58,2);

SELECT * FROM UMPIRE;

create table coach
(
    coach_id varchar2(30) primary key ,
    team_id varchar2(30) references team(team_id) on delete set null,
    coach_name varchar2(30),
    coach_country varchar2(30),
    coach_type varchar2(30),
    coach_experience number
);

INSERT INTO COACH VALUES('CH01','IND','Ravi Shastri','India','All Rounder',7);
INSERT INTO COACH VALUES('CH02','AUS','Justin Lunger','Australia','Batting',3);
INSERT INTO COACH VALUES('CH03','NZ','Gary Stead','New Zeeland','Batting',5);
INSERT INTO COACH VALUES('CH04','ENG','Chris Silverwood','England','Batiing',6);
INSERT INTO COACH VALUES('CH05','AFG','Lance Klusener','Afghanistan','All Rounder',8);
INSERT INTO COACH VALUES('CH06','PAK','Misbah-ul-Haq Khan Niazi','Pakistaan','Batting',10);
INSERT INTO COACH VALUES('CH07','WI','Phil Simmons','West Indies','All Rounder',6);
INSERT INTO COACH VALUES('CH08','SA','Gibson','South Africa','Batting',8);
INSERT INTO COACH VALUES('CH09','BAN','Russell Domingo','Bangladesh','Bowling',4);
INSERT INTO COACH VALUES('CH10','SL','Mickey Arther','Sri Lanka','Batting',7);

SELECT * FROM COACH;

create table captain
(
    team_id varchar2(30) references team(team_id) on delete set null,
    player_id varchar2(30) references player(player_id) on delete set null ,
    name varchar2(30),
    years_of_captaincy number,
    number_of_wins number,
    number_of_trophies number,
    primary key(team_id,player_id)  
);
insert into captain values('IND','IND01','Virat Kohli',4,58,5);
insert into captain values('AFG','AFG03','Asghar Afghan',3,62,4);
insert into captain values('AUS','AUS01','Aaron Finch',3,45,3);
insert into captain values('BAN','BAN06','Mashrafe Mortaza',10,50,7);
insert into captain values('ENG','ENG01','Eoin Morgan',6,32,5);
insert into captain values('NZ','NZ01','Kane Williamson',3,42,20);
insert into captain values('PAK','PAK10','Sarfaraz Ahmed',4,65,3);
insert into captain values('SA','SA01','Faf du Plessis',5,69,6);
insert into captain values('SL','SL01','Dimuth Karunaratne',2,45,3);
insert into captain values('WI','WI07','Jason Holder',5,67,5);
select * from captain;

create table stadium
(
    stadium_id varchar2(30) primary key, 
    stadium_name varchar2(30),
    pitch_type varchar2(30),
    scapacity varchar2(30),
    matches_in_std number
);
insert into stadium values('ST01','Edbagston','Batting-Pitch',408,70);
insert into stadium values('ST02','Bristol-Country-Ground','Neutral-Pitch',373,92);
insert into stadium values('ST03','Sophia-Gardens','Batting-Pitch',386,125);
insert into stadium values('ST04','Riverside-Ground','Neutral-Pitch',338,99);
insert into stadium values('ST05','Headingley','Batting-Pitch',351,212);
insert into stadium values('ST06','Lord-s','Bowling-Pitch',334,107);
insert into stadium values('ST07','The-Oval','Batting-Pitch',398,70);
insert into stadium values('ST08','Old-Trafford','Bowling-Pitch',397,45);
insert into stadium values('ST09','Trent-Bridge','Neutral-Pitch',481,60);
insert into stadium values('ST10','Rose-Bowl','Bowling-Pitch',373,65);
insert into stadium values('ST11','Taunton-Country-Ground','Batting-Pitch',373,172);

SELECT * FROM STADIUM;

create table matches
(
    match_id number primary key, 
    Team1_id varchar2(30) references team(team_id) on delete set null, 
    Team2_id varchar2(30) references team(team_id) on delete set null , 
    stadium_id varchar2(30) references stadium(stadium_id)on delete set null ,
    match_date_time timestamp
);

INSERT INTO MATCHES VALUES(1,'ENG','SA','ST07','30-may-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(2,'WI','PAK','ST09','31-MAY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(3,'NZ','SL','ST03','01-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(4,'AFG','AUS','ST11','01-JUN-2019 06-00-00 pm');
INSERT INTO MATCHES VALUES(5,'SA','BAN','ST07','02-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(6,'ENG','PAK','ST09','03-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(7,'AFG','SL','ST03','04-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(8,'SA','IND','ST10','05-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(9,'BAN','NZ','ST07','05-JUN-2019 06-00-00 pm');
INSERT INTO MATCHES VALUES(10,'AUS','WI','ST09','06-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(11,'PAK','SL','ST11','07-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(12,'ENG','BAN','ST03','08-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(13,'AFG','NZ','ST11','08-JUN-2019 06-00-00 pm');
INSERT INTO MATCHES VALUES(14,'IND','AUS','ST07','09-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(15,'SA','WI','ST10','10-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(16,'BAN','SL','ST11','11-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(17,'AUS','PAK','ST11','12-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(18,'IND','NZ','ST03','13-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(19,'ENG','WI','ST10','14-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(20,'SL','AUS','ST07','15-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(21,'SA','AFG','ST03','15-JUN-2019 06-00-00 pm');
INSERT INTO MATCHES VALUES(22,'IND','PAK','ST08','16-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(23,'WI','BAN','ST11','17-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(24,'ENG','AFG','ST08','18-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(25,'NZ','SA','ST01','19-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(26,'AUS','BAN','ST03','20-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(27,'ENG','SL','ST05','21-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(28,'IND','AFG','ST10','22-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(29,'WI','NZ','ST03','22-JUN-2019 06-00-00 pm');
INSERT INTO MATCHES VALUES(30,'PAK','SA','ST06','23-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(31,'BAN','AFG','ST10','24-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(32,'ENG','AUS','ST06','25-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(33,'NZ','PAK','ST01','26-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(34,'WI','IND','ST08','27-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(35,'SL','SA','ST04','28-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(36,'PAK','AFG','ST05','29-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(37,'NZ','AUS','ST06','29-JUN-2019 06-00-00 pm');
INSERT INTO MATCHES VALUES(38,'ENG','IND','ST01','30-JUN-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(39,'SL','WI','ST04','01-JULY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(40,'BAN','IND','ST01','02-JULY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(41,'ENG','NZ','ST04','03-JULY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(42,'AFG','WI','ST05','04-JULY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(43,'PAK','BAN','ST06','05-JULY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(44,'SL','IND','ST05','06-JULY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(45,'AUS','SA','ST08','06-JULY-2019 06-00-00 pm');
INSERT INTO MATCHES VALUES(46,'IND','NZ','ST08','09-JULY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(47,'AUS','ENG','ST01','11-JULY-2019 03-00-00 pm');
INSERT INTO MATCHES VALUES(48,'NZ','ENG','ST06','14-JULY-2019 03-00-00 pm');

SELECT * FROM MATCHES;

select * from team;
create table points_table
(
    Team_id varchar2(30) references team(team_id) on delete set null , 
    number_of_wins number, 
    number_of_loss number,
    number_of_draw number,
    points number,
    run_rate number,
    team_rank number
);
insert into points_table values('IND',7,1,1,15,+0.809,1);
insert into points_table values('AUS',7,2,0,14,+0.868,2);
insert into points_table values('ENG',6,3,0,12,+1.152,3);
insert into points_table values('NZ',6,2,1,11,+0.175,4);
insert into points_table values('PAK',4,4,1,11,-0.430,5);
insert into points_table values('SL',3,4,2,8,-0.919,6);
insert into points_table values('SA',3,5,1,7,-0.030,7);
insert into points_table values('BAN',3,5,1,7,-0.410,8);
insert into points_table values('WI',2,6,1,5,-0.225,9);
insert into points_table values('AFG',0,9,0,0,-1.322,10);
SELECT * FROM UMPIRE;

create table umpired_by
(
    match_id number references matches(match_id) on delete set null,
    u_id varchar2(30) references umpire(u_id),
    primary key(u_id,match_id)
);

INSERT INTO UMPIRED_BY VALUES(1,'ump02');
INSERT INTO UMPIRED_BY VALUES(1,'ump09');
INSERT INTO UMPIRED_BY VALUES(1,'ump11');
INSERT INTO UMPIRED_BY VALUES(2,'ump04');
INSERT INTO UMPIRED_BY VALUES(2,'ump03');
INSERT INTO UMPIRED_BY VALUES(2,'ump10');
INSERT INTO UMPIRED_BY VALUES(3,'ump05');
INSERT INTO UMPIRED_BY VALUES(3,'ump12');
INSERT INTO UMPIRED_BY VALUES(3,'ump08');
INSERT INTO UMPIRED_BY VALUES(4,'ump01');
INSERT INTO UMPIRED_BY VALUES(4,'ump06');
insert into umpired_by values(4,'ump02');
INSERT INTO UMPIRED_BY VALUES(5,'ump13');
INSERT INTO UMPIRED_BY VALUES(5,'ump11');
INSERT INTO UMPIRED_BY VALUES(5,'ump14');
INSERT INTO UMPIRED_BY VALUES(6,'ump03');
INSERT INTO UMPIRED_BY VALUES(6,'ump10');
INSERT INTO UMPIRED_BY VALUES(6,'ump04');
INSERT INTO UMPIRED_BY VALUES(7,'ump08');
INSERT INTO UMPIRED_BY VALUES(7,'ump14');
INSERT INTO UMPIRED_BY VALUES(7,'ump12');
INSERT INTO UMPIRED_BY VALUES(8,'ump07');
INSERT INTO UMPIRED_BY VALUES(8,'ump13');
INSERT INTO UMPIRED_BY VALUES(8,'ump06');
INSERT INTO UMPIRED_BY VALUES(9,'ump11');
INSERT INTO UMPIRED_BY VALUES(9,'ump09');
INSERT INTO UMPIRED_BY VALUES(9,'ump14');
INSERT INTO UMPIRED_BY VALUES(10,'ump04');
INSERT INTO UMPIRED_BY VALUES(10,'ump03');
INSERT INTO UMPIRED_BY VALUES(10,'ump10');
INSERT INTO UMPIRED_BY VALUES(11,'ump08');
INSERT INTO UMPIRED_BY VALUES(11,'ump05');
INSERT INTO UMPIRED_BY VALUES(11,'ump14');
INSERT INTO UMPIRED_BY VALUES(12,'ump14');
INSERT INTO UMPIRED_BY VALUES(12,'ump02');
INSERT INTO UMPIRED_BY VALUES(12,'ump09');
INSERT INTO UMPIRED_BY VALUES(13,'ump01');
INSERT INTO UMPIRED_BY VALUES(13,'ump13');
INSERT INTO UMPIRED_BY VALUES(13,'ump07');
INSERT INTO UMPIRED_BY VALUES(14,'ump04');
INSERT INTO UMPIRED_BY VALUES(14,'ump05');
INSERT INTO UMPIRED_BY VALUES(14,'ump08');
INSERT INTO UMPIRED_BY VALUES(15,'ump12');
INSERT INTO UMPIRED_BY VALUES(15,'ump14');
INSERT INTO UMPIRED_BY VALUES(15,'ump10');
INSERT INTO UMPIRED_BY VALUES(16,'ump06');
INSERT INTO UMPIRED_BY VALUES(16,'ump07');
INSERT INTO UMPIRED_BY VALUES(16,'ump01');
INSERT INTO UMPIRED_BY VALUES(17,'ump08');
INSERT INTO UMPIRED_BY VALUES(17,'ump05');
INSERT INTO UMPIRED_BY VALUES(17,'ump04');
INSERT INTO UMPIRED_BY VALUES(18,'ump03');
INSERT INTO UMPIRED_BY VALUES(18,'ump11');
INSERT INTO UMPIRED_BY VALUES(18,'ump09');
INSERT INTO UMPIRED_BY VALUES(19,'ump02');
INSERT INTO UMPIRED_BY VALUES(19,'ump12');
insert into umpired_by values(19,'ump14');
INSERT INTO UMPIRED_BY VALUES(20,'ump01');
INSERT INTO UMPIRED_BY VALUES(20,'ump06');
INSERT INTO UMPIRED_BY VALUES(20,'ump13');
INSERT INTO UMPIRED_BY VALUES(21,'ump04');
INSERT INTO UMPIRED_BY VALUES(21,'ump05');
INSERT INTO UMPIRED_BY VALUES(21,'ump08');
INSERT INTO UMPIRED_BY VALUES(22,'ump03');
INSERT INTO UMPIRED_BY VALUES(22,'ump09');
INSERT INTO UMPIRED_BY VALUES(22,'ump14');
INSERT INTO UMPIRED_BY VALUES(23,'ump12');
INSERT INTO UMPIRED_BY VALUES(23,'ump10');
INSERT INTO UMPIRED_BY VALUES(23,'ump14');
INSERT INTO UMPIRED_BY VALUES(24,'ump11');
INSERT INTO UMPIRED_BY VALUES(24,'ump14');
INSERT INTO UMPIRED_BY VALUES(24,'ump03');
INSERT INTO UMPIRED_BY VALUES(25,'ump08');
INSERT INTO UMPIRED_BY VALUES(25,'ump05');
INSERT INTO UMPIRED_BY VALUES(25,'ump12');
INSERT INTO UMPIRED_BY VALUES(26,'ump07');
INSERT INTO UMPIRED_BY VALUES(26,'ump13');
INSERT INTO UMPIRED_BY VALUES(26,'ump06');
INSERT INTO UMPIRED_BY VALUES(27,'ump14');
INSERT INTO UMPIRED_BY VALUES(27,'ump03');
INSERT INTO UMPIRED_BY VALUES(27,'ump09');
INSERT INTO UMPIRED_BY VALUES(28,'ump01');
INSERT INTO UMPIRED_BY VALUES(28,'ump06');
INSERT INTO UMPIRED_BY VALUES(28,'ump07');
INSERT INTO UMPIRED_BY VALUES(29,'ump05');
INSERT INTO UMPIRED_BY VALUES(29,'ump08');
INSERT INTO UMPIRED_BY VALUES(29,'ump12');
INSERT INTO UMPIRED_BY VALUES(30,'ump14');
INSERT INTO UMPIRED_BY VALUES(30,'ump02');
INSERT INTO UMPIRED_BY VALUES(30,'ump04');
INSERT INTO UMPIRED_BY VALUES(31,'ump13');
INSERT INTO UMPIRED_BY VALUES(31,'ump07');
INSERT INTO UMPIRED_BY VALUES(31,'ump01');
INSERT INTO UMPIRED_BY VALUES(32,'ump04');
INSERT INTO UMPIRED_BY VALUES(32,'ump10');
INSERT INTO UMPIRED_BY VALUES(32,'ump02');
INSERT INTO UMPIRED_BY VALUES(33,'ump11');
INSERT INTO UMPIRED_BY VALUES(33,'ump09');
INSERT INTO UMPIRED_BY VALUES(33,'ump14');
INSERT INTO UMPIRED_BY VALUES(34,'ump07');
INSERT INTO UMPIRED_BY VALUES(34,'ump06');
INSERT INTO UMPIRED_BY VALUES(34,'ump13');
INSERT INTO UMPIRED_BY VALUES(35,'ump12');
INSERT INTO UMPIRED_BY VALUES(35,'ump10');
INSERT INTO UMPIRED_BY VALUES(35,'ump09');
INSERT INTO UMPIRED_BY VALUES(36,'ump08');
INSERT INTO UMPIRED_BY VALUES(36,'ump14');
INSERT INTO UMPIRED_BY VALUES(36,'ump04');
INSERT INTO UMPIRED_BY VALUES(37,'ump14');
INSERT INTO UMPIRED_BY VALUES(37,'ump06');
INSERT INTO UMPIRED_BY VALUES(37,'ump07');
INSERT INTO UMPIRED_BY VALUES(38,'ump01');
INSERT INTO UMPIRED_BY VALUES(38,'ump02');
INSERT INTO UMPIRED_BY VALUES(38,'ump03');
INSERT INTO UMPIRED_BY VALUES(39,'ump09');
INSERT INTO UMPIRED_BY VALUES(39,'ump11');
INSERT INTO UMPIRED_BY VALUES(39,'ump10');
INSERT INTO UMPIRED_BY VALUES(40,'ump03');
INSERT INTO UMPIRED_BY VALUES(40,'ump01');
INSERT INTO UMPIRED_BY VALUES(40,'ump02');
INSERT INTO UMPIRED_BY VALUES(41,'ump10');
INSERT INTO UMPIRED_BY VALUES(41,'ump12');
INSERT INTO UMPIRED_BY VALUES(41,'ump11');
INSERT INTO UMPIRED_BY VALUES(42,'ump05');
INSERT INTO UMPIRED_BY VALUES(42,'ump08');
INSERT INTO UMPIRED_BY VALUES(42,'ump14');
INSERT INTO UMPIRED_BY VALUES(43,'ump13');
INSERT INTO UMPIRED_BY VALUES(43,'ump07');
INSERT INTO UMPIRED_BY VALUES(43,'ump06');
INSERT INTO UMPIRED_BY VALUES(44,'ump04');
INSERT INTO UMPIRED_BY VALUES(44,'ump14');
INSERT INTO UMPIRED_BY VALUES(44,'ump05');
INSERT INTO UMPIRED_BY VALUES(45,'ump01');
INSERT INTO UMPIRED_BY VALUES(45,'ump02');
INSERT INTO UMPIRED_BY VALUES(45,'ump10');
INSERT INTO UMPIRED_BY VALUES(47,'ump02');
INSERT INTO UMPIRED_BY VALUES(47,'ump03');
INSERT INTO UMPIRED_BY VALUES(47,'ump04');
INSERT INTO UMPIRED_BY VALUES(46,'ump06');
INSERT INTO UMPIRED_BY VALUES(46,'ump07');
INSERT INTO UMPIRED_BY VALUES(46,'ump12');
INSERT INTO UMPIRED_BY VALUES(48,'ump02');
INSERT INTO UMPIRED_BY VALUES(48,'ump03');
INSERT INTO UMPIRED_BY VALUES(48,'ump08');


create table results
(
    result_id number primary key,
    match_id number references matches(match_id),
    winner_team varchar2(30) references team(team_id) on delete set null,  
    won_by_runs_or_wickets varchar2(50),
    man_of_the_match varchar2(30) references player(player_id) on delete set null 
);



insert into results values(1,1,'ENG','ENG won by 104 runs','ENG12');
insert into results values(2,2,'WI','WI won by 7 wickets','WI09');
insert into results values(3,3,'NZ','NZ won by 10 wickets','NZ08');
insert into results values(4,4,'AUS','AUS won by 7 wickets','AUS02');
insert into results values(5,5,'BAN','BAN won 21 runs','BAN10');
insert into results values(6,6,'PAK','PAK won by 14 runs','PAK13');
insert into results values(7,7,'SL','SL won by 34 runs','SL16');
insert into results values(8,8,'IND','IND won by 6 wickets','IND02');
insert into results values(9,9,'NZ','NZ won by 2 wickets','NZ04');
insert into results values(10,10,'AUS','AUS won by 15 runs','AUS12');
--into rinsert into results values(11,NULL,'NULL','NULL','NULL');
insert into results values(12,12,'ENG','ENG won by 106 runs','ENG02');
insert into results values(13,13,'NZ','NZ won by 7 wickets','NZ10');
insert into results values(14,14,'IND','IND won by 36 runs','IND09');
--into results values(15,NULL,'NULL','NULL','NULL')
--into results values(16,NULL,'NULL','NULL','NULL')
insert into results values(17,17,'AUS','AUS won by 41 runs','AUS02');
--into results values(18,NULL,'NULL','NULL','NULL')
insert into results values(19,19,'ENG','ENG won by 8 wickets','ENG03');
insert into results values(20,20,'AUS','AUS won by 87 runs','AUS01');
insert into results values(21,21,'SA','SA won by 9 wickets','SA08');
insert into results values(22,22,'IND','IND won by 89 runs','IND02');
insert into results values(23,23,'BAN','BAN won by 7 wickets','BAN10');
insert into results values(24,24,'ENG','ENG won by 150 runs','ENG01');
insert into results values(25,25,'NZ','NZ won 4 wickets','NZ01');
insert into results values(26,26,'AUS','AUS won by 44 runs','AUS02');
insert into results values(27,27,'SL','SL won by 20 runs','SL06');
insert into results values(28,28,'IND','IND won by 11 wickets','IND06');
insert into results values(29,29,'NZ','NZ won by 5 wickets','NZ01');
insert into results values(30,30,'PAK','PAK won by 49 runs','PAK03');
insert into results values(31,31,'BAN','BAN won by 62 runs','BAN10');
insert into results values(32,32,'AUS','AUS won by 64 runs','AUS01');
insert into results values(33,33,'PAK','PAK won by 6 wickets','PAK03');
insert into results values(34,34,'IND','IND won by 125 runs','IND01');
insert into results values(35,35,'SA','SA won 6 wickets','SA12');
insert into results values(36,36,'PAK','PAK won by 3 wickets','PAK12');
insert into results values(37,37,'AUS','AUS won by 86 runs','AUS06');
insert into results values(38,38,'ENG','ENG won by 31','ENG13');
insert into results values(39,39,'SL','SL won by 23 runs','SL02');
insert into results values(40,40,'IND','IND won by 28 runs','IND02');
insert into results values(41,41,'ENG','ENG won by 62 runs','ENG02');
insert into results values(42,42,'WI','WI won by 23 runs','WI12');
insert into results values(44,44,'IND','IND won by 7 wickets','IND02');
insert into results values(45,45,'SA','SA won 10 runs','SA01');
insert into results values(46,46,'NZ','NZ won by 18 runs','NZ08');
insert into results values(47,47,'ENG','ENG won by 8 wickets','ENG10');
insert into results values(48,48,'ENG','ENG won Super Over','ENG12');
select * from results;
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
desc team;
desc player;
desc batsman;
desc bowler;
desc umpire;
desc coach;
desc captain;
desc matches;
desc results;
desc stadium;
desc points_table;
desc umpired_by;
/*
SELECT * FROM TEAM;
select * from team;
select * from player;
select * from batsman;
select * from bowler;
select * from umpire;
select * from coach;
select * from captain;
select * from matches;
select * from results;
select * from stadium;
select * from points_table;
select * from umpired_by;
*/

SELECT count(*) FROM TEAM;
select  count(*) from team;
select  count(*) from player;
select  count(*) from batsman;
select  count(*) from bowler;
select  count(*) from umpire;
select  count(*) from coach;
select  count(*) from captain;
select  count(*) from matches;
select  count(*) from results;
select  count(*) from stadium;
select  count(*) from points_table;
select  count(*) from umpired_by;

/*
--------------------------------------INDEXES------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
/*creating indexes*/
create index run_rate_i on points_table(run_rate);
create index team_i on results(winner_team);
create index index_player on player(type_of_player);
create index match_i on matches(match_date_time);
create index umpire_i on umpired_by(u_id);


----------------------------DIFFERENT FUNCTIONS AND CLAUSES-----------------------------------
---------------------------------------------------------------------------------------------------------
--1)display the number wins,loss and draw's,points and team rank of 2 teams with least run_rate
select * from(select * from points_table order by run_rate asc)
where rownum<=2;

--2)Retrive the list of stadiums and no.of matches played in each stadium
select stadium_name,count(*)
from stadium s,matches m
where s.stadium_id=m.stadium_id
group by stadium_name
order by count(*) asc;

--3)display the list of umpires who umpired  matches IN WC in which the winning team must be INDIA
SELECT U_NAME,m.match_id,COUNT(*)
FROM UMPIRE U,UMPIRED_BY UB,matches m
where u.u_id=ub.u_id and ub.match_id=m.match_id and m.match_id in (select r.match_id from results r where r.winner_team='IND')
group by u_name,m.match_id
order by m.match_id;

--4)display list of player_name,bowler_type top 10 highest bowling speed
select * from(select p.player_name,b.bowler_type,b.highest_speed from player p,bowler b where p.player_id=b.player_id order by b.highest_speed desc)
where rownum<=10;

--5) Retrive the teams who has won more then 5 matchs
select t.team_id,count(r.winner_team)
from team t,results r
where t.team_id=r.winner_team
group by t.team_id
having count(r.winner_team)>=5
order by count(r.winner_team);

--6) Retrive the player deatails who have played more then 200 odi matches from IND
select p.player_id,p.type_of_player,p.no_of_odis,p.team_id
from player p
where p.team_id='IND'
having no_of_odis>=200
group by p.player_id,p.type_of_player,p.no_of_odis,p.team_id;


----------------------------------------------SUBQUERIES---------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
----------------------------------------CORELATED ROW SUBQUERIES-------------------------------------------------
--c1.Retrieve the details of the Batsmen who belongs to the country same as that of Virat Kohli.
select p.*,b.batsman_type,b.number_of_sixes,b.number_of_fours,b.total_runs,b.Highest_runs,b.batting_average
from player p,batsman b,team t
where p.player_id = b.player_id and 
t.team_id = p.team_id and 
exists (select *                                       
        from player p1,team t1
        where t1.team_id = p1.team_id and lower(player_name) like '%virat%' 
        and t.country_name = t1.country_name);

--c2.Retrieve the Match ids of matches umpired by Kumar Dharmasena and names of all the umpires who umpired the matches along with him.
select distinct(u.u_name)
from matches m, umpired_by ub, umpire u
where m.match_id = ub.match_id and u.u_id = ub.u_id and lower(u.u_name) not like '%dha___sena%' and 
exists (select distinct(m1.match_id)
        from umpire u1,matches m1, umpired_by ub1
        where m.match_id = m1.match_id and u1.u_id = ub1.u_id and 
        m1.match_id = ub1.match_id and lower(u1.u_name) like '%dha___sena%');

--c3.Details of the batsman whose total runs is greater than the average total runs of his own team.
select p.player_id,p.player_name,ba.batsman_type,ba.total_runs,ba.number_of_sixes,ba.number_of_fours
from batsman ba, player p
where ba.player_id = p.player_id and
ba.total_runs > (select avg(ba2.total_runs)
                from batsman ba2,player p2
                where ba2.player_id = p2.player_id and p2.team_id = p.team_id);
              
--c4.Details of the teams which have won more than 3 matches
select t.* 
from team t
where team_id in(select res.winner_team
                from results res
                group by(winner_team)
                having count(*)>4);


--c5.Details of the bowlers whose economy is greater than the average economy of his own team.
select p.player_name,bo.*
from bowler bo, player p
where bo.player_id = p.player_id and
bo.economy > (select avg(bo2.economy)
                from bowler bo2,player p2
                where bo2.player_id = p2.player_id and p2.team_id = p.team_id);
                
--------------------------------------------------------------------------------------------------------------
------------------------------------MULTIPLE ROW SUBQUERIES---------------------------------------------------            

--M1.Retrieve the details of the umpires who have umpired matches in Sophia-Gardens.
select distinct(u.u_id),u.u_name,u.u_country,u.number_of_matches,u.u_experience
from umpire u,umpired_by ub,matches m
where u.u_id=ub.u_id and ub.match_id=m.match_id and 
m.match_id in (select match_id 
                 from matches m1,stadium st1
                 where m1.stadium_id=st1.stadium_id and lower(stadium_name) like '%sophia%gardens%');

--M2.Retrieve the country whose players have the batting average greater than 90
select country_name 
from team t
where team_id in(select team_id from player p,batsman b
                where p.player_id=b.player_id and b.batting_average >90);

--M3.Retrieve the name of the captain who has won "man of the match" in atleast one match.
select cap.*
from captain cap,player p
where cap.player_id = p.player_id and p.player_id in (select res.man_of_the_match 
                                                        from results res);

--M4.Retrieve the details and results of the matches that team India played in stadium that has Batting-Pitch.
select m.match_id,team1_id,team2_id,res.winner_team,res.won_by_runs_or_wickets,p.player_name
from matches m, results res, player p
where p.player_id = res.man_of_the_match 
and (m.team1_id like 'IND' or m.team2_id like 'IND') and m.match_id = res.match_id and 
m.match_id in (select match_id from matches m
                where m.stadium_id in(select Stadium_id from stadium
                                        where lower(pitch_type) like '%batting%pitch%'));


--M5.Retrieve the names of the coach and player who coached by him who has scored total runs more than total runs of alll the players coached by Lance Klusener.
select (co.coach_id),co.coach_name,co.coach_country, p1.player_name
from coach co , player p1
where co.team_id = p1.team_id and 
p1.player_id in (select player_id
                from batsman
                where total_runs > (select max(ba.total_runs)
                                    from batsman ba,coach co,player p
                                    where co.team_id=p.team_id and p.player_id = ba.player_id
                                    and lower(co.coach_name) like '%lance%klusener%'))
order by co.coach_id;

-----------------------------------------------------------------------------------------------------------
-------------------------------------SUB QUERIES (SINGLE ROW)----------------------------------------------

--1)display the details of winning team with points 
select a.*,p.*
from team a,points_table p
where a.team_id=p.team_id and a.team_id in(select r.winner_team from results r where r.match_id=48);

--2)retrive the umpire_name,country, and his experience who has umpired highst number of matches in wc
select * from (select u_name,u_country,u_experience,count(*)
from umpire u,umpired_by ub,matches m
where u.u_id=ub.u_id and ub.match_id=m.match_id
group by u_name,u_country,u_experience 
order by count(*) desc)
where rownum<=1;

--3)retrive the details of coach of team which won by 150 runs in match
select c.coach_id,c.coach_name,t.*
from coach c,team t
where c.team_id=t.team_id and t.team_id in (select r.winner_team from results r where won_by_runs_or_wickets  like '%150%');

--4)retrive the player deatails who played highes no of ODIS
select *
from player 
where no_of_odis=(select max(no_of_odis) from player);

--5)retrive the deatils of match held on 14-jul-2019 and its results
select m.*,r.*,c.name
from matches m,results r,captain c
where m.match_id=r.match_id and c.team_id=r.winner_team and m.match_date_time like '14-JUL-19%';

------------------------------------JOIN QUERIERS------------------------------------------------------
-------------------------------------------------------------------------------------------------------
--JQ1---Retrive the entrire schedule of worldcup along with the venue in which it is taking place
select m.*,s.stadium_name
from stadium s,matches m
where s.stadium_id = m.stadium_id;

--JQ2(Retrive the entrire schedule of worldcup along with the venue in which it is taking place along with whon won the match and by how many runs)
select m.*,s.stadium_name,r.winner_team,r.won_by_runs_or_wickets
from stadium s,matches m,results r 
where s.stadium_id = m.stadium_id and r.match_id=m.match_id;

--JQ3(Retrive the entrire schedule of worldcup along with the venue in which it is taking place along with whon won the match and by how many runs and man of that match)
select m.*,s.stadium_name,r.winner_team,r.won_by_runs_or_wickets,p.player_name
from stadium s,matches m,results r ,player p
where s.stadium_id = m.stadium_id and r.match_id=m.match_id and r.man_of_the_match=p.player_id;

                                                                                                
--JQ4(retrive details of the team along with their respective coaches and captain who belong to their respective countries)
 select T.team_id,T.Country_name,C.player_id,C.Name as Captain_Name,P.type_of_player ,CO.Coach_name
 from team T,captain C,Coach CO,player P
 where T.team_id=C.Team_id and t.team_id=co.team_id and C.player_id=P.player_id ;
 

--JQ5(retrive the names of the players who are all rounders of australia along with their stats)
select p.player_name,p.type_of_player,ba.highest_runs,ba.batting_average,bo.number_of_wickets,bo.economy
from player p,batsman ba,bowler bo
where p.player_id=ba.player_id and p.player_id  like 'AUS%' and p.player_id=bo.player_id and ba.player_id=bo.player_id;
 


-------------------------------------------SETS AND LOGICAL-------------------------------------------------------------
------------------------------------------------------------------------------------------------------------- 
--Set1(retrive player name of australia and india using set operation union)
select player_id,player_name
from player
where player_id like 'IND%' 
union
select player_id,player_name
from player
where player_id like 'AUS%';

--set2(retrive names of the palyers from australia and india who have played more than 50 test matches
select player_id,player_name
from player
where player_id like 'IND%' and No_of_tests >50
union
select player_id,player_name
from player
where player_id like 'AUS%' and No_of_tests >50;

--set3(retrive names of the umpires who have umpired the matches from 1 to 15 in the worldcup and have umpired more than 75 matches in their career) using SET Theory                                                              
select u_name
from umpire 
where  number_of_matches  > 100  
intersect 
select u.u_name
from umpire u,umpired_by m 
where u.u_id=m.u_id and m.match_id between 1 and 15 ;

--Logical 1(retrive names of the umpires who have umpired the matches from 1 to 15 in the worldcup and have umpired more than 75 matches in their career)
select u.u_name
from umpire u,umpired_by m
where  u.u_id=m.u_id and  u.number_of_matches  > 100  and m.match_id between 1 and 15 ;


--Logical 2 (retrive coach name and to who do not belong to india and have experience of coaching more than 3 years) 
select coach_name,coach_country
from coach
where coach_country NOT LIKE 'India' and coach_experience > ANY (select coach_experience
                                                                from coach where coach_experience > 4)
                    
                                                                                                         
--Logical 3 ( retrive the names of the teams who are likely to qualify for the Semi-Final based on their current position in points table where minimum points require to qualify is 10) 
select p.team_id ,p.points,t.country_name
from points_table p,team t
where p.team_id=t.team_id and points > any (select points 
                                            from points_table 
                                            where points = 8  );  
                                                                                

--Logical 4 (Consider the match between INDIA and AUSTRALIA retrive the stats of bowler who is medium paced,spin and Leg-Spin  who bowls to these countries)
select p.player_name,b.economy
from player p ,bowler b
where p.player_id=b.player_id and (b.player_id like 'IND%' or b.player_id like 'AUS%')   
and (b.bowler_type like 'Medium%' or b.bowler_type like 'Leg%' or b.bowler_type like 'Sp%' ) ;
            
 
-------------------------------------------VIEWS-------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--1) create a view age_info which contains name, country and age of each player 
create view age_info as
select p.player_name,t.country_name, trunc(round((sysdate -to_date(p.dob))/365.25,5))AS age 
from player p,team t,dual
where p.team_id=t.team_id and trunc(round((sysdate -to_date(dob))/365.25,5))>35;

select * from age_info;
drop view age_info;


--2) create a view match_info which contains name, country and number of odis played where odis played is more than 150
create view match_info as
select p.player_name,t.country_name,p.no_of_odis
from player p,team t
where p.team_id=t.team_id  and p.no_of_odis>150;

select * from match_info;


--3)create a view wickets_info which contains name, country,economy,bowler typeand number of wickets taken where  number of wickets taken is more than 100
create view wickets_info as
select p.player_name,t.country_name,b.economy,b.bowler_type,b.number_of_wickets
from player p,bowler b,team t
where p.team_id=t.team_id and p.player_id=b.player_id and number_of_wickets>100;

select * from match_info;


--4)create a view runs_info which contains all infromation of batsmans with their name who have scored more than or equal to 8000 runs
create view runs_info as
select p.player_name,b.*
from player p,batsman b
where  p.player_id=b.player_id and b.total_runs>=8000;

select * from runs_info;


--5)create a view IND_results which cantains results of all matchs played by india with name of man of the match
create view IND_results as
select r.* , p.player_name
from results r, player p
where r.man_of_the_match=p.player_id and r.match_id in(select match_id from matches where team1_id ='IND' OR team2_id ='IND');

select * from IND_results;

*/

