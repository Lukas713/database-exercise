drop database if exists 11fakultet;

create database 11fakultet;

use 11fakultet;

create table student
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		indeks varchar(10)
	);

create table rok
	(
		id int not null primary key auto_increment,
		datum datetime,
		nazivKolegija varchar(50)
	);

create table st_rok
	(
		student int,
		rok int
	);

alter table st_rok add foreign key (rok) references rok(id);
alter table st_rok add foreign key (student) references student(id);

insert into student(id, ime, prezime, indeks) values
(null, 'Lukas', 'Scharmitzer', 10614),
(null, 'Marko', 'Lukač', 19761),
(null, 'Jelena', 'Filipovic', 234567);

insert into rok(id, datum, nazivKolegija) values
(null, '2018-07-02', 'Uvod u opću fiziku'),
(null, '2018-07-03', 'Programiranje za internet'),
(null, '2008-07-04', 'Objektno orjentirano programiranje'),
(null, '2008-07-05', 'Korisnička sučelja');

insert into st_rok(student, rok) values
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 4),
(3, 4);

select * from st_rok; 
