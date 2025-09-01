SELECT id, title, poster_path, backdrop_path, release_date
FROM movie
WHERE release_date > CURRENT_DATE
ORDER BY release_date ASC
LIMIT 10 OFFSET 0;