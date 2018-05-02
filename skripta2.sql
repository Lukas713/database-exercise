drop database if exists 2salonzauljep;

create database 2salonzauljep;

use 2salonzauljep;

create table djelatnik
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		ziroracun varchar(50)
	);

create table korisnik
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50)
	);

create table usluga
	(
		djelatnik int,
		korisnik int,
		opis varchar(50),
		cijena decimal(15,2)
	);

alter table usluga add foreign key (djelatnik) references djelatnik(id);
alter table usluga add foreign key (korisnik) references korisnik(id);

insert into djelatnik(id, ime, prezime, ziroracun) values
(null, 'Ivana', 'Ivanic', 12345678910),
(null, 'Petra', 'Peric', 10987654321);

insert into korisnik(id) values
(null),
(null),
(null);


insert into usluga(djelatnik, korisnik, opis, cijena) values
(1, 1, 'Solarij', 70.00),
(1, 1, 'Masaža lica', 35.00),
(2, 2, 'Masaža nogu', 50.00),
(2, 3, 'Masaža leđa', 50.00),
(2, 2, 'Solarij', 40.00);

select * from usluga ; 