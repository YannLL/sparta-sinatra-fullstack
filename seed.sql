DROP TABLE IF EXISTS animal_data;

CREATE TABLE animal_data (

  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  species TEXT

);

insert into animal (id, name, species) values (1, 'Nance', 'Currasow (unidentified)');
insert into animal (id, name, species) values (2, 'Trula', 'Turkey, wild');
insert into animal (id, name, species) values (3, 'Adelle', 'Squirrel, thirteen-lined');
insert into animal (id, name, species) values (4, 'Werner', 'Langur, gray');
insert into animal (id, name, species) values (5, 'Ruggiero', 'Coatimundi, white-nosed');
insert into animal (id, name, species) values (6, 'Sutherlan', 'South American meadowlark (unidentified)');
insert into animal (id, name, species) values (7, 'Hilary', 'Sheep, stone');
insert into animal (id, name, species) values (8, 'Aloise', 'Blacksmith plover');
insert into animal (id, name, species) values (9, 'Enrichetta', 'Brolga crane');
insert into animal (id, name, species) values (10, 'Archibold', 'Ass, asiatic wild');
