SELECT DISTINCT M.id, M.title, M.poster_path, M.synopsis
FROM movie AS M
JOIN movies_genre AS MG ON M.id = MG.movie_id
JOIN genre AS G ON MG.genre_id = G.id
WHERE M.title ILIKE '%inception%' AND G.name = 'Action'
LIMIT 10 OFFSET 0;