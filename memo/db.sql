# mariadb
DROP DATABASE IF EXISTS polardb_catalog;
CREATE DATABASE polardb_catalog;
USE polardb_catalog;

# schema.sql 파일 내용 플라웨이 적용을 위해 삭제 함
DROP TABLE IF EXISTS book;
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

# application.yml 파일에서 플라웨이 적용을 위해 삭제
  sql:
    init:
      mode: always


# 보안을 위한 스키마 변경
DROP TABLE IF EXISTS book;
CREATE TABLE book (
	id                  INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	author              VARCHAR(255) NOT NULL,
	isbn                VARCHAR(255) NOT NULL UNIQUE,
	price               DOUBLE NOT NULL,
	title               VARCHAR(255) NOT NULL,
	created_date        TIMESTAMP NOT NULL,
    last_modified_date  TIMESTAMP NOT NULL,
    created_by 			VARCHAR(255),
    last_modified_by    VARCHAR(255),
	`version`           INT NOT NULL
);


