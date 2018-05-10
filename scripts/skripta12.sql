drop database if exists 12skola;

create database 12skola;

use 12skola;

create table radionica
	(
		id int primary key not null,
		naziv varchar(50),
		brojdjece int,
		ucitelj int
	);

create table ucitelj
	(
		id int primary key not null,
		ime varchar(20),
		prezime varchar(50)
	);


create table djeca
	(
		id int primary key not null,
		ime varchar(50),
		prezime varchar(50),
		razred varchar(10),
		razrednica varchar(50)
	);



create table rod_dj
	(
		djeca int,
		radionica int
	);


alter table rod_dj add foreign key (djeca) references djeca(id);
alter table rod_dj add foreign key (radionica) references radionica(id);

alter table radionica add foreign key (ucitelj) references ucitelj(id);