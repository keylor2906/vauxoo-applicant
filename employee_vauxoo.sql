-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

-- DROP TABLE employee_hobbies;
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
	boss integer REFERENCES employee,
	first_name varchar (50) NOT NULL,
	last_name varchar (50) NOT NULL
);

CREATE TABLE employee_hobby (
	id serial PRIMARY KEY,
	name varchar (50) NOT NULL,
	description varchar (100) NOT NULL
);

CREATE TABLE employee_hobbies (
	employee_id integer REFERENCES employee,
	hobby_id integer REFERENCES employee_hobby,
	PRIMARY KEY (employee_id, hobby_id)
);

INSERT INTO employee_department (name, description) VALUES ('jugueteria', 'departamento de jugueteria');
INSERT INTO employee_department (name, description) VALUES ('computacion', 'departamento de computacion');
INSERT INTO employee_department (name, description) VALUES ('muebles', 'departamento de muebles');
INSERT INTO employee_department (name, description) VALUES ('ropa', 'departamento de ropa');
INSERT INTO employee_department (name, description) VALUES ('perfumeria', 'departamento de perfumeria');
INSERT INTO employee_department (name, description) VALUES ('libros', 'departamento de libros');

INSERT INTO employee (first_name, last_name, department_id, boss) VALUES ('jose', 'robles', 2, 1);
INSERT INTO employee (first_name, last_name, department_id, boss) VALUES ('victor', 'cardona', 4, 1);
INSERT INTO employee (first_name, last_name, department_id, boss) VALUES ('manuel', 'damian', 1, 2);
INSERT INTO employee (first_name, last_name, department_id, boss) VALUES ('francisco', 'chacon', 6, 2);

INSERT INTO employee_hobby (name, description) VALUES ('lectura', 'leer libros');
INSERT INTO employee_hobby (name, description) VALUES ('videojuegos', 'jugar videojuegos');
INSERT INTO employee_hobby (name, description) VALUES ('peliculas', 'ver peliculas');

INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (1, 1);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (1, 2);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (2, 3);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (2, 1);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (3, 2);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (3, 3);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (4, 1);
INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES (4, 3);