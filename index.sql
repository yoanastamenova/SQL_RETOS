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

CREATE DATABASE Excercise;

USE Excercise;

CREATE TABLE usuario (
    id INT PRIMARY KEY auto_increment NOT NULL,
    username VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(250)
);

CREATE TABLE actividades (
    id INT PRIMARY KEY auto_increment NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario_id(usuario),
    entrenamientos_id INT,
    FOREIGN KEY (entrenamientos_id) REFERENCES entrenamientos_id(entrenamientos),
    );

CREATE TABLE entrenamientos (
    id INT PRIMARY KEY auto_increment NOT NULL,
    date DATE,
    duration INT,
    calories INT
);

CREATE TABLE recomendaciones (
    id INT PRIMARY KEY auto_increment NOT NULL,
    entrenamientos_id INT,
    FOREIGN KEY (entrenamientos_id) REFERENCES entrenamientos_id(entrenamientos),
    )

/* RETO 6 */

CREATE DATABASE Iberia;

USE Iberia;

CREATE TABLE usuarios (
    id INT PRIMARY KEY auto_increment NOT NULL,
    username VARCHAR(50),
    email VARCHAR(150) UNIQUE,
    password VARCHAR(299) NOT NULL
);

CREATE TABLE vuelos (
    id INT PRIMARY KEY auto_increment NOT NULL,
    numero INT,
    salida VARCHAR(20),
    llegada VARCHAR(20),
    hora_salida DATETIME,
    hora_llegada DATETIME,
    
);

CREATE TABLE reservas (
    id INT PRIMARY KEY auto_increment NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario_id(usuario),
    vuelo_id INT,
    FOREIGN KEY (vuelo_id) REFERENCES vuelo_id(vuelos),
    date DATETIME
);

CREATE TABLE notificaciones (
    id INT PRIMARY KEY auto_increment NOT NULL,
    vuelo_id INT,
    FOREIGN KEY (vuelo_id) REFERENCES vuelo_id(vuelos),
    mensajes TEXT
);

/* RETO 7 */

CREATE DATABASE Wallapop;

USE Wallapop;

CREATE TABLE usuarios (
    id INT PRIMARY KEY auto_increment NOT NULL,
    username VARCHAR(50),
    email VARCHAR(150) UNIQUE,
    password VARCHAR(299) NOT NULL
);

CREATE TABLE articulos (
    id INT PRIMARY KEY auto_increment NOT NULL,
    name VARCHAR(50),
    descripcion TEXT
);

CREATE TABLE ventas (
    id INT PRIMARY KEY auto_increment NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES id(usuarios),
    articulo_id INT,
    FOREIGN KEY (articulo_id) REFERENCES id(articulos),
    fecha DATETIME
);

CREATE TABLE resenas (
    id INT PRIMARY KEY auto_increment NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES id(usuarios),
    venta_id INT,
    FOREIGN KEY (venta_id) REFERENCES id(ventas),
    rating INT,
    comment TEXT
);


/* RETO 8*/

CREATE DATABASE ABC;

USE ABC;

CREATE TABLE usuarios (
    id INT PRIMARY KEY auto_increment NOT NULL,
    username VARCHAR(50),
    email VARCHAR(150) UNIQUE,
    password VARCHAR(299) NOT NULL
);

CREATE TABLE peliculas (
    id INT PRIMARY KEY auto_increment NOT NULL,
    title VARCHAR(50),
    descripcion TEXT,
    ano INT,
    genero VARCHAR(50)
);

CREATE TABLE lista (
    id INT PRIMARY KEY auto_increment NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES id(usuarios),
    peliculas INT,
    FOREIGN KEY (peliculas_id) REFERENCES id(peliculas),
    descripcion TEXT
);

CREATE TABLE resenas (
    id INT PRIMARY KEY auto_increment NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES id(usuarios),
    eliculas INT,
    FOREIGN KEY (peliculas_id) REFERENCES id(peliculas),
    rating INT,
    comment TEXT
);