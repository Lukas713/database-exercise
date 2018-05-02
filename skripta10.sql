drop database if exists 10ordinacija;

create database 10ordinacija;

use 10ordinacija;

create table doktor
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontakt varchar(50)
	);

create table pacijent
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontakt varchar(50)
	);

create table sestra
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontakt varchar(50)
	);

create table lijecenje
	(
		doktor int,
		sestra int,
		pacijent int,
		opis varchar(50)
	);

alter table lijecenje add foreign key (doktor) references doktor(id);
alter table lijecenje add foreign key (sestra) references sestra(id);
alter table lijecenje add foreign key (pacijent) references pacijent(id);

insert into doktor(id, ime, prezime, kontakt) values
(null, 'Lukas', 'Scharmitzer', 0915517903),
(null, 'Ivan', 'Ivic', 0992213113);

insert into pacijent(id, ime, prezime, kontakt) values
(null, 'Filip', 'Filipic', 098765434),
(null, 'Marko', 'Maric', 087654312);

insert into sestra(id, ime, prezime, kontakt) values
(null, 'Ivana', 'Ivanic', 09999873212),
(null, 'Ana', 'Vikić', 0922713362);

insert into lijecenje(doktor, sestra, pacijent, opis) values
(1, 1, 1, 'Tumor na mozgu'),
(1, 2, 1, 'Psorijaza'),
(1, 2, 1, 'Vađenje krajnika'),
(1, 1, 2, 'Upala slijepog crijeva');



