show databases;
use project_movie_database;
show tables;
select * from directors;
select * from movies;

-- Can you get all data about movies? 
SELECT 
    *
FROM
    movies;

-- How do you get all data about directors?
SELECT 
    *
FROM
    directors;

-- Check how many movies are present in IMDB
SELECT 
    COUNT(*)
FROM
    movies;

-- Find these 3 directors: James Cameron ; Luc Besson ; John Woo
SELECT 
    *
FROM
    directors
WHERE
    name IN ('James Cameron' , 'Luc Besson', 'John Woo');

-- Find all directors with name starting with S.
SELECT 
    *
FROM
    directors
WHERE
    name LIKE 'a%';

-- Count female directors.
SELECT 
    COUNT(*) AS female_directors
FROM
    directors
WHERE
    gender = 1;

-- Find the name of the 10th first women directors?
SELECT 
    name
FROM
    directors
WHERE
    gender = 1
ORDER BY name
LIMIT 1 OFFSET 9;

-- What are the 3 most popular movies?
SELECT 
    original_title, popularity
FROM
    movies
ORDER BY popularity DESC
LIMIT 3;

-- What are the 3 most bankable movies?
SELECT 
    original_title, revenue
FROM
    movies
ORDER BY revenue DESC
LIMIT 3;

-- What is the most awarded average vote since the January 1st, 2000?
SELECT 
    original_title, vote_average, release_date
FROM
    movies
WHERE
    release_date >= '2000-01-01'
ORDER BY vote_average DESC
LIMIT 1;

-- Which movie(s) were directed by Brenda Chapman?
SELECT 
    m.title
FROM
    movies m
        JOIN
    directors d ON m.id = d.uid
WHERE
    d.name = 'Brenda Chapman';

-- Which director made the most movies?
SELECT 
    d.name, COUNT(m.id) AS movie_count
FROM
    directors d
        JOIN
    movies m ON d.id = m.director_id
GROUP BY d.name
ORDER BY movie_count DESC
LIMIT 1;

-- Which director is the most bankable?
SELECT 
    d.name, SUM(m.revenue) AS total_revenue
FROM
    directors d
        JOIN
    movies m ON d.id = m.director_id
GROUP BY d.name
ORDER BY total_revenue DESC
LIMIT 1;