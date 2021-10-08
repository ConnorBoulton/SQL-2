-- 1 --

DELETE FROM animals
where type = 'lion'; 

-- 2 --

DELETE FROM animals
where name LIKE 'M%'; 

-- 3 --

DELETE FROM animals
where age < 9;
