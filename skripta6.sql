drop database if exists 6samostan;

create database 6samostan;

use 6samostan;

create table svecenici
	(
		id int not null primary key auto_increment,
		ime varchar(50) not null,
		prezime varchar(50) not null,
		nadredeni int
	);

create table posao
	(
		id int not null primary key auto_increment,
		opis varchar(255)
	);

create table sve_po
	(
		svecenici int,
		posao int
	);

alter table sve_po add foreign key (svecenici) references svecenici(id);
alter table sve_po add foreign key (posao) references posao(id);

alter table svecenici add foreign key (nadredeni) references svecenici(id);

insert into svecenici (id, ime, prezime, nadredeni) values
(null, 'Mato', 'Matic', null),
(null, 'Pero', 'Peric', 1),
(null, 'Ivo', 'Ivic', 1),
(null, 'Ante', 'Antic', 3),
(null, 'Ivica', 'Josipović', 3);

insert into posao(id, opis) values
(null, 'Čišćenje kancelarije'),
(null, 'Pravljenje hostije'),
(null, 'Pranje kaleža');

insert into sve_po(svecenici, posao) values
(4, 1),
(5, 2),
(3, 3);

select * from sve_po ; 
