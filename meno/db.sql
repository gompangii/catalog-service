# mariadb
DROP DATABASE IF EXISTS polardb_catalog;
CREATE DATABASE polardb_catalog;
USE polardb_catalog;


DROP TABLE IF EXISTS book;
CREATE TABLE book (
	id 						INT UNSIGNED NOT NULL PRIMARY KEY,
	author			VARCHAR(255) NOT NULL,
	isbn					VARCHAR(255) NOT NULL UNIQUE,
	price				DOUBLE NOT NULL,
	title						VARCHAR(255) NOT NULL,
	`version`	INT NOT NULL
);

DESC book;