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
  PRIMARY KEY (`id`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE ex12.mietvertrag(
`id` INTEGER NOT NULL,
  `abschlussdatum` INTEGER NOT NULL,
  `mietbeginn` varchar(100) DEFAULT NULL,
  `mietdauer` varchar(100) DEFAULT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;

CREATE TABLE ex12.fahrrad(
`id` INTEGER NOT NULL,
  `Kennung` INTEGER NOT NULL,
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE ex12.mietvertrag_vermietet_fahrrad(
`id` INTEGER NOT NULL,
  `Kennung` INTEGER NOT NULL,
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 collate=utf8mb4_unicode_ci;













