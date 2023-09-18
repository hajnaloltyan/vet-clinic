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
