drop database if exists 1frizsalon;

create database 1frizsalon;

use 1frizsalon;

create table djelatnik
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		ziroracun varchar(20)
	);

create table korisnik
	(
		id int not null primary key auto_increment
	);

create table usluga 
	(
		djelatnik int,
		korisnik int,
		naziv varchar(50),
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


insert into usluga(djelatnik, korisnik, naziv, cijena) values
(1, 1, 'Pramenovi', 70.00),
(1, 1, 'Skraćivanje vrhova', 35.00),
(2, 2, 'Farbanje i pranje', 50.00),
(2, 3, 'Farbane i pranje', 50.00),
(2, 2, 'Pramenovi', 40.00);

select * from usluga ; 


