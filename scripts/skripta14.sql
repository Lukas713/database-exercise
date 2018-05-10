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
		zaposleni int,
		poslodavac int
	);

create table trg_os 
	(
		trgovina int,
		osoba int
	);

alter table trgovina add foreign key (poslodavac) references osoba(id);
alter table trgovina add foreign key (zaposleni) references osoba(id);

alter table trg_os add foreign key (trgovina) references trgovina(id);
alter table trg_os add foreign key (osoba) references osoba(id);

insert into osoba (id, ime, prezime, kontakt) values
(null, 'Lukas', 'Scharmitzer', 'lukas.scharmitzer@gmail.com'),
(null, 'Lea', 'Koren', 'Lea.koren@gmail.com'),
(null, 'Mato', 'Matic', 'Mato.matic@gmail.com'),
(null, 'Ivo', 'Ivic', 'Ivic.ivo@gmail.com');

insert into trgovina (id, naziv, zaposleni, poslodavac) values
(null, 'Gizmo', 3, 1),
(null, 'Gizmo', 4, 1),
(null, 'Gricko', 2, 1),
(null, 'Gricko', 4, 1),
(null, 'Fenix', 3, 1),
(null, 'Sikto', 2, 1);

select * from osoba;
select * from trgovina;

