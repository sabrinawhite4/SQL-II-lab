-- NUMBER 1
SELECT * FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;

SELECT * FROM invoice_line;

-- NUMBER 2
SELECT c.customer_id, i.customer_id, invoice_date, first_name, last_name, total
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id;

-- NUMBER 3
SELECT c.support_rep_id, e.employee_id, c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT * FROM employee;

--  NUMBER 4
SELECT title "album title", name "artist name"
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

-- NUMBER 5
SELECT track_id
FROM playlist p
JOIN playlist_track pt ON p.playlist_id = pt.playlist_id
WHERE name = 'Music';

-- NUMBER 6
SELECT t.name 
FROM playlist p
JOIN track t ON p.playlist_id = t.album_id
WHERE playlist_id = 5

SELECT * FROM playlist;
SELECT * FROM track;

-- NUMBER 8
SELECT t.name track_name, p.name playlist_name
FROM playlist p
JOIN playlist_track pt ON p.playlist_id = pt.playlist_id
JOIN track t ON pt.track_id = t.track_id;

-- NUMBER 9
SELECT t.name track_name, title
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
JOIN album a ON a.album_id = t.album_id
WHERE g.genre_id = 4;