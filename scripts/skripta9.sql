drop database if exists 9urar;

create database 9urar;

use 9urar;

create table korisnik
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontakt varchar(50)
	);

create table sat
	(
		id int not null primary key auto_increment,
		model varchar(50),
		korisnik int
	);

	create table popravak
		(
			id int not null primary key auto_increment,
			cijena decimal(18,2),
			segrt int,
			opis varchar(50)
		);

create table segrt
		(
			id int not null primary key auto_increment,
			ime varchar(50),
			prezime varchar(50)
		);

create table sat_pop
		(
			sat int,
			popravak int,
			datum datetime
		);

alter table sat add foreign key (korisnik) references korisnik(id);

alter table popravak add foreign key (segrt) references segrt(id);

alter table sat_pop add foreign key (sat) references sat(id);
alter table sat_pop add foreign key (popravak) references popravak(id);

insert into korisnik(id, ime, prezime, kontakt) values
(null, 'Lukas','Scharmitzer', 'lukas.scharmitzer@gmail.com'),
(null, 'Filip','Filipic', 'Filip.filipic@gmail.com');


insert into sat(id, model, korisnik) values
(null, 'Rolex 31400', 1),
(null, 'Festina 440', 2),
(null, 'Casio 225', 2);

insert into segrt(id, ime, prezime) values
(null, 'Mislav', 'Jerkovic');

insert into popravak(id, cijena, segrt, opis) values
(null, 500.00, 1, 'Promjena glavnog mehanizma'),
(null, 250.00, 1, 'Promjena baterije'),
(null, 100.00, null, 'Popravak igle'),
(null, 700.00, null, 'Popravak stakla');

insert into sat_pop(sat, popravak, datum) values
(1, 2, '2018-05-01'),
(2, 3, '2018-05-02'),
(3, 4, '2018-04-02');

select * from sat_pop ; 

