drop database if exists 19nakladnik;

create database 19nakladnik;

use 19nakladnik;

create table mjesto
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		potanskiBroj varchar(20)
	);

create table nakladnik
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		mjesto int
	);

create table djelo
	(
		id int not null primary key auto_increment,
		naziv varchar(50)
	);

create table nakladnik_djelo
	(
		nakladnik int,
		djelo int
	);

alter table nakladnik add foreign key (mjesto) references mjesto(id);

alter table nakladnik_djelo add foreign key (nakladnik) references nakladnik(id);
alter table nakladnik_djelo add foreign key (djelo) references djelo(id);

insert into mjesto (id, naziv, potanskiBroj) values
(null, 'Đakovo', 31400),
(null, 'Zagreb', 10000);

insert into nakladnik(id, naziv, mjesto) values
(null, 'Ljevak', 2),
(null, 'Algoritam', 1),
(null, 'PVA', 1);

insert into djela(id, naziv) values
(null,'Idi pa vidi'),
(null,'Ilijada'),
(null,'Starac i more');

insert into nakladnik_djelo(nakladnik, djelo) values
(1, 1),
(2, 2),
(2, 3);

select * from nakladnik_djelo;



