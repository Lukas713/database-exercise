drop database if exists 13skola;

create database 13skola;

use 13skola;

create table razred
	(
		id int not null primary key auto_increment,
		naziv varchar(10),
		brojucenika int
	);

create table ucenik
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontaktRoditelja varchar(50),
		razred int
	);


create table profesor
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontakt varchar(20)
	);


create table raz_prof 
	(
		razred int,
		profesor int
	);


alter table ucenik add foreign key (razred) references razred(id);

alter table raz_prof add foreign key (razred) references razred(id);
alter table raz_prof add foreign key (profesor) references profesor(id);

insert into profesor(id, ime, prezime, kontakt) values
(null, 'Tihomir', 'Troha', 091827364),
(null, 'Ante', 'Andabak', 09876543),
(null, 'Ivan', 'Ereš', 08762123);

insert into razred(id, naziv, brojucenika) values
(null, '1a', 5),
(null, '1b', 10),
(null, '1c', 8),
(null, '1d', 7);

insert into ucenik(id, ime, prezime, kontaktRoditelja, razred) values
(null, 'Lukas', 'Scharmiter', 098765432, 1),
(null, 'Marija', 'Penava', 0913945388, 1),
(null, 'Dora', 'Vinković', 0912345613, 2),
(null, 'Branimir', 'Kuhar', 098543789, 2),
(null, 'Ivana', 'Zirn', 0981239876, 3),
(null, 'Ivan', 'Sastić', 098755555, 4);

insert into raz_prof(razred, profesor) values
(1, 1),
(1, 2),
(2, 3),
(2, 1),
(3, 2),
(3, 1),
(4, 2),
(4, 1),
(4, 3);

select * from raz_prof; 





