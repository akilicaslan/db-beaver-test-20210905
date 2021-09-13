DROP SCHEMA IF EXISTS ex15;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;

CREATE SCHEMA `ex15` DEFAULT CHARACTER SET utf8 ;
USE ex15;

CREATE TABLE ex15.person(
  `pnr` INTEGER NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `vorname` varchar(100) DEFAULT NULL,
  `fnr` INTEGER NOT NULL,
  `lohnstufe` INTEGER NOT NULL,
 constraint personen_pk PRIMARY KEY (`pnr`),
 constraint kurse_fk foreign KEY (`pnr`) references ex15.kursthemen(pnr)
  
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;


INSERT INTO person(pnr,name,vorname,fnr,lohnstufe)
VALUES
(100001, 'Steffen', 'Felix', 3, 5),
(232452, 'Müller', 'Hugo', 1, 1),
(334643, 'Meier', 'Hans', 2, 5),
(567231, 'Schmid', 'Beat', 3, 4),
(345727, 'Steiner', 'René', 5, 5),
(233456, 'Müller', 'Franz', 4, 7),
(132442, 'Osswald', 'Kurt', 1, 2),
(345678, 'Metzger', 'Paul', 1, 1),
(344556, 'Scherrer', 'Daniel', 2, 4),
(845622, 'Huber', 'Walter', 4, 8),
(625342, 'Gerber', 'Roland', 3, 4);


CREATE TABLE ex15.funktion(
  `fnr` INTEGER NOT NULL,
  `funktion` varchar(100) DEFAULT NULL,
constraint funktionen_fg primary key (fnr)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

INSERT INTO funktion (fnr,funktion)
VALUES
(1, 'Vorarbeiter'),
(2, 'Meister'),
(3, 'Chemiker'),
(4, 'Bereichsleiter'),
(5, 'Informatiker');


CREATE TABLE ex15.kurs(
  `knr` INTEGER NOT NULL,
  `kursbezeichnung` varchar(100) DEFAULT NULL,
  `kursort` varchar(100) DEFAULT NULL,
  `ktnr` INTEGER NOT NULL,
  constraint kurs_pk PRIMARY KEY (`knr`),
 constraint kurse_fk foreign KEY (`pnr`) references ex15.kursthemen(ktnr)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

insert into kurs(knr,kursbezeichnung ,kursort,ktnr)
values(123 , 'Arbeitshygiene', '2510.EG.25',1),
(562, 'Führen einer Gruppe', '1010.4.08',2), 
(234, 'Präsentationstechnik', '1010.4.08',4), 
(341, 'Textverarbeitung', '2015.1.10',3),
(245 , 'Kostenschätzung', '1010.2.05',5),
(412 , 'Tabellenkalkulation', '2015.1.10',3),
(454 , 'Elektrostatische Aufladung', '4001.EG.20',1),
(255 , 'Datenbanken', '2510.2.05',3),
(455 , 'Terminplanung', '1010.4.08',5),
(345 , 'Schwierige Gespräche führen', '1010.2.05',2),
(283 , 'Abfallentsorgung', '4001.EG.20',1),
(776 , 'Wartung von Anlagen', '1010.2.05',4); 



CREATE TABLE ex15.kursthemen(
  `ktnr` INTEGER NOT NULL,
  `themengebiet` varchar(100) DEFAULT NULL,
  constraint kursthemen_pk PRIMARY KEY (`ktn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;


insert into kursthemen(ktnr,themengebiet) values
(1 , 'Sicherheit und Umweltschutz'),
(2, 'Führung und Zusammenarbeit'), 
(3, 'PC-Kurse'), 
(4, 'Arbeitstechnik'),
(5, 'Projekte'),
(6, 'Schulung') ;




CREATE TABLE ex15.kursleiter(
  `klnr` INTEGER NOT NULL,
   `s` varchar(1) default NULL,
  `pnr` INTEGER NOT NULL,
  `name` varchar(20) default NULL,
  `vorname` varchar(15) default NULL,
  `firma` varchar(100) default NULL,
  `KErf` varchar(100) DEFAULT NULL,
 Constraint kursleiter_pk PRIMARY KEY (`klnr`),
 Constraint kursleiter_fk foreign KEY (`pnr`) references ex15.personen(pnr)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

INSERT INTO  ex15.kursleiter(klnr,s,pnr,datum) VALUES
(1,'I',345727,'Steiner','Rene',null,3),
(3,'I',232452,'Müller','Hugo',null,1),
(4,'I',233456,'Müller','Franz',null,4),
(2,'E',null,'Suter','Rolf','GigaSoft',null),
(5,'E',null,'Vogt','Peter','Quasar',null),
(6,'I',845622,'Huber','Walter',null,3),
(7,'E',null,'Krieg','Stefan','Funkenflug',null),
(8,'E',null,'Freundlich','Andreas','Harmonie',null);




CREATE TABLE ex15.externe_kursleiter(
  `klnr` INTEGER NOT NULL,
  `ename` varchar(100) DEFAULT NULL,
  `evorname` varchar(100) DEFAULT NULL,
  `firma` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`klnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;




CREATE TABLE ex15.interne_kursleiter(
  `klnr` INTEGER NOT NULL,
  `pnr` INTEGER DEFAULT NULL,
  `kurserfahrung` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`klnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;




CREATE TABLE ex15.kursbesuche(
  `pnr` INTEGER DEFAULT NULL,
  `knr` INTEGER DEFAULT NULL,
  `klnr` INTEGER DEFAULT NULL,
  `datum` date DEFAULT NULL,
  Constraint kursbesuche_pk PRIMARY KEY (`pnr`,`knr`,`klnr`),
 Constraint kursbesuche_fk_person foreign KEY (`pnr`) references ex15.personen(pnr),
 Constraint kursbesuche_fk_kurse foreign KEY (`knr`) references ex15.kurse(knr),
  Constraint kursbesuche_fk_kurseleiter foreign KEY (`klnr`) references ex15.kursleiter(klnr)
 
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

INSERT INTO  ex15.kursbesuche(pnr,knr,klnr,datum) VALUES
(100001,245,4,'2008-06-23'),
(100001,412,2,'2006-08-06'),
(100001,454,7,'2007-01-12'),
(345678,123,6,'2007-02-03'),
(345678,776,3,'2008-04-15'),
(344556,412,2,'2007-06-10'),
(334643,412,2,'2006-08-07'),
(625342,255,1,'2008-07-21'),
(845622,345,8,'2007-11-11'),
(100001,255,1,'2008-07-21'),
(232452,454,7,'2007-09-17'),
(132442,454,7,'2007-09-17'),
(345678,454,7,'2007-09-17'),
(345678,123,4,'2008-08-25');



CREATE TABLE ex15.kurskontrolle(
  `fnr` INTEGER DEFAULT NULL,
  `knr` INTEGER DEFAULT NULL,
  PRIMARY KEY (`fnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

INSERT INTO  ex15.kurskontrolle(fnr,knr) VALUES
(1,123),
(2,123),
(3,123),
(4,123),
(2,562),
(3,562),
(4,562),
(3,562),
(5,234),
(3,341),
(3,245),
(4,245),
(2,412),
(3,412),
(1,454),
(2,454),
(3,454),
(4,454),
(3,255),
(3,455),
(4,455),
(4,345),
(1,283),
(2,283),
(3,283),
(1,776),
(2,776),
(5,245);

create or replace view ex15.person all_courses
AS select
k.knr,
k.kursbezeichnung,
k2.datum,
k2,pnr,
k3.name,
k3.firma
from
ex15.personen p kurse k
inner join ex15.personen p2 kursbesuche k2 on
k.knr = k2.knr
inner join ex15.personen p3 kursleiter k3 on
k3.klnr = k2.klnr;

select * from ex15.all_courses;

