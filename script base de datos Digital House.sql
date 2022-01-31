CREATE SCHEMA Notas;
CREATE TABLE `Usuarios` (
  `usuario_id` INT AUTO_INCREMENT NOT NULL ,
  `name` VARCHAR(40) NOT NULL,
  `mail` VARCHAR(80) UNIQUE,
  PRIMARY KEY (`usuario_id`)
);

CREATE TABLE `Notas` (
  `notas_id` INT AUTO_INCREMENT NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `usuario_id` INT  NOT NULL ,
  `creation_date` DATE NOT NULL,
  `modification_date` DATE  NULL,
  `description` TEXT NOT NULL,
  `permanent` TINYINT ,
  PRIMARY KEY (`notas_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios`(`usuario_id`)
);

CREATE TABLE `Categorias` (
  `category_id` INT AUTO_INCREMENT NOT NULL,
  `category_name` VARCHAR(20) NOT NULL,
  `description` TEXT NOT NULL,
  PRIMARY KEY (`category_id`)
);

CREATE TABLE `Notas_Categorias` (
  `notas_categorias_id` INT AUTO_INCREMENT NOT NULL ,
  `category_id` INT  NOT NULL,
  `notas_id` INT  NOT NULL,
  PRIMARY KEY (`notas_categorias_id`)
);

INSERT INTO Usuarios VALUES ('1', 'Edin Gleadle', 'egleadle0@networkadvertising.org');
INSERT INTO Usuarios VALUES ('2', 'Ollie Coppin', 'ocoppin1@ihg.com');
INSERT INTO Usuarios VALUES ('3', 'Colas Ambridge', 'cambridge2@booking.com');
INSERT INTO Usuarios VALUES ('4', 'Jonas Hawe', 'jhawe3@delicious.com');
INSERT INTO Usuarios VALUES ('5', 'Arnaldo Glennard', 'aglennard4@hao123.com');
INSERT INTO Usuarios VALUES ('6', 'Bay Tukesby', 'btukesby5@techcrunch.com');
INSERT INTO Usuarios VALUES ('7', 'Gradey Crame', 'gcrame6@cisco.com');
INSERT INTO Usuarios VALUES ('8', 'Amabelle Muckersie', 'amuckersie7@ezinearticles.com');
INSERT INTO Usuarios VALUES ('9', 'Elizabet Twigley', 'etwigley8@surveymonkey.com');
INSERT INTO Usuarios VALUES ('10', 'Laurene Volker', 'lvolker9@google.co.uk');

INSERT INTO Notas VALUES ('1', 'Smoke Signals', '1', '2021-04-28', '2021-06-05', 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus', '1');
INSERT INTO Notas VALUES ('2', 'Luna, La', '2', '2022-01-11', '2021-11-03', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', '0');
INSERT INTO Notas VALUES ('3', 'Freud: The Secret Passion', '3', '2021-04-05', '2021-09-17', 'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', '0');
INSERT INTO Notas VALUES ('4', 'Gentlemen Prefer Blondes', '4', '2021-03-08', '2022-01-04', 'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', '1');
INSERT INTO Notas VALUES ('5', 'Paradise Now', '5', '2021-03-27', '2021-07-15', 'erat volutpat in congue etiam justo etiam pretium iaculis justo', '1');
INSERT INTO Notas VALUES ('6', 'Stuart Little', '6', '2021-08-22', '2021-08-10', 'vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '1');
INSERT INTO Notas VALUES ('7', 'Ziegfeld Follies', '7', '2021-11-05', '2022-01-09', 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', '1');
INSERT INTO Notas VALUES ('8', 'Great Train Robbery, The', '8', '2021-01-31', '2021-04-25', 'posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut', '1');
INSERT INTO Notas VALUES ('9', 'Mixed Blood', '9', '2021-11-06', '2022-01-28', 'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum', '0');
INSERT INTO Notas VALUES ('10', 'As Far As My Feet Will Carry Me (So weit die Füße tragen)','5', '2021-08-22', '2021-06-16', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam', '1');

INSERT INTO Categorias VALUES ('1', 'Goldenrod', 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar');
INSERT INTO Categorias VALUES ('2', 'Violet', 'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem');
INSERT INTO Categorias VALUES ('3', 'Puce', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus');
INSERT INTO Categorias VALUES ('4', 'Aquamarine', 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam');
INSERT INTO Categorias VALUES ('5', 'Black', 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum');
INSERT INTO Categorias VALUES ('6', 'Mauv', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis');
INSERT INTO Categorias VALUES ('7', 'Blue', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus');
INSERT INTO Categorias VALUES ('8', 'Teal', 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante');
INSERT INTO Categorias VALUES ('9', 'Green', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel');
INSERT INTO Categorias VALUES ('10', 'Indigo', 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie');

INSERT INTO notas_categorias VALUES ("1","1","1");
INSERT INTO notas_categorias VALUES ("2","2","1");
INSERT INTO notas_categorias VALUES ("3","3","3");
INSERT INTO notas_categorias VALUES ("4","4","1");
INSERT INTO notas_categorias VALUES ("5","5","1");
INSERT INTO notas_categorias VALUES ("6","6","10");
INSERT INTO notas_categorias VALUES ("7","7","6");
INSERT INTO notas_categorias VALUES ("8","8","1");
INSERT INTO notas_categorias VALUES ("9","9","8");
INSERT INTO notas_categorias VALUES ("10","10","4");