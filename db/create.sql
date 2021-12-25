--
-- create tables
--

DROP TABLE IF EXISTS products; 
DROP TABLE IF EXISTS allergie; 

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  allergieid INTEGER 
);

CREATE TABLE allergie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ingredient VARCHAR(255)
);

CREATE TABLE product_allergie (
  product_id INTEGER,
  ingredient_id INTEGER
);




--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, allergieid) values ('Oreo Original Cookies', 'Oreo is een uniek koekje met een heerlijke vanille cremevulling', '816905633-0', '1.89', 1);
insert into products (name, description, code, price, allergieid) values ('Oreo White Chocolate', 'Oreo omhuld met een heerlijke laag witte chocolade.', '077030122-3', '2.25', 2 );
insert into products (name, description, code, price, allergieid) values ('Oreo Milk Chocolate', 'Oreo omhuld met een heerlijke laag melkchocolade.', '445924201-X', '2.25',2);
insert into products (name, description, code, price, allergieid) values ('Oreo Golden', ' Oreo golden is een uniek koekje met een heerlijke vanille cremevulling..', '693155505-7', '1.45',3);
insert into products (name, description, code, price, allergieid) values ('Oreo Double creme', 'Oreo double stuffed, het unieke zwarte koekje met een dubbel zo dikke vanille cremevulling.', '686928463-6', '1.89',4);
insert into products (name, description, code, price, allergieid) values ('Oreo Crunchies original', 'Jouw geliefde Oreo koekjes in een handig bite-size formaat. Deze biscuits zijn de perfecte verhouding tussen een Crispy bite en een zachte, romige vulling.', '492662523-7', '1.59',5);
insert into products (name, description, code, price, allergieid) values ('Oreo Peanut Butter', 'Je vertrouwde Oreo koekje, met een verrassend lekkere vulling met pindakaassmaak.', '492687524-2','1.39',2);
insert into products (name, description, code, price, allergieid) values ('Oreo Lemon Cream', 'Oreo Lemon Cream, het unieke koekje met een citroen cremevulling.', '696948268-5', '1.29',1);
insert into products (name, description, code, price, allergieid) values ('Oreo Mint', 'Oreo mint, het unieke zwarte koekje met een heerlijke mint cremevulling.', '6868294698-8', '1.49',3);
insert into products (name, description, code, price, allergieid) values ('Oreo Gingerbread', 'De feestdagen zijn natuurlijk niet compleet zonder Gingerbread Oreo Cookies! Deze kerstkoekjes zijn gevuld met een creme met Crunchy Sugar Crystals en hebben een prachtig design voor de feestdagen.', '686928467-6', '1.89',4);


insert into allergie (ingredient) values ('Noten');
insert into allergie (ingredient) values ('Soja'); 
insert into allergie (ingredient) values ('Tarwe');
insert into allergie (ingredient) values ('Glutenbevattende Granen');
insert into allergie (ingredient) values ('Melk');

insert into product_allergie (product_id, ingredient_id) values(2,3,4,5);
insert into product_allergie (product_id, ingredient_id) values(2,3,4,5);
insert into product_allergie (product_id, ingredient_id) values(2,3,4,5);
insert into product_allergie (product_id, ingredient_id) values(2,3);
insert into product_allergie (product_id, ingredient_id) values(2,3,4,5);
insert into product_allergie (product_id, ingredient_id) values(2,3,4,5);
insert into product_allergie (product_id, ingredient_id) values(2,4,5);
insert into product_allergie (product_id, ingredient_id) values(2,3);
insert into product_allergie (product_id, ingredient_id) values(2,4,5);
insert into product_allergie (product_id, ingredient_id) values(2,3);


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
/*

SELECT name, description, code, price, ingredient 
  FROM products, allergie AS 'product_allergien'
    LEFT OUTER JOIN products
       ON products.allergieid = allergie.id;

*/

