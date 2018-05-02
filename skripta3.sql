drop database if exists 3udruga;

create database 3udruga;

use 3udruga;

create table osoba 
	(
		id int not null primary key auto_increment,
		ime varchar(50),
		prezime varchar(50),
		kontakt varchar(50)
	);

create table sticenik
	(
		id int not null primary key auto_increment,
		pasmina varchar(20),
		ime varchar(20),
		prostor int
	);

create table prostor
	(
		id int not null primary key auto_increment
	);

create table os_sti 
	(
		osoba int,
		sticenik int
	);

alter table os_sti add foreign key (osoba) references osoba(id);
alter table os_sti add foreign key (sticenik) references sticenik(id);

alter table sticenik add foreign key (prostor) references prostor(id);

insert into osoba (id, ime, prezime, kontakt) values
(null, 'Ivana', 'Ivanic', 098765432),
(null, 'Petra', 'Peric', 098987632),
(null, 'Marko', 'Filipic', 098726152),
(null, 'Filip', 'Peric', 912384123);

insert into prostor (id) values
(null),
(null),
(null); 

insert into sticenik(id, pasmina, ime, prostor) values
(null, 'Pit bull', 'Remi', 1),
(null, 'Staford', 'Ray', 2),
(null, 'Doga', 'Linx', 3);

insert into os_sti (osoba, sticenik) values
(1, 2),
(3, 1),
(3, 3);

select * from os_sti; 
