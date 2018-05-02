drop database if exists 21djecjaIgraonica;

create database 21djecjaIgraonica;

use 21djecjaIgraonica;

create table voditeljica
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontakt varchar(50)
	);

create table skupina
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		voditeljica int
	);

create table djete 
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		kontaktRoditelja varchar(50)
	);

create table skupina_djete
	(
		skupina int,
		djete int
	);

alter table skupina add foreign key (voditeljica) references voditeljica(id);

alter table skupina_djete add foreign key (skupina) references skupina(id);
alter table skupina_djete add foreign key (djete) references djete(id);

insert into voditeljica(id, ime, prezime, kontakt) values
(null, 'Jana', 'Marić', 'jana.maric@gmail.com'),
(null, 'Marija', 'Janic', 'marija.janic@gmail.com'),
(null, 'Ivana', 'Ivic', 'Ivana.ivic@gmail.com');

insert into skupina(id, naziv, voditeljica) values
(null, 'Zečići', 1),
(null, 'Leptirići', 1),
(null, 'Patuljci', 2),
(null, 'Vjeverice', 3);

insert into djete(id, ime, prezime, kontaktRoditelja) values
(null, 'Marko', 'Marić', 0913945388),
(null, 'Filip', 'Jopić', 0992213111),
(null, 'Josipa', 'Antić', 0915517903),
(null, 'Mislav', 'Jerković', 0955517903);

insert into skupina_djete(skupina, djete) values
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 1),
(4, 4);

select * from skupina_djete;

