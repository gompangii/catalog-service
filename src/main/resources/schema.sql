DROP TABLE IF EXISTS book;
CREATE TABLE book (
	id                  INT UNSIGNED NOT NULL PRIMARY KEY,
	author              VARCHAR(255) NOT NULL,
	isbn                VARCHAR(255) NOT NULL UNIQUE,
	price               DOUBLE NOT NULL,
	title               VARCHAR(255) NOT NULL,
	created_date        DATETIME NOT NULL,
    last_modified_date  DATETIME NOT NULL,
	`version`           INT NOT NULL
);