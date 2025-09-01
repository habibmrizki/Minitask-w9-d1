
UPDATE movie
SET
  director_id = 1, 
  title = 'Judul Film Baru',
  synopsis = 'Sinopsis yang diperbarui dan lebih lengkap.',
  popularity = 1200,
  backdrop_path = 'https://path/to/backdrop_new.jpg',
  poster_path = 'https://path/to/poster_new.jpg',
  duration = 150,
  release_date = '2025-12-25',
  director_name = 'Nama Direktur Baru',
  update_at = NOW()
WHERE id = 1;