-- Data untuk tabel "users"
INSERT INTO "users" ( "email", "password", "role", "created_at", "update_at") VALUES
('admin@gmail.com', 'admin123', 'admin', NOW(), NOW()),
('jokosusanto@gmail.com', 'joko123', 'user', NOW(), NOW()),
('sitinurhasanah@gmail.com', 'siti123', 'user', NOW(), NOW()),
('habibmrizki@gmail.com','habib123','user',NOW(),NOW());

-- Data untuk tabel "profile"
INSERT INTO "profile" ("users_id", "first_name", "last_name", "phone_number", "profile_image", "point") VALUES
(1, 'Admin', 'Sistem', '081234567890', 'https://placehold.co/150x150/000000/FFFFFF?text=A', 1000),
(2, 'Joko', 'Susanto', '082198765432', 'https://placehold.co/150x150/FF0000/FFFFFF?text=J', 250),
(3, 'Siti', 'Nurhasanah', '085711223344', 'https://placehold.co/150x150/00FF00/FFFFFF?text=S', 50),
(4, 'Habib','Rizki','081212345678','https://placehold.co/150x150/0000FF/FFFFFF?text=H',300);

-- Data untuk tabel "director"
INSERT INTO "director" ("name") VALUES
( 'Christopher Nolan'),
( 'Greta Gerwig'),
( 'Lana Wachowski'),
( 'Denis Villeneuve'),
( 'Todd Phillips'),
( 'Matt Reeves');

