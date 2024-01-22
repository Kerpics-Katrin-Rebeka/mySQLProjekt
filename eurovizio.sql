DROP DATABASE IF EXISTS eurovizio;

CREATE DATABASE eurovizio;
CHARACTER SET utf8;
COLLATE utf8_hungarian_ci;

USE eurovizio;

CREATE TABLE dalok (
    id INT(11) NOT NULL AUTO_INCREMENT,
    ev INT(11) NOT NULL,
    sorrend INT(11) NOT NULL,
    orszag VARCHAR(255) NOT NULL,
    nyelv VARCHAR(255) NOT NULL,
    eloado VARCHAR(255) NOT NULL,
    eredeti VARCHAR(255) NOT NULL,
    magyar VARCHAR(255) NOT NULL,
    helyezes INT(11) NOT NULL,
    pontszam INT(11) NOT NULL,
	PRIMARY KEY (ID)
);
LOAD DATA INFILE 'dal.txt' INTO TABLE dalok CHARACTER SET UTF8 FIELDS TERMINATED BY '\t' IGNORE 1 LINES;

CREATE TABLE versenyek (
  id int(11) NOT NULL,
  datum date NOT NULL,
  varos varchar(255) NOT NULL,
  orszag varchar(255) NOT NULL,
  induloszam tinyint(1) NOT NULL,
  PRIMARY KEY (id)
);
LOAD DATA INFILE 'verseny.txt' INTO TABLE versenyek CHARACTER SET UTF8 FIELDS TERMINATED BY '\t' IGNORE 1 LINES;

CREATE TABLE nyelvek (
	id int(11) NOT NULL AUTO_INCREMENT,
	orszag varchar(255) NOT NULL,
	nyelv varchar(255) NOT NULL,	
    PRIMARY KEY (id)
);
LOAD DATA INFILE 'nyelv.txt' INTO TABLE nyelvek CHARACTER SET UTF8 FIELDS TERMINATED BY '\t' IGNORE 1 LINES;
