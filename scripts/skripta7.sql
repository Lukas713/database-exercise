drop database if exists 7taxi;

create database 7taxi;

use 7taxi;

create table vozilo
	(
		id int not null primary key auto_increment,
		broj_sasije varchar(50)
	);

create table vozac 
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		ziro_racun varchar(50),
		vozilo int,
		kontakt varchar(50)
	);

create table putnik
	(
		id int not null primary key auto_increment,
		broj int
	);

create table voznja
	(
		vozac int,
		putnik int,
		km decimal(15,2),
		cijena decimal(15,2)
	);

alter table vozac add foreign key (vozilo) references vozilo(id);

alter table voznja add foreign key (vozac) references vozac(id);
alter table voznja add foreign key (putnik) references putnik(id);

insert into vozilo(id, broj_sasije) values
(null, 31234566),
(null, 56784235),
(null, 12345678);

insert into vozac(id, ime, prezime, ziro_racun, vozilo, kontakt) values
(null, 'Ivan', 'Ivic', '29857473950603', 1, 0913945388),
(null, 'Lukas', 'Scharmitzer', '256789245123', 2, 0915517903),
(null, 'Ante', 'Perić', '0597658693', 3, 0974185667);

insert into putnik(id, broj) values
(null, 1),
(null, 2),
(null, 3),
(null, 4),
(null, 5);

insert into voznja(vozac, putnik, km, cijena) values
(1, 2, 5.5, 25.00),
(3, 1, 7.00, 35.00),
(3, 1, 3.65, 20.00);

select * from voznja; 

