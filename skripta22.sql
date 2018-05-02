drop database if exists 22citaonica;

create database 22citaonica;

use 22citaonica;

create table citatelj 
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontakt varchar(50),
		vlasnik int
	);

create table vlasnik 
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontakt varchar(50)
	);

create table knjiga
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		vlasnik int
	);

create table citatelj_knjiga
	(
		citatelj int,
		knjiga int
	);

alter table citatelj add foreign key (vlasnik) references vlasnik(id);

alter table knjiga add foreign key (vlasnik) references vlasnik(id);

alter table citatelj_knjiga add foreign key (citatelj) references citatelj(id);
alter table citatelj_knjiga add foreign key (knjiga) references knjiga(id);

insert into vlasnik(id, ime, prezime, kontakt) values
(null, 'Lukas', 'Scharmitzer', 'lukas.scharmitzer@gmail.com'),
(null, 'Ivan', 'Ivic', 'ivan.ivic@gmail.com'),
(null, 'Petra', 'Peric', 'petra.peric@gmail.com');

insert into citatelj (id, ime, prezime, kontakt, vlasnik) values
(null, 'Lukas', 'Scharmitzer', 'lukas.scharmitzer@gmail.com', 1),
(null, 'Lea', 'Koren', 'Lea.koren@gmail.com', null),
(null, 'Ivan', 'Ivic', 'ivan.ivic@gmail.com', 2 ),
(null, 'Marko', 'Maric', 'marko.maric@gmail.com', null);



insert into knjiga(id, naziv, vlasnik) values
(null, 'Ljubav', 1),
(null, 'Zloba', 1),
(null, 'Idi pa vidi', 3),
(null, 'Ilijada', 2);


insert into citatelj_knjiga (citatelj, knjiga) values
(1, 3),
(1, 4),
(2, 2),
(2, 4),
(2, 1),
(2, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(4, 4);

select * from citatelj_knjiga ; 