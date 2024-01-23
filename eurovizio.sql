DROP DATABASE IF EXISTS eurovizio;

CREATE DATABASE eurovizio;
CHARACTER SET utf8;
COLLATE utf8_hungarian_ci;

USE eurovizio;

CREATE TABLE dalok (
    id int AUTO_INCREMENT UNIQUE,
    ev int,
    sorrend int,
    orszag varchar(255),
    nyelv varchar(255),
    eloado varchar(255),
    eredeti varchar(255),
    magyar varchar(255),
    helyezes int,
    pontszam int,
    PRIMARY KEY (id)
);
LOAD DATA INFILE 'dal.txt' INTO TABLE dalok CHARACTER SET UTF8 FIELDS TERMINATED BY '\t' IGNORE 1 LINES;

CREATE TABLE versenyek (
  id int NOT NULL UNIQUE,
  datum date,
  varos varchar(255),
  orszag varchar(255),
  induloszam tinyint(1),
  PRIMARY KEY (id)
);
LOAD DATA INFILE 'verseny.txt' INTO TABLE versenyek CHARACTER SET UTF8 FIELDS TERMINATED BY '\t' IGNORE 1 LINES;

CREATE TABLE nyelvek (
	id int AUTO_INCREMENT UNIQUE,
	orszag varchar(255),
	nyelv varchar(255),	
    PRIMARY KEY (id)
);
LOAD DATA INFILE 'nyelv.txt' INTO TABLE nyelvek CHARACTER SET UTF8 FIELDS TERMINATED BY '\t' IGNORE 1 LINES;
