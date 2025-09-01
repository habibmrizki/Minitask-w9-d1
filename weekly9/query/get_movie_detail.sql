SELECT
  m.id,
  m.title,
  m.backdrop_path,
  m.synopsis,      
  m.popularity,
  m.poster_path,
  m.release_date,
  m.duration,
  d.name AS director_name, 
  m.created_at,
  m.update_at      
FROM movie AS m 
JOIN director AS d 
  ON m.director_id = d.id
WHERE m.id = 1;