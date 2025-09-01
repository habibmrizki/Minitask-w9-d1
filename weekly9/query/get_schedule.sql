SELECT
  S.id,
  S.date,
  C.name AS cinema_name,
  L.location,
  T.time
FROM schedule AS S
JOIN cinema AS C ON S.cinema_id = C.id
JOIN location AS L ON S.location_id = L.id
JOIN time AS T ON S.time_id = T.id
WHERE S.movie_id = movie_id;