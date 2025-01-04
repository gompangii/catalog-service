CREATE TABLE book (
	id                  INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	author              VARCHAR(255) NOT NULL,
	isbn                VARCHAR(255) NOT NULL UNIQUE,
	price               DOUBLE NOT NULL,
	title               VARCHAR(255) NOT NULL,
	created_date        TIMESTAMP NOT NULL,
    last_modified_date  TIMESTAMP NOT NULL,
	`version`           INT NOT NULL
);