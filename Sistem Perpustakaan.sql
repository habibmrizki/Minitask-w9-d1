CREATE TABLE categories (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL 
);

CREATE TABLE members (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL
);

CREATE TABLE librarians (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL
);


CREATE TABLE bookshelves (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  category_id int
);


CREATE TABLE books (
  id serial PRIMARY KEY,
  title varchar(255) NOT NULL,
  author varchar(255) NOT NULL,
  category_id int,
  bookshelve_id int
);


CREATE TABLE borrowing (
  id serial PRIMARY KEY,
  book_id int NOT NULL,
  member_id int NOT NULL,
  librarian_id int NOT NULL,
  created_at timestamp 
);

INSERT INTO categories (name) VALUES 
('Fiksi'), ('Non-fiksi');


INSERT INTO bookshelves (name, category_id) VALUES 
('Rak Fiksi Populer', 1),
('Rak Sejarah', 2),
('Rak Agama dan Motivasi', 1), 
('Rak Novel Romantis', 1),
('Rak Biografi dan Sejarah', 2); 


INSERT INTO members (name) VALUES 
('Yusuf'), ('Sidiq'), ('Christian'), ('Radif'), ('Federus'),
('Habib'), ('Farid'), ('Anggi'), ('Slamet'), ('Titus'), ('Rayhan'),
('Lala'), ('Febri');


INSERT INTO librarians (name) VALUES 
('Joko'), ('Budi'), ('Bambang'), ('Tejo'), ('Petrus'),
('Dimas'), ('Barokah'), ('Feri'), ('Badu'), ('Titus');


INSERT INTO books (title, author, category_id, bookshelve_id) VALUES
('Laskar Pelangi', 'Andrea Hirata', 1, 1),
('Bumi Manusia', 'Pramoedya Ananta Toer', 1, 2),
('Negeri 5 Menara', 'A. Fuadi', 1, 3),
('Perahu Kertas', 'Dee Lestari', 1, 4),
('Habis Gelap Terbitlah Terang', 'R.A. Kartini', 2, 5);

INSERT INTO borrowing (book_id, member_id, librarian_id, created_at) VALUES
  (4, 7, 1, NOW()),
  (2, 3, 2, NOW()),
  (5, 1, 3, NOW()),
  (1, 10, 1, NOW()),
  (3, 5, 2, NOW());


ALTER TABLE "books" ADD FOREIGN KEY ("bookshelve_id") REFERENCES "bookshelves" ("id");
ALTER TABLE "bookshelves" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");
ALTER TABLE "borrowing" ADD FOREIGN KEY ("book_id") REFERENCES "books" ("id");
ALTER TABLE "borrowing" ADD FOREIGN KEY ("member_id") REFERENCES "members" ("id");
ALTER TABLE "borrowing" ADD FOREIGN KEY ("librarian_id") REFERENCES "librarians" ("id");

select * from "books" 
select book_id, member_id, librarian_id, created_at from borrowing 
select id, name from librarians
select * from "members"
select * from "bookshelves"