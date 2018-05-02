drop database if exists 18odvjetnik;

create database 18odvjetnik;

use 18odvjetnik;

create table klijent 
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontakt varchar(50)
	);

create table obrana
	(
		id int not null primary key auto_increment,
		datumRocista datetime 
	);

create table suradnik
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontakt varchar(50)
	);

create table obrana_suradnik
	(
		obrana int,
		suradnik int
	);

create table klijent_obrana
	(
		klijent int,
		obrana int
	);

alter table klijent_obrana add foreign key (klijent) references klijent(id);
alter table klijent_obrana add foreign key (obrana) references obrana(id);

alter table obrana_suradnik add foreign key (obrana) references obrana(id);
alter table obrana_suradnik add foreign key (suradnik) references suradnik(id);

insert into klijent (id, ime, prezime, kontakt) values 
(null, 'Lukas', 'Scharmitzer', 'lukas.scharmitzer@gmail.com'),
(null, 'Lea', 'Koren', 'Lea.koren@gmail.com');


insert into obrana (id, datumRocista) values
(null, '2018-06-27'),
(null, '2018-05-12');

insert into klijent_obrana(klijent, obrana) values
(1,1),
(2,2);

insert into suradnik(id, ime, prezime, kontakt) values
(null, 'Mato', 'Matic', 'Mato.matic@gmail.com'),
(null, 'Ivo', 'Ivic', 'Ivic.ivo@gmail.com');

insert into obrana_suradnik(obrana, suradnik) values
(1, 1),
(2, 1);

select * from obrana_suradnik ;