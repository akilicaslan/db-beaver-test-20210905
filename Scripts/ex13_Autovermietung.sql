DROP SCHEMA IF EXISTS ex13;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;

CREATE SCHEMA `ex13` DEFAULT CHARACTER SET utf8 ;
USE ex13;


CREATE TABLE ex13.mitarbeiter(
  `id` INTEGER NOT NULL,
  `pnr` varchar(100) DEFAULT NULL,
  `vorname` varchar(100) DEFAULT NULL,
   `nachname` INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

CREATE TABLE ex13.reservierung(
  `id` INTEGER NOT NULL,
  `zweck` varchar(100) DEFAULT NULL,
  `beginn` varchar(100) DEFAULT NULL,
   `ende` INTEGER NOT NULL
    `mitarbeiter` varchar(100) DEFAULT NULL,
   `fahrzeug` INTEGER NOT NULL
   
   
   
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;




CREATE TABLE ex13.anschaffung(
  `kennzeichen` INTEGER NOT NULL,
  `hersteller` varchar(100) DEFAULT NULL,
  `modell` varchar(100) DEFAULT NULL,
   `kraftstoff` INTEGER NOT NULL,
  `Verbrauch` INTEGER NOT NULL,
   `anschaffungsdatum` INTEGER NOT NULL,
    `anschaffungskosten` INTEGER NOT NULL,
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;


INSERT INTO personen (pnr,name,vorname,fnr,lohnstufe)
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

