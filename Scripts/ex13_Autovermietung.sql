DROP SCHEMA IF EXISTS ex13;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;

CREATE SCHEMA `ex13` DEFAULT CHARACTER SET utf8 ;
USE ex13;


CREATE TABLE ex13.mitarbeiter(
  `id` INTEGER NOT NULL,
  `pnr` varchar(100) DEFAULT NULL,
  `vorname` varchar(100) DEFAULT NULL,
   `nachname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

INSERT INTO mitarbeiter (id,pnr,vorname,nachname)
VALUES
(1, 11, 'Max','Mueller'),
(2, 12, 'Azmi','Kilicaslan'),
(3, 13, 'Stefan','Kocak');


CREATE TABLE ex13.reservierung(
  `id` INTEGER NOT NULL,
  `zweck` varchar(100) DEFAULT NULL,
  `beginn` varchar(100) DEFAULT NULL,
   `ende` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

INSERT INTO reservierung (id,zweck,beginn,ende)
VALUES
(1, 11, 'Max','Müller'),
(2, 12, 'Azmi','Kilicaslan'),
(3, 13, 'Stefan','Kocak');


CREATE TABLE ex13.fahrzeug(
  `id` INTEGER NOT NULL,
  `kennzeichen` varchar(100) DEFAULT NULL,
  `hersteller` varchar(100) DEFAULT NULL,
   `model` INTEGER NOT NULL,
   `kraftstoff` INTEGER NOT NULL,
   `Verbrauch` INTEGER NOT NULL,
   `Anschaffungsdatum` INTEGER NOT NULL,
    `Anschaffungsksoten` INTEGER NOT NULL,
   
   
   
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

INSERT INTO fahrzeug (id,kennzeichen,anschaffungsdatum,anschaffungskosten)
VALUES
(1, BS34567, 'Max','Müller'),
(2, AG34567, 'Azmi','Kilicaslan'),
(3, LU34567, 'Stefan','Kocak');



CREATE TABLE ex13.anschaffung(
  `kennzeichen` INTEGER NOT NULL,
  `hersteller` varchar(100) DEFAULT NULL,
  `modell` varchar(100) DEFAULT NULL,
  `kraftstoff` INTEGER NOT NULL,
  `Verbrauch` INTEGER NOT NULL,
  `anschaffungsdatum` INTEGER NOT NULL,
  `anschaffungskosten` INTEGER NOT NULL,
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;


create or replace view ex13.revervierungsview
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

select * from ex15.revervierungsview;

create or replace view ex13.instandhaltungsview
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

select * from ex15.instandhaltungsview;


