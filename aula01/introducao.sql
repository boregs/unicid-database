CREATE DATABASE intro;
USE intro;

CREATE SCHEMA placeholder;

CREATE TABLE placeholder.UsersAccess(
	id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    page_accessed CHAR(10),
    date_of_access DATETIME
);