-- Data untuk tabel "movie"
INSERT INTO "movie" ("director_id", "title", "synopsis", "modified_at", "popularity", "backdrop_path", "poster_path", "duration", "release_date", "created_at", "update_at") VALUES
(1, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', NOW(), 95, 'https://placehold.co/1280x720/000000/FFFFFF?text=Inception+Backdrop', 'https://placehold.co/300x450/000000/FFFFFF?text=Inception+Poster', 148, '2010-07-16', NOW(), NOW()),
(2, 'Barbie', 'A doll living in Barbie Land is expelled for not being perfect enough and sets off on an adventure in the real world.', NOW(), 98, 'https://placehold.co/1280x720/FF00FF/FFFFFF?text=Barbie+Backdrop', 'https://placehold.co/300x450/FF00FF/FFFFFF?text=Barbie+Poster', 114, '2023-07-21', NOW(), NOW()),
(3, 'Interstellar', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', NOW(), 97, 'https://placehold.co/1280x720/000000/FFFFFF?text=Interstellar', 'https://placehold.co/300x450/000000/FFFFFF?text=Interstellar', 169, '2025-12-15', NOW(), NOW()),
(4, 'The New Barbie Movie', 'Another exciting adventure with Barbie in a new world.', NOW(), 99, 'https://placehold.co/1280x720/FF00FF/FFFFFF?text=New+Barbie+Movie', 'https://placehold.co/300x450/FF00FF/FFFFFF?text=New+Barbie+Movie', 120, '2026-03-20', NOW(), NOW()),
(3, 'The Matrix Resurrections', 'Neo lives a normal life as Thomas A. Anderson until he is offered the red pill to reopen his mind to the world of the Matrix.', NOW(), 63, 'https://placehold.co/1280x720/000000/FFFFFF?text=Matrix+Resurrections+Backdrop', 'https://placehold.co/300x450/000000/FFFFFF?text=Matrix+Resurrections+Poster', 148, '2021-12-22', NOW(), NOW()),
(4, 'Dune: Part Two', 'Paul Atreides unites with Chani and the Fremen to wage war against those who annihilated his family.', NOW(), 92, 'https://placehold.co/1280x720/000000/FFFFFF?text=Dune+Part+Two+Backdrop', 'https://placehold.co/300x450/000000/FFFFFF?text=Dune+Part+Two+Poster', 166, '2024-03-01', NOW(), NOW()),
(5, 'Joker: Folie à Deux', 'Arthur Fleck finds love in Arkham Asylum with Dr. Harleen Quinzel, who later becomes Harley Quinn.', NOW(), 85, 'https://placehold.co/1280x720/000000/FFFFFF?text=Joker+Folie+a+Deux+Backdrop', 'https://placehold.co/300x450/000000/FFFFFF?text=Joker+Folie+a+Deux+Poster', 120, '2025-10-04', NOW(), NOW()),
(6, 'The Batman', 'In his second year of fighting crime, Batman uncovers corruption in Gotham City.', NOW(), 85, 'https://placehold.co/1280x720/000000/FFFFFF?text=The+Batman+Backdrop', 'https://placehold.co/300x450/000000/FFFFFF?text=The+Batman+Poster', 176, '2022-03-04', NOW(), NOW());


-- Data untuk tabel "genre"
INSERT INTO "genre" ( "name") VALUES
( 'Action'),
('Sci-Fi'),
('Fantasy'),
('Comedy'),
('Drama'),
('Thriller'),
('Adventure');

-- Data untuk tabel "movies_genre" (Sudah diperbaiki dan diperbarui)
INSERT INTO "movies_genre" ("movie_id", "genre_id") VALUES
(1, 1), 
(1, 2), 
(1, 3), 
(2, 4), 
(3, 2), 
(3, 5), 
(3, 7), 
(4, 4), 
(5, 2), 
(6, 2), 
(7, 5), 
(7, 6), 
(8, 1), 
(8, 6); 

-- Data untuk tabel "cast"
INSERT INTO "cast" ( "name") VALUES
( 'Leonardo DiCaprio'),
( 'Margot Robbie'),
( 'Ryan Gosling'),
( 'Matthew McConaughey'),
( 'Zoe Saldana'),
( 'Keanu Reeves'),
( 'Carrie-Anne Moss'),
( 'Joaquin Phoenix'),
( 'Robert Pattinson');

-- Data untuk tabel "movie_cast" (Sudah diperbarui)
INSERT INTO "movie_cast" ("movie_id", "cast_id") VALUES
(1, 1), 
(2, 2), 
(2, 3), 
(3, 4), 
(3, 5), 
(5, 6), 
(5, 7), 
(7, 8), 
(8, 9); 

-- Data untuk tabel "cinema"
INSERT INTO "cinema" ( "name", "image_path") VALUES
( 'Cineplex', 'https://placehold.co/150x150/0000FF/FFFFFF?text=Cineplex'),
('Galaxy Theater', 'https://placehold.co/150x150/800080/FFFFFF?text=Galaxy+Theater'),
( 'IMAX', 'https://placehold.co/150x150/FF0000/FFFFFF?text=IMAX'),
( 'Regal Cinemas', 'https://placehold.co/150x150/008000/FFFFFF?text=Regal+Cinemas');

-- Data untuk tabel "time"
INSERT INTO "time" ( "time") VALUES
( '2025-08-31 09:00:00'),
('2025-08-31 12:00:00'),
( '2025-08-31 15:00:00'),
('2025-08-31 18:00:00'),
( '2025-08-31 21:00:00');

-- Data untuk tabel "location"
INSERT INTO "location" ("location") VALUES
( 'Jakarta'),
('Surabaya'),
( 'Bandung'),
('Yogyakarta'),
( 'Medan');

-- Data untuk tabel "schedule"
INSERT INTO "schedule" ( "movie_id", "cinema_id", "location_id", "time_id", "date") VALUES
( 1, 1, 1, 1, '2025-08-31'),
( 2, 2, 2, 2, '2025-08-31'),
( 1, 3, 3, 3, '2025-08-31'),
( 2, 4, 4, 4, '2025-08-31');

-- Data untuk tabel "payment_method"
INSERT INTO "payment_method" ("name", "image_path") VALUES
( 'Credit Card', 'https://placehold.co/100x50/F0F8FF/000000?text=CreditCard'),
( 'E-Wallet', 'https://placehold.co/100x50/F5DEB3/000000?text=E-Wallet'),
( 'Bank Transfer', 'https://placehold.co/100x50/FFE4C4/000000?text=BankTransfer');

-- Data untuk tabel "orders"
INSERT INTO "orders" ("id_users", "id_schedule", "id_payment", "total_price", "ispaid", "created_at", "update_at") VALUES
( 2, 1, 1, 75000, TRUE, NOW(), NOW()),
(3, 2, 2, 50000, FALSE, NOW(), NOW());

-- Data untuk tabel "seats"
INSERT INTO "seats" ( "seats_code") VALUES
( 'A1'),
('A2'),
( 'B1'),
( 'B2');

-- Data untuk tabel "order_seats"
INSERT INTO "order_seats" ("orders_id", "seats_id") VALUES
(1, 1),
(1, 2),
(2, 3);
