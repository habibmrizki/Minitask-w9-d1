SELECT id, title, poster_path, backdrop_path, popularity
FROM movie
ORDER BY popularity DESC
LIMIT 10 OFFSET 0;