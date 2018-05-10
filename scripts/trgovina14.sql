drop database if exists 14trgovina;

create database 14trgovina;

use 14trgovina;

create table osoba 
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontakt varchar(50)
	);

create table trgovina 
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		djelatnost varchar(20),
		poslodavac int
	);

create table trg_os 
	(
		trgovina int,
		osoba int
	);

alter table trgovina add foreign key (poslodavac) references osoba(id);

alter table trg_os add foreign key (trgovina) references trgovina(id);
alter table trg_os add foreign key (osoba) references osoba(id);