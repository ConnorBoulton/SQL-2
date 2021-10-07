-- 1 --

UPDATE customer
SET fax = NULL;

-- 2 --

UPDATE customer
SET company = 'Self'
WHERE company IS NULL;