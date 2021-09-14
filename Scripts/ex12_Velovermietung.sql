DROP SCHEMA IF EXISTS ex12;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;

CREATE SCHEMA `ex12` DEFAULT CHARACTER SET utf8 ;
USE ex12;

CREATE TABLE ex12.fahrradtypen(
  `pnr` INTEGER NOT NULL,
  `mountainbikes` varchar(100) DEFAULT NULL,
  `Trekkingräder` varchar(100) DEFAULT NULL,
  `Rennräder` varchar(100) DEFAULT NULL,
  `E-Bikes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pnr`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE ex12.kunde(
  `id` INTEGER NOT NULL,
  `vorname` varchar(100) DEFAULT NULL,
  `nachname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE ex12.mietvertrag(
`id` INTEGER NOT NULL,
  `abschlussdatum` date,
  `mietbeginn` date,
  `mietdauer` INTEGER NOT NULL,
   `kunde_id` INTEGER NOT NULL,
  PRIMARY KEY (`id`),
  foreign key (Kunde_ID) references kunde(id));

CREATE TABLE ex12.fahrrad(
`id` INTEGER NOT NULL,
  `Kennung` INTEGER NOT NULL,
    `fahrradtyp_id` INTEGER NOT NULL,
  PRIMARY KEY (`id`),
  foreign key (fahrradtyp_ID) references fahrradtyp(id));




CREATE TABLE ex12.fahrradtypen (
`id` INTEGER NOT NULL,
  `bezeichnungen` varchar(100) DEFAULT NULL,
 PRIMARY KEY (`id`));

CREATE TABLE ex12.mietvertrag_vermietet_fahrrad(
`mietvertrag_id` INTEGER NOT NULL,
  `fahrrad_id` INTEGER NOT NULL,
   PRIMARY KEY (`mietvertrag_id`, fahrrad_id),
  foreign key (mietvertrag_id) references mietvertrag(id),
foreign key (fahrrad_id) references fahrrad(id));













