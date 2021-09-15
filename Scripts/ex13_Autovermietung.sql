DROP SCHEMA IF EXISTS ex13;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;

CREATE SCHEMA `ex13` DEFAULT CHARACTER SET utf8 ;
USE ex13;


CREATE TABLE ex13.mitarbeiter(
  `id` INTEGER NOT NULL,
  `pnr` varchar(100) DEFAULT NULL,
  `vorname` varchar(100) DEFAULT NULL,
   `nachname` varchar(100) DEFAULT NULL);

INSERT INTO mitarbeiter (id,pnr,vorname,nachname)
VALUES
(1, 11, 'Max','Mueller'),
(2, 12, 'Azmi','Kilicaslan'),
(3, 13, 'Stefan','Kocak');


CREATE TABLE ex13.reservierung(
  `id` INTEGER NOT NULL,
  `zweck` varchar(100) DEFAULT NULL,
  `beginn` date,
   `ende` date,
   mitarbeiter_id integer not null,
   fahrzeug_id integer not null,
   primary key (id),
   foreign key(mitarbeiter_id) references mitarbeiter(id),
   foreign key(fahrzeug_id) references fahrzeug(id));
  
  iNSERT INTO reservierung (id,zweck,beginn,ende,mitarbeiter_id,fahrzeug_id) 
  VALUES
(1,'Kongress','2021-02-08','2021-02-12',3,12), 
(2,'Kongress','2021-03-09','2021-03-09',4,6), 
(3,'Reise','2021-05-09','2021-05-10',10,13);


CREATE TABLE ex13.fahrzeug(
  `id` INTEGER NOT NULL,
  `kennzeichen` varchar(100) DEFAULT NULL,
  `anschaffungsdatum` date,
   `anschaffungskosten` decimal(10,2),
   `fahrzeugmodell_id` INTEGER NOT NULL,
  primary key (id),
 foreign key (fahrzeugmodell_id) references fahrzeugmodell(id));

insert into fahrzeug(id,kennzeichen,anschaffungsdatum,anschaffungskosten,fahrzeugmodell_id)
values 
(1,'HN-A-1783','2014-11-10','20590.00',1),
(2,'HN-AB-45','2013-03-27','24500.00',2),
(3,'HN-AR-12','2013-02-08','27200.00',3),
(4,'HN-D-1473','2013-03-21','26300.00',4),
(5,'HN-UF-456','2014-04-17','19890.00',5),
(6,'TBB-A-678','2015-04-17','25650.00',6),
(7,'TBB-AB-123','2014-03-28','28600.00',7);



CREATE TABLE ex13.fahrzeugmodell(
  `id` INTEGER NOT NULL,
  `hersteller` varchar(100) DEFAULT NULL,
  `modell` varchar(100) DEFAULT NULL,
   `kraftstoff` varchar(100) DEFAULT NULL,
   `verbrauch` decimal(3,1),
  primary key (id));
 
insert into fahrzeugmodell(id,hersteller,modell,kraftstoff,verbrauch)
values  
 (1,'Mercedes','160 CDI','Diesel',5.00),
(2,'BMW','320i','Super-Bleifrei',7.30),
(3,'BMW','320i','Super-Bleifrei',7.30),
(4,'BMW','320i','Super-Bleifrei',7.30),
 (5,'Mercedes','160 CDI','Diesel',5.00),
(6,'Mercedes','C200 CDI','Diesel',6.10),
(7,'Mercedes','C200 CDI','Diesel',6.10);


CREATE TABLE ex13.instandhaltung(
  `id` INTEGER NOT NULL,
  `datum` date,
  `kmstand` integer,
   `kosten` decimal(10,2),
   `beschreibung` varchar(100),
   `fahrzeug_id` INTEGER NOT NULL,
  primary key (id),
 foreign key (fahrzeug_id) references fahrzeug(id));

INSERT INTO instandhaltung(id,datum,kmstand,kosten,beschreibung,fahrzeug_id) 
VALUES
(1,'2021-02-08',100000,'400','Service',7), 
(2,'2021-08-12',350000,'670','Service',5), 
(3,'2021-08-24',200000,'450','Service',8);
 

CREATE TABLE ex13.mitarbeiter_faehrt_mit_reservierung(
  `mitarbeiter_id` INTEGER NOT NULL,
  `reservierung_id` INTEGER NOT NULL,
  primary key (mitarbeiter_id,reservierung_id),
 foreign key (mitarbeiter_id) references mitarbeiter(id),
foreign key (reservierung_id) references reservierung(id));

CREATE TABLE versicherungsgesellschaft (
  `id` int(11) NOT NULL,
  `firma` varchar(30) DEFAULT NULL,
  `strasse` varchar(30) DEFAULT NULL,
  `hausnr` varchar(5) DEFAULT NULL,
  `plz` varchar(5) DEFAULT NULL,
  `ort` varchar(30) DEFAULT NULL,
  `telefon` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`));

INSERT INTO versicherungsgesellschaft (id,firma,strasse,hausnr,plz,ort,telefon) VALUES

 (1,'AXA Versicherung','Hammerstrasse','1','4058','Basel','06163389675'),
 (2,'Zurich Verischerung','Paradeplatz','2','5000','Zürich','061438796');

CREATE TABLE versicherungsvertrag (
  `id` integer(11) NOT NULL,
  `versnr` varchar(8) DEFAULT NULL,
  `beitrag` decimal(9,2) DEFAULT NULL,
  `kasko` varchar(30) DEFAULT NULL,
  `gesellschaft_id` integer(11) NOT NULL,
  `fahrzeug_id` integer(11) NOT NULL,
  PRIMARY KEY (id),
  KEY `fahrzeug_id` (`fahrzeug_id`),
  KEY `gesellschaft_id (`gesellschaft_id`),
  CONSTRAINT versicherungsvertrag_1 FOREIGN KEY (`fahrzeug_id`) REFERENCES fahrzeug (id),
  CONSTRAINT versicherungsvertrag_2 FOREIGN KEY (`gesellschaft_id`) REFERENCES versicherungsgesellschaft (id));

insert into versicherungsvertrag (id,versnr,beitrag,kasko,gesellschaft_id,fahrzeug_id) VALUES 
 (1,'22','150','Teilkasko',2,2),
 (2,'33','150','Vollkasko',1,3),
 (3,'44','400','Vollkasko',1,4),

create or replace view ex12.reservierung 
SELECT Beginn, Ende, PersNr, Nachname
FROM Reservierung INNER JOIN Mitarbeiter ON Mitarbeiter_ID = Mitarbeiter.ID;





