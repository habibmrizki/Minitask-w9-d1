CREATE TYPE type_role AS ENUM ('admin', 'user');

CREATE TABLE "users" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "email" VARCHAR(255) NOT NULL UNIQUE,
  "password" TEXT NOT NULL,
  "role" type_role NOT NULL,
  "created_at" TIMESTAMP,
  "update_at" TIMESTAMP
);

CREATE TABLE "profile" (
  "users_id" int PRIMARY KEY,
  "first_name" VARCHAR(255),
  "last_name" VARCHAR(255),
  "phone_number" VARCHAR(50),
  "profile_image" VARCHAR(255),
  "point" INT,
  CONSTRAINT "profile_users_id_fkey" FOREIGN KEY ("users_id") REFERENCES "users"("id")
);

CREATE TABLE "director" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" VARCHAR(255)
);

CREATE TABLE "movie" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "director_id" INT,
  "title" VARCHAR(255),
  "synopsis" TEXT,
  "modified_at" TIMESTAMP,
  "popularity" INT,
  "backdrop_path" VARCHAR(255),
  "poster_path" VARCHAR(255),
  "duration" INT,
  "release_date" DATE,
  "created_at" TIMESTAMP,
  "update_at" TIMESTAMP,
  CONSTRAINT "movie_director_id_fkey" FOREIGN KEY ("director_id") REFERENCES "director"("id")
);

CREATE TABLE "genre" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" VARCHAR(50)
);

CREATE TABLE "movies_genre" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "movie_id" INT,
  "genre_id" INT,
  CONSTRAINT "movies_genre_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "movie"("id"),
  CONSTRAINT "movies_genre_genre_id_fkey" FOREIGN KEY ("genre_id") REFERENCES "genre"("id")
);

CREATE TABLE "cast" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" VARCHAR(50)
);

CREATE TABLE "movie_cast" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "movie_id" INT,
  "cast_id" INT,
  CONSTRAINT "movie_cast_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "movie"("id"),
  CONSTRAINT "movie_cast_cast_id_fkey" FOREIGN KEY ("cast_id") REFERENCES "cast"("id")
);

CREATE TABLE "cinema" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL,
  "image_path" VARCHAR
);

CREATE TABLE "time" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "time" TIMESTAMP NOT NULL
);

CREATE TABLE "location" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "location" VARCHAR(50) NOT NULL
);

CREATE TABLE "schedule" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "movie_id" INT,
  "cinema_id" INT,
  "location_id" INT,
  "time_id" INT,
  "date" TIMESTAMP,
  CONSTRAINT "schedule_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "movie"("id"),
  CONSTRAINT "schedule_cinema_id_fkey" FOREIGN KEY ("cinema_id") REFERENCES "cinema"("id"),
  CONSTRAINT "schedule_location_id_fkey" FOREIGN KEY ("location_id") REFERENCES "location"("id"),
  CONSTRAINT "schedule_time_id_fkey" FOREIGN KEY ("time_id") REFERENCES "time"("id")
);

CREATE TABLE "payment_method" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL,
  "image_path" VARCHAR(255)
);

CREATE TABLE "orders" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "id_users" INT,
  "id_schedule" INT,
  "id_payment" INT,
  "total_price" INT,
  "ispaid" BOOLEAN,
  "created_at" TIMESTAMP,
  "update_at" TIMESTAMP,
  CONSTRAINT "orders_id_users_fkey" FOREIGN KEY ("id_users") REFERENCES "users"("id"),
  CONSTRAINT "orders_id_schedule_fkey" FOREIGN KEY ("id_schedule") REFERENCES "schedule"("id"),
  CONSTRAINT "orders_id_payment_fkey" FOREIGN KEY ("id_payment") REFERENCES "payment_method"("id")
);

CREATE TABLE "seats" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "seats_code" VARCHAR(10)
);

CREATE TABLE "order_seats" (
  "orders_id" int,
  "seats_id" int,
  PRIMARY KEY ("orders_id", "seats_id"),
  CONSTRAINT "order_seats_orders_id_fkey" FOREIGN KEY ("orders_id") REFERENCES "orders"("id"),
  CONSTRAINT "order_seats_seats_id_fkey" FOREIGN KEY ("seats_id") REFERENCES "seats"("id")
);
