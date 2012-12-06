insert into users values('jz570129@sju.edu', 'password','Jing', 'Zhao');
insert into users values('guojun.blue@gmail.com','password','guojun','zhang');


insert into cars values('HYB-798','Acura','TL','images/2010_acura_tl_sedan.jpg','23761896401648163','sedan',TO_DATE('12/03/2009','DD/MM/YYYY'));
insert into cars values('BUV-982','Audi','Q7','images/2009_audi_q7.jpg','23761896401648163','suv',TO_DATE('01/03/2008','DD/MM/YYYY'));
insert into cars values('TCH-082','BMW','m5','images/2006_bmw_m5_sedan','23761896401648163','sedan',TO_DATE('12/04/2006','DD/MM/YYYY'));
insert into cars values('UBM-666','Ford','focus','images/2002_ford_focus_sedan.jpg','23761896401648163','sedan',TO_DATE('20/07/2002','DD/MM/YYYY'));
insert into cars values('IFC-888','Lexus','ES','images/2003_lexus_es-300_sedan.jpg','23761896401648163','sedan',TO_DATE('12/09/2003','DD/MM/YYYY'));
insert into cars values('XYB-845','Toyota','rav4','images/2001_toyota_rav4.jpg','23761896401648163','sedan',TO_DATE('12/10/2001','DD/MM/YYYY'));

insert into user_car values('guojun.blue@gmail.com','TCH-082');
insert into user_car values('guojun.blue@gmail.com','IFC-888');
