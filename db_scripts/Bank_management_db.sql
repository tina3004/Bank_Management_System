create database BankManagementSystem;
use BankManagementSystem;

create table signup1(form_no varchar(30) , name varchar(30), father_name varchar(30) , DOB varchar(30), gender varchar (30), email varchar(100), martial_status varchar(30), address varchar(60), city varchar(30), pincode varchar(30), state varchar(30) );
select * from signup1;

create table signup2(form_no varchar(30) primary key , religion varchar(30), category varchar(30) , income varchar(30), education varchar (30), occupation varchar(100), pan varchar(30), aadhar varchar(60), seniorCitizen varchar(30), existing_acc varchar(30));
select * from signup2;

drop table signup2;

create table signup2(form_no varchar(30) , religion varchar(30), category varchar(30) , income varchar(30), education varchar (30), occupation varchar(100), pan varchar(30), aadhar varchar(60), seniorCitizen varchar(30), existing_acc varchar(30));
select * from signup2;

create table signup3(form_no varchar(30), account_Type varchar(40), card_number varchar(30), pin varchar (40),facility varchar(200));
select * from signup3;

create table login(form_no varchar(30), card_number varchar(50) ,pin varchar(30));
select * from login;

create table bank( pin varchar(10), date varchar(50) , type varchar (30), amt_deposited varchar(10));
select * from bank;

create table user_backup1 (
    form_no varchar(30),
    name varchar(30),
    father_name varchar(30),
    DOB varchar(30),
    gender varchar(30),
    email varchar(100),
    martial_status varchar(30),
    address varchar(60),
    city varchar(30),
    pincode varchar(30),
    state varchar(30));
    

Delimiter $$
create trigger signuptrig1
after insert on signup1
for each row
begin 
	insert into user_backup1 values(new.form_no , new.name, new.father_name,new.DOB,new.gender, new.email,new.martial_status, new.address, new.city,new.pincode,new.state);
    End; $$
Delimiter ;

select * from user_backup1;


create table user_backup2( form_no varchar(30) , religion varchar(30), category varchar(30) , income varchar(30), education varchar (30), occupation varchar(100), pan varchar(30), aadhar varchar(60), seniorCitizen varchar(30), existing_acc varchar(30));
Delimiter $$
create trigger signuptrig2
after insert on signup2
for each row
begin 
	insert into user_backup2 values(new.form_no , new.religion, new.category,new.income,new.education, new.occupation,new.pan, new.aadhar, new.seniorCitizen,new.existing_acc);
    End; $$
Delimiter ;

select * from user_backup2;

create table user_backup3( form_no varchar(30), account_Type varchar(40), card_number varchar(30), pin varchar (40),facility varchar(200));
Delimiter $$
create trigger signuptrig3
after insert on signup3
for each row
begin 
	insert into user_backup3 values(new.form_no , new.account_Type, new.card_number,new.pin,new.facility);
    End; $$
Delimiter ;

select * from user_backup3;

describe bank;

