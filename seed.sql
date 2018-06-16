DROP TABLE IF EXISTS animal;

CREATE TABLE animal (

  Id SERIAL PRIMARY KEY,
  AnimalName VARCHAR(255),
  SpeciesName TEXT

);

insert into animal (Id, AnimalName, SpeciesName) values (1, 'Nance', 'Currasow (unidentified)');
insert into animal (Id, AnimalName, SpeciesName) values (2, 'Trula', 'Turkey, wild');
insert into animal (Id, AnimalName, SpeciesName) values (3, 'Adelle', 'Squirrel, thirteen-lined');
insert into animal (Id, AnimalName, SpeciesName) values (4, 'Werner', 'Langur, gray');
insert into animal (Id, AnimalName, SpeciesName) values (5, 'Ruggiero', 'Coatimundi, white-nosed');
insert into animal (Id, AnimalName, SpeciesName) values (6, 'Sutherlan', 'South American meadowlark (unidentified)');
insert into animal (Id, AnimalName, SpeciesName) values (7, 'Hilary', 'Sheep, stone');
insert into animal (Id, AnimalName, SpeciesName) values (8, 'Aloise', 'Blacksmith plover');
insert into animal (Id, AnimalName, SpeciesName) values (9, 'Enrichetta', 'Brolga crane');
insert into animal (Id, AnimalName, SpeciesName) values (10, 'Archibold', 'Ass, asiatic wild');
