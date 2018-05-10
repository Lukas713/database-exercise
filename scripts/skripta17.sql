drop database if exists 17vodoinstalater;

create database 17vodoinstalater;

use 17vodoinstalater;

create table popravak
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		segrt int
	);

create table segrt
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontakt varchar(50)	
	);

create table kvar
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		cijena decimal(15,2)
	);

create table popravak_kvar
	(
		popravak int,
		kvar int
	);

alter table popravak add foreign key (segrt) references segrt(id);

alter table popravak_kvar add foreign key (popravak) references popravak(id);
alter table popravak_kvar add foreign key (kvar) references kvar(id);

insert into segrt (id, ime, prezime, kontakt) values
(null, 'Ivo', 'Ivic', 'Ivic.ivo@gmail.com');

insert into popravak (id, naziv, segrt) values
(null, 'Popravak glavne cijevi', 1),
(null, 'Popravak vodokotlica', null),
(null, 'Popravak odvoda', 1);

insert into kvar (id, naziv, cijena) values
(null, 'Glavna cijev', 400.00),
(null, 'Vodo kotlić', 100.00),
(null, 'Bojler', 500.00),
(null, 'Sporedna cijev', 100.00);

insert into popravak_kvar(popravak, kvar) values
(1, 1),
(2, 2),
(3, 4);

select * from popravak_kvar;