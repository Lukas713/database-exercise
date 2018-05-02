drop database if exists 5muzej;

create database 5muzej;

use 5muzej;

create table izlozba
	(
		id int not null primary key auto_increment,
		naziv varchar(50),
		kustos int,
		sponzor int
	);

create table djela
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		izlozba int
	);

create table kustos
	(
		id int not null primary key auto_increment,
		ime varchar(20),
		prezime varchar(20)
	);

create table sponzor
	(
		id int not null primary key auto_increment,
		ime varchar(50)
	);

alter table izlozba add foreign key (kustos) references kustos(id);
alter table izlozba add foreign key (sponzor) references sponzor(id);

alter table djela add foreign key (izlozba) references izlozba(id);

insert into kustos(id, ime, prezime) values 
(null, 'Mislav', 'Jerkovic'),
(null, 'Vedran', 'Vedrić'),
(null, 'Ante', 'Antić');

insert into sponzor(id, ime) values
(null, 'Mlaco'),
(null, 'Pan-Pek'),
(null, 'Filina');

insert into izlozba(id, naziv, kustos, sponzor) values
(null, 'Ljeto', 1, 1),
(null, 'Projeće', 2, 1),
(null, 'Jesen', 3, 3);

insert into djela(id, ime, izlozba) values
(null, 'Pad lista', 3),
(null, 'Sunce', 1),
(null, 'Plodovi zemlje', 2);

select * from izlozba;
select * from djela;  