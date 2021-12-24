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
  inhoud TEXT 
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, inhoud, price) values ('Oreo Original Cookies', 'Oreo is een uniek koekje met een heerlijke vanille cremevulling', '816905633-0', '16 stuks', '1.89');

insert into products (name, description, code, inhoud, price) values (' Oreo White Chocolate', 'Oreo omhuld met een heerlijke laag witte chocolade.', '077030122-3', '14 stuks','2.25');

insert into products (name, description, code, price) values ('Oreo Milk Chocolate', 'Oreo omhuld met een heerlijke laag melkchocolade.', '445924201-X', '2.25');

insert into products (name, description, code, price) values (' Oreo Golden', ' Oreo golden is een uniek koekje met een heerlijke vanille cremevulling..', '693155505-7', '1.45');

insert into products (name, description, code, price) values ('Oreo Double creme', 'Oreo double stuffed, het unieke zwarte koekje met een dubbel zo dikke vanille cremevulling.', '686928463-6', '1.89');

insert into products (name, description, code, price) values ('Oreo Crunchies original', 'Jouw geliefde Oreo koekjes in een handig bite-size formaat. Deze biscuits zijn de perfecte verhouding tussen een Crispy bite en een zachte, romige vulling.', '492662523-7', '1.59');

insert into products (name, description, code, price) values ('Oreo Peanut Butter', 'Je vertrouwde Oreo koekje, met een verrassend lekkere vulling met pindakaassmaak.', '492687524-2','1.39');

insert into products (name, description, code, price) values ('Oreo Lemon Cream', 'Oreo Lemon Cream, het unieke koekje met een citroen cremevulling.', '696948268-5', '1.29');

insert into products (name, description, code, price) values ('Oreo Mint', 'Oreo mint, het unieke zwarte koekje met een heerlijke mint cremevulling.', '6868294698-8', '1.49');

insert into products (name, description, code, price) values ('Oreo Doule creme', 'Oreo double stuffed, het unieke zwarte koekje met een dubbel zo dikke vanille cremevulling.', '686928467-6', '1.89');
