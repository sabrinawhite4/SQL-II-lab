-- NUMBER 1
SELECT * FROM invoice
WHERE invoice_id IN (
  SELECT invoice_id FROM invoice_line
WHERE unit_price > 0.99);

-- NUMBER 2
SELECT name FROM track
WHERE album_id IN(
  SELECT playlist_id FROM playlist WHERE name = 'Music');

-- NUMBER 3
SELECT name FROM track
WHERE album_id IN(
  SELECT playlist_id FROM playlist WHERE playlist_id = 5);

-- NUMBER 4
SELECT name FROM track
WHERE genre_id IN(
  SELECT genre_id FROM genre WHERE name = 'Comedy');

-- NUMBER 5
SELECT name FROM track
WHERE album_id IN(
  SELECT album_id FROM album WHERE title = 'Fireball');
  
-- NUMBER 6
SELECT * FROM artist
WHERE artist_id = 51;