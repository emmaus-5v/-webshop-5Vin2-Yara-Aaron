--
-- create tables
--

 DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  Allergie TEXT 
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, Allergie) values ('Oreo Original Cookies', 'Oreo is een uniek koekje met een heerlijke vanille cremevulling', '816905633-0', '1.89', 'noten');

insert into products (name, description, code, price) values ('Oreo White Chocolate', 'Oreo omhuld met een heerlijke laag witte chocolade.', '077030122-3', '2.25');

insert into products (name, description, code, price) values ('Oreo Milk Chocolate', 'Oreo omhuld met een heerlijke laag melkchocolade.', '445924201-X', '2.25');

insert into products (name, description, code, price) values ('Oreo Golden', ' Oreo golden is een uniek koekje met een heerlijke vanille cremevulling..', '693155505-7', '1.45');

insert into products (name, description, code, price) values ('Oreo Double creme', 'Oreo double stuffed, het unieke zwarte koekje met een dubbel zo dikke vanille cremevulling.', '686928463-6', '1.89');

insert into products (name, description, code, price) values ('Oreo Crunchies original', 'Jouw geliefde Oreo koekjes in een handig bite-size formaat. Deze biscuits zijn de perfecte verhouding tussen een Crispy bite en een zachte, romige vulling.', '492662523-7', '1.59');

insert into products (name, description, code, price) values ('Oreo Peanut Butter', 'Je vertrouwde Oreo koekje, met een verrassend lekkere vulling met pindakaassmaak.', '492687524-2','1.39');

insert into products (name, description, code, price) values ('Oreo Lemon Cream', 'Oreo Lemon Cream, het unieke koekje met een citroen cremevulling.', '696948268-5', '1.29');

insert into products (name, description, code, price) values ('Oreo Mint', 'Oreo mint, het unieke zwarte koekje met een heerlijke mint cremevulling.', '6868294698-8', '1.49');

insert into products (name, description, code, price) values ('Oreo Gingerbread', 'De feestdagen zijn natuurlijk niet compleet zonder Gingerbread Oreo Cookies! Deze kerstkoekjes zijn gevuld met een creme met Crunchy Sugar Crystals en hebben een prachtig design voor de feestdagen.', '686928467-6', '1.89');

CREATE TABLE Allergie (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
);

insert into Allergie (id, name) values (1, 'Noten');
insert into Allergie (id, name) values (2, 'Soja'); 
insert into Allergie (id, name) values (3, 'Tarwe');
insert into Allergie (id, name) values (4, 'Glutenbevattende Granen');
insert into Allergie (id, name) values (5, 'Melk');



/*
CREATE TABLE product_allergie (
  id INTEGER PRIMARY KEY,
  id_koekje NUMERIC,
  id_allergie VARCHAR(255)
);

insert into product_allergie (id, id_koekje, id_allergie) values (1, 1, 'Noten');
insert into product_allergie (id, id_koekje, id_allergie) values (2, 2, 'Soja'); 
insert into product_allergie (id, id_koekje, id_allergie) values (3, 3, 'Tarwe');
insert into product_allergie (id, id_koekje, id_allergie) values (4, 4, 'Glutenbevattende Granen');
insert into product_allergie (id, id_koekje, id_allergie) values (5, 5, 'Melk'); */


SELECT id, products.id, id.Allergie FROM Allergie AS 'product_allergie'
       LEFT OUTER JOIN products
       ON products.id = product_allergie.id;


