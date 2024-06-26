/* Just some simple exercises */ 

-- RETO 1
USE TASK_BASE;

CREATE TABLE usuarios (
 id INT PRIMARY KEY auto_increment NOT NULL,
 nombre VARCHAR(50) NOT NULL,
 contrasena VARCHAR(250) NOT NULL,
 correo VARCHAR(50) UNIQUE NOT NULL,
 created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
 updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE tareas (
 id INT PRIMARY KEY auto_increment NOT NULL,
 titulo VARCHAR(50) NOT NULL,
 descripcion VARCHAR(250) NOT NULL,
 is_Done BOOLEAN,
 deadline DATE,
 tareas_list_id INT
 );
 
 CREATE TABLE tareas_list (
  id INT PRIMARY KEY auto_increment NOT NULL,
  nombre VARCHAR(50),
  FOREIGN KEY (usuarios_nombre) REFERENCES usuarios(nombre)
 )

 /* RETO 2 */

CREATE DATABASE restaurant;

 USE restaurant;
 
 CREATE TABLE clients (
  id INT PRIMARY KEY auto_increment NOT NULL,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  phone INT NOT NULL,
  password VARCHAR(225) NOT NULL
 );
 
 CREATE TABLE restaurants ( 
  id INT PRIMARY KEY auto_increment NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  phone INT NOT NULL
 );
 
 CREATE TABLE reserves (
 id INT PRIMARY KEY auto_increment NOT NULL,
 created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
 updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );
 
 CREATE TABLE opinions (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
clients_id INT,
FOREIGN KEY (clients_id) REFERENCES clients(id),
restaurants_id INT,
FOREIGN KEY (restaurants_id) REFERENCES restaurants(id),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
description TEXT NOT NULL
)

 /* RETO 3 */

 CREATE DATABASE school;

 USE school;

 CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    password VARCHAR(250) NOT NULL,
    user_type ENUM
 );

  CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    description text
    
 );

  CREATE TABLE tasks (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(50) NOT NULL,
    description text NOT NULL,
    date_created
    date_due
    state
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id)
 );

  CREATE TABLE exams (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    grade float NOT NULL, 
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES tasks(id),
    exam_id INT,
    FOREIGN KEY (exam_id) REFERENCES exams(id)
 )

CREATE TABLE USERS_TASKS (
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
      task_id INT,
    FOREIGN KEY (task_id) REFERENCES tasks(id)
)

CREATE TABLE USERS_COURSES (
        student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
      course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id)
)

/* RETO 4 */

CREATE DATABASE Almacen;

USE Almacen;

CREATE TABLE Productos (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50),
    descripcion text,
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    producto_id INT,
    movement VARCHAR(50),
    movement_date DATE,
    quantity INT
);

CREATE TABLE Stock (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    producto_id INT,
    FOREIGN KEY (producto_id) REFERENCES producto_id(Pedidos),
    quantity INT,
    FOREIGN KEY (quantity) REFERENCES quantity(Pedidos),
    last_restock DATE
)

/* RETO 5 */

