SELECT id, title, created_at, poster_path, popularity
FROM movie
ORDER BY created_at DESC
LIMIT 50 OFFSET 0;