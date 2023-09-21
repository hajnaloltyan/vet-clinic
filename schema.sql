/* Database schema to keep the structure of entire database. */

/* Day 1: Create animals table */

CREATE TABLE animals (
  id serial PRIMARY KEY,
  name varchar(100),
  date_of_birth date,
  escape_attempts integer,
  neutered boolean,
  weight_kg decimal
);

/* Day 2 */

ALTER TABLE animals ADD COLUMN species VARCHAR(100);

/* Day 3 */

CREATE TABLE owners (
  id serial PRIMARY KEY,
  full_name varchar(100),
  age integer
);

CREATE TABLE species (
  id serial PRIMARY KEY,
  name varchar(100)
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals
  ADD COLUMN species_id integer REFERENCES species(id),
  ADD COLUMN owner_id integer REFERENCES owners(id);

/* Day 4 */

CREATE TABLE vets (
  id serial PRIMARY KEY,
  name varchar(100),
  age integer,
	date_of_graduation date
);

CREATE TABLE specializations (
  vet_id integer,
  species_id integer,
  PRIMARY KEY (vet_id, species_id)
);

CREATE TABLE visits (
  id serial PRIMARY KEY,
  animal_id integer,
  vet_id integer,
  visit_date date
);
