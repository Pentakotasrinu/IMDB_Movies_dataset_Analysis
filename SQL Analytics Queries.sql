CREATE DATABASE IF NOT EXISTS imdb_movies_analysis;
use imdb_movies_analysis;
CREATE TABLE movies1 (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(50),
    rating DECIMAL(3,1),
    budget_million DECIMAL(10,2),
    gross_million DECIMAL(10,2),
    director VARCHAR(100),
    lead_actor VARCHAR(100),
    release_year INT
);


ALTER TABLE movies1
ADD COLUMN profit_million DECIMAL(10,2);

select * from movies1;

-- 1. Top 10 Highest Grossing Movies by Year
SELECT *
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY release_year ORDER BY gross_million DESC) AS rnk
    FROM movies1
) t
WHERE rnk <= 10;

-- 2. Rating Distribution by Genre
SELECT genre, AVG(rating) AS avg_rating, COUNT(*) AS total_movies
FROM movies1
GROUP BY genre
ORDER BY avg_rating DESC;

-- 3. Top 5 Directors by Average Rating
SELECT director, AVG(rating) AS avg_rating
FROM movies1
GROUP BY director
HAVING COUNT(*) >= 3
ORDER BY avg_rating DESC
LIMIT 5;

-- 4. Most Profitable Genre
SELECT genre,
       SUM(gross_million - budget_million) AS total_profit
FROM movies1
GROUP BY genre
ORDER BY total_profit DESC;
DROP TABLE imdb_analysis.movies;