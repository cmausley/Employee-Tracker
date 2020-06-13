DROP DATABASE IF EXISTS employee_tracker_db;
CREATE database employee_tracker_db;

USE employee_tracker_db;

CREATE TABLE role (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30),
    salary DECIMAL(10,2),
    department_id INT(10),
     PRIMARY KEY(id)
);

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL, 
    name VARCHAR(30),
    department_id INT(10),
    PRIMARY KEY(id)
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT NOT NULL, 
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT(10),
    manager_id INT(10) NULL,
    PRIMARY KEY(id)
);

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'