-- 1 --
SELECT * FROM invoice_line 
WHERE unit_price > 0.99;

-- 2 --

SELECT i.invoice_date, i.total, c.first_name, c.last_name
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

-- 3 & 4--

SELECT c.first_name "customer first name", c.last_name "Customer last name", 
e.first_name "Employee first name", e.last_name "Employee last name"
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- 5 --

SELECT a.title, ar.name 
FROM album a
JOIN artist ar ON a.artist_id = ar.artist_id;

-- 6 --

SELECT p.playlist_track_id, p.track_id, pl.name
FROM playlist_track p
JOIN playlist pl ON p.playlist_id = pl.playlist_id;

-- 7 --

SELECT t.name, p.playlist_id
FROM track t
JOIN playlist_track p ON t.track_id = p.track_id;

-- 8 --

SELECT t.name, p.name
FROM track t
JOIN playlist_track plt ON t.track_id = plt.track_id
JOIN playlist p ON plt.playlist_id = p.playlist_id;

-- 9 --

SELECT t.name, a.title "album title"
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name LIKE 'Alternative & Punk';


