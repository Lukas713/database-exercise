drop database if exists 8postolar;

create database 8postolar;

use 8postolar;

create table korisnik
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50)
	);

create table obuca 
	(
		id int not null primary key auto_increment,
		korisnik int
	);

create table popravak
	(
		id int not null primary key auto_increment,
		naziv varchar(20),
		cijena decimal(18,2),
		segrt int
	);

create table segrt
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontakt varchar(50)
	);

create table ob_pop
	(
		obuca int,
		popravak int,
		datum datetime
	); 

alter table obuca add foreign key (korisnik) references korisnik(id);

alter table popravak add foreign key (segrt) references segrt(id);

alter table ob_pop add foreign key (obuca) references obuca(id);
alter table ob_pop add foreign key (popravak) references popravak(id);

insert into korisnik(id, ime, prezime) values
(null, 'Lukas', 'Scharmitzer'),
(null, 'Marko', 'Ivic'),
(null, 'Ante', 'Petrov');

insert into obuca(id, korisnik) values
(null, 1),
(null, 2),
(null, 3),
(null, 1);


insert into segrt(id, ime, prezime, kontakt) values
(null, 'Ivan', 'Ivanovic', 0932124567);

insert into popravak(id, naziv, cijena, segrt) values
(null, 'Popravak džona', 50.00, 1),
(null, 'Popravak jezika', 35.00, null),
(null, 'Lijepljenje zakrpe', 20.00, null);


insert into ob_pop(obuca, popravak, datum) values
(1, 2, '2018-05-02'),
(2, 1, '2018-02-02'),
(3, 3, '2018-05-01'),
(4, 1, '2018-05-05');

select * from ob_pop; 

