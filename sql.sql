-- 1. Who is the senior most employee based on job title?

-- SELECT * FROM employee
-- ORDER BY levels DESC
-- LIMIT 1

-- 2. Which countries have the most invoices?

-- SELECT billing_country, COUNT(*) AS invoices
-- FROM invoice
-- GROUP BY billing_country
-- ORDER BY invoices DESC

-- 3. What are top 3 values of total invoice

-- SELECT total FROM invoice
-- ORDER BY total DESC
-- LIMIT 3

-- 4. Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the
-- most money. Write a query that returns one city that has the highest sum of invoice totals. Return both the city name
-- & sum of all invoice totals

-- SELECT billing_city, SUM(total) AS invoice_total 
-- FROM invoice
-- GROUP BY billing_city
-- ORDER BY invoice_total DESC
-- LIMIT 1

-- 5. Who is the best customer? The customer who has spent the most money will be declared the best customer. 
-- Write a query that returns the person who has spent the most money

-- SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) AS total
-- FROM customer
-- INNER JOIN invoice
-- ON customer.customer_id = invoice.customer_id
-- GROUP BY customer.customer_id
-- ORDER BY total DESC
-- LIMIT 1

-- 1. Write query to return the email, first name, last name, & Genre of all Rock Music listeners.
-- Return your list ordered alphabetically by email starting with A

-- SELECT DISTINCT first_name, last_name, email FROM customer
-- INNER JOIN invoice ON customer.customer_id = invoice.customer_id
-- INNER JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
-- INNER JOIN track ON invoice_line.track_id = track.track_id
-- INNER JOIN genre ON track.genre_id = genre.genre_id
-- WHERE genre.name LIKE 'Rock'
-- ORDER BY email

-- 2. Let's invite the artists who have written the most rock music in our dataset. Write a 
-- query that returns the Artist name and total track count of the top 10 rock bands

-- SELECT artist.artist_id, artist.name, COUNT(artist.artist_id) AS number_of_songs FROM artist
-- INNER JOIN album ON artist.artist_id = album.artist_id
-- INNER JOIN track ON album.album_id = track.album_id
-- INNER JOIN genre ON track.genre_id = genre.genre_id
-- WHERE genre.name LIKE 'Rock'
-- GROUP BY artist.artist_id
-- ORDER BY number_of_songs DESC
-- LIMIT 10

-- 3. Return all the track names that have a song length longer than the average song length. 
-- Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first

-- SELECT name, milliseconds FROM track
-- WHERE milliseconds > (SELECT AVG(milliseconds) FROM track)
-- ORDER BY milliseconds DESC

-- 1. Find how much amount spent by each customer on artists? Write a query to return customer name, artist name and 
-- total spent

SELECT * F










