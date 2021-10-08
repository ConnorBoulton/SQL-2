-- 1 -- 
SELECT g.name, COUNT(*)
FROM track t
JOIN genre g ON g.genre_id = t.genre_id
GROUP BY g.name;

-- 2 -- 

SELECT COUNT(*), g.name
FROM track t
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name;

-- 3 --

SELECT a.name artist, COUNT(al.title)
FROM artist a
JOIN album al ON a.artist_id = al.artist_id
GROUP BY a.name