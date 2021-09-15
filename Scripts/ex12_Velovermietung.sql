DROP SCHEMA IF EXISTS ex12;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;

CREATE SCHEMA `ex12` DEFAULT CHARACTER SET utf8 ;
USE ex12;

CREATE TABLE ex12.fahrradtyp(
  `id` INTEGER NOT NULL,
  `bezeichnung`varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`));
 
 insert into fahrradtyp(id,bezeichnung)
 values (1,"Mountainbike"),
 		(2,"Trekkingrad"),
 		(3, "Rennrad"),
 		(4,"E-Bike");


CREATE TABLE ex12.kunde(
  `id` INTEGER NOT NULL,
  `vorname` varchar(100) DEFAULT NULL,
  `nachname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`));
 
  
 insert into kunde(id,vorname,nachname)
 values (1,"Max","Maier"),
 		(2,"Azmi","Kilicaslan");


CREATE TABLE ex12.fahrrad (
`id` INTEGER NOT NULL,
  `Kennung` varchar(100) DEFAULT NULL,
    `fahrradtyp_id` INTEGER NOT NULL,
  PRIMARY KEY (`id`),
  foreign key (fahrradtyp_ID) references fahrradtyp(id));
 
 insert into fahrrad(id,kennung,fahrradtyp_id)
 values (1,"Cross#7",1),
 		(2,"Mark#2",2);
 	
 	
 	CREATE TABLE ex12.mietvertrag(
  `id` INTEGER NOT NULL,
  `abschlussdatum` date,
  `mietbeginn` date,
  `mietdauer` INTEGER NOT NULL,
   `kunde_id` INTEGER NOT NULL,
  PRIMARY KEY (`id`),
  foreign key (kunde_id) references kunde(id));
 
 insert into mietvertrag(id,abschlussdatum,mietbeginn,mietdauer,kunde_id)
 values (1,"2020-08-11","2020-08-12",3,1),
 		(2,"2020-08-13","2020-08-15",5,2);

 

CREATE TABLE ex12.mietvertrag_vermietet_fahrrad (
`mietvertrag_id` INTEGER NOT NULL,
`fahrrad_id` INTEGER NOT NULL,
 PRIMARY KEY (`mietvertrag_id`, fahrrad_id),
 foreign key (mietvertrag_id) references mietvertrag(id),
 foreign key (fahrrad_id) references fahrrad(id));


 insert into mietvertrag_vermietet_fahrrad(mietvertrag_id,fahrrad_id)
 values (1,1),
 		(1,2),
        (2,2);


create or replace view ex12.mietvertrag
select mietvertrag.id, abschlussdatum, kunde_id, kunde.id, vorname, nachname
from mietvertrag inner join kunde;












