drop database if exists 16opg;

create database 16opg;

use 16opg;

create table proizvod 
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		odgovoran int,
		cijena decimal(15,2)
	);

create table djelatnik
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontakt varchar(50)
	);

create table sirovina
	(
		id int not null primary key auto_increment,
		naziv varchar(50)
	);

create table proizvod_sirovina 
	(
		sirovina int,
		proizvod int
	);

alter table proizvod add foreign key (odgovoran) references djelatnik(id);

alter table proizvod_sirovina add foreign key (sirovina) references sirovina(id);
alter table proizvod_sirovina add foreign key (proizvod) references proizvod(id);

insert into djelatnik(id, ime, prezime, kontakt) values
(null, 'Lukas', 'Scharmitzer', 'lukas.scharmitzer@gmail.com'),
(null, 'Ivan', 'Ivic', 'ivic.ivan@gmail.com');

insert into proizvod(id, naziv, odgovoran, cijena) values
(null, 'sjemenke od bundeve', 1, 25.00),
(null, 'kompot od jabuke', 1, 25.00),
(null, 'kompot od kruske', 2, 25.00),
(null, 'pita od jabuka', 2, 25.00);

insert into sirovina(id, naziv) values
(null, 'bundeve'),
(null, 'jabuke'),
(null, 'kruske');

insert into proizvod_sirovina (sirovina, proizvod) values
(1, 1),
(2, 2),
(3, 3),
(2, 4);

select * from proizvod_sirovina;




