-- 1 --

ALTER TABLE animals ADD location VARCHAR(40); 

-- 2 --

INSERT INTO animals(
  name, location, age, type)
  VALUES
  ('Rudy', 'Utah', 6, 'Dog');
  
INSERT INTO animals(
  name, location, age, type)
  VALUES
  ('Fuffles', 'Faroe Islands', 8, 'cat');

INSERT INTO animals(
  name, location, age, type)
  VALUES
  ('Remy', 'Canada', 21, 'bird');

-- 3 -- 

ALTER TABLE animals RENAME COLUMN type TO species;

-- 4 --

ALTER TABLE animals ALTER speices SET DATA TYPE VARCHAR(50);

-- 5 --

