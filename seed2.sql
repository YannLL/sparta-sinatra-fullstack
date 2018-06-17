DROP TABLE IF EXISTS location_data;

CREATE TABLE location_data (

  id SERIAL PRIMARY KEY,
  country TEXT(255),
  city TEXT

);

insert into location_data (id, country, city) values (1, 'Pakistan', 'Būrewāla');
insert into location_data (id, country, city) values (2, 'Greece', 'Atsipópoulon');
insert into location_data (id, country, city) values (3, 'Philippines', 'Sogod');
insert into location_data (id, country, city) values (4, 'Brazil', 'Padre Paraíso');
insert into location_data (id, country, city) values (5, 'Philippines', 'Union');
insert into location_data (id, country, city) values (6, 'Colombia', 'La Unión');
insert into location_data (id, country, city) values (7, 'Ecuador', 'Atuntaqui');
insert into location_data (id, country, city) values (8, 'Afghanistan', 'Ārt Khwājah');
insert into location_data (id, country, city) values (9, 'Greece', 'Magoúla');
insert into location_data (id, country, city) values (10, 'Philippines', 'Lipahan');
