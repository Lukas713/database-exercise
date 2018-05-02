drop database if exists 20KUD;

create database 20KUD;

use 20KUD;

create table nastup 
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		mjesto int
	);

create table mjesto
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		drzava varchar(50)
	);

create table clan
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontakt varchar(50)
	);

create table nastup_clan 
	(
		nastup int,
		clan int
	);


alter table nastup add foreign key (mjesto) references mjesto(id);

alter table nastup_clan add foreign key (nastup) references nastup(id);
alter table nastup_clan add foreign key (clan) references clan(id);

insert into mjesto (id, naziv, drzava) values
(null, 'Đakovo', 'Hrvatska'),
(null, 'Beograd', 'Srbija'),
(null, 'Rim', 'Italija');

insert into nastup (id, naziv, mjesto) values
(null, 'Đakovački vezovi', 1),
(null, 'Beogradska noć', 2),
(null, 'Rimska večer', 3);

insert into clan (id, ime, prezime, kontakt) values 
(null, 'Lukas', 'Scharmitzer', 'lukas.scharmitzer@gmail.com'),
(null, 'Lea', 'Koren', 'Lea.koren@gmail.com'),
(null, 'Mato', 'Matic', 'Mato.matic@gmail.com'),
(null, 'Ivo', 'Ivic', 'Ivic.ivo@gmail.com');

insert into nastup_clan(nastup, clan) values
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4);

select * from nastup_clan;




