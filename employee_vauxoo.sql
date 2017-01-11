-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

-- DROP TABLE employee;
-- DROP TABLE employee_department;
-- DROP TABLE employee_hobby;

CREATE TABLE employee_department (
	id serial PRIMARY KEY,
	name varchar (50) NOT NULL,
	description varchar (100) NOT NULL
);

CREATE TABLE employee (
	id serial PRIMARY KEY,
	department_id integer REFERENCES employee_department,
	first_name varchar (50) NOT NULL,
	last_name varchar (50) NOT NULL
);


CREATE TABLE employee_hobby (
);

INSERT INTO employee_department (name, description) VALUES ('jugueteria', 'departamento de jugueteria');
INSERT INTO employee_department (name, description) VALUES ('computacion', 'departamento de computacion');
INSERT INTO employee_department (name, description) VALUES ('muebles', 'departamento de muebles');
INSERT INTO employee_department (name, description) VALUES ('ropa', 'departamento de ropa');
INSERT INTO employee_department (name, description) VALUES ('perfumeria', 'departamento de perfumeria');
INSERT INTO employee_department (name, description) VALUES ('libros', 'departamento de libros');

INSERT INTO employee (first_name, last_name, department_id) VALUES ('jose', 'robles', 2);
INSERT INTO employee (first_name, last_name, department_id) VALUES ('victor', 'cardona', 4);
INSERT INTO employee (first_name, last_name, department_id) VALUES ('manuel', 'damian', 1);
INSERT INTO employee (first_name, last_name, department_id) VALUES ('francisco', 'chacon', 6);
