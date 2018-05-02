drop database if exists 15restoran;

create database 15restoran;

use 15restoran;

create table kategorija 
	(
		id int not null primary key auto_increment,
		naziv varchar(20) not null
	);

create table jelo
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		cijena decimal(15,2),
		kategorija int
	);

create table napitak
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		cijena decimal(15,2)
	);

create table jelo_napitak
	(
		jelo int,
		napitak int
	);

alter table jelo add foreign key (kategorija) references kategorija(id);

alter table jelo_napitak add foreign key (napitak) references napitak(id);
alter table jelo_napitak add foreign key (jelo) references jelo(id);


insert into kategorija (id, naziv) values
(null, 'Morska hrana'),
(null, 'Brza hrana'),
(null, 'Rostilj');


insert into jelo (id, naziv, cijena, kategorija) values
(null, 'Crni rizoto sa sipom', 50.00, 1),
(null, 'Salata od hobotnice', 75.00, 1),
(null, 'Pizza cappricosa', 40.00, 2),
(null, 'Hamburger', 25.00, 2),
(null, 'Cordon blue', 35.00, 3);

insert into napitak (id, naziv, cijena) values
(null, 'Mineralna voda', 20.00),
(null, 'Coca-Cola', 10.00),
(null, 'Bijelo vino', 30.00),
(null, 'Cedevita', 8.00);

insert into jelo_napitak(jelo, napitak) values
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
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4);





SELECT * FROM jelo_napitak;






