drop database if exists 4vrtic;

create database 4vrtic;

use 4vrtic;

create table skupina
	(
		id int not null primary key auto_increment,
		broj_djece int,
		odgajateljica int
	);

create table odgajateljica
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		sprema int
	);

create table sprema
	(
		id int not null primary key auto_increment,
		naziv varchar(50)
	);

alter table skupina add foreign key (odgajateljica) references odgajateljica(id);

alter table odgajateljica add foreign key (sprema) references sprema(id);

insert into sprema(id, naziv) values
(null, 'srednja stručna'),
(null, 'visoko obrazovanje'),
(null, 'niža sprema');

insert into odgajateljica(id, ime, prezime, sprema) values
(null, 'Dubravka', 'Scharmitzer', 2),
(null, 'Sanja', 'Hajdukovic', 2),
(null, 'Ivanka', 'Viskovic', 1);

insert into skupina(id, broj_djece, odgajateljica) values
(null, 10, 1),
(null, 12, 2),
(null, 10, 3); 


select * from skupina;