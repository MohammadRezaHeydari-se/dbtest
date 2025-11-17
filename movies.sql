# Creating database for movies
CREATE DATABASE IF NOT EXISTS Movies_DB;

USE Movies_DB;

# Creating table for movies information once 
CREATE TABLE IF NOT EXISTS  Movies (
MovieID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(255) NOT NULL,
Director VARCHAR(255),
Genre VARCHAR(100),
ReleaseYear YEAR,
Rating DECIMAL(3, 1),
RuntimeMinutes SMALLINT
) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_swedish_ci;

/*
# Inseert information into movies table
INSERT INTO Movies (MovieID, Title, Director, Genre, ReleaseYear, Rating, RuntimeMinutes) VALUES
(1, 'Epic Journey', 'John Smith', 'Adventure', 1994, 9.3, 142),
(2, 'The Great Heist', 'Alice Johnson', 'Crime', 1972, 9.2, 175),
(3, 'Revolutionary Road', 'Robert Brown', 'Drama', 1974, 9.0, 202),
(4, 'Fight for Honor', 'Chris Green', 'Action', 2008, 9.0, 152),
(5, 'Galactic Battles', 'Lucy White', 'Sci-Fi', 1980, 8.9, 124),
(6, 'The Mystery of Time', 'Daniel Lee', 'Thriller', 1995, 8.9, 139),
(7, 'Legends of Tomorrow', 'Sarah Carter', 'Fantasy', 2003, 8.9, 201),
(8, 'The Last Emperor', 'Kevin Young', 'History', 1993, 8.8, 195),
(9, 'Warriors Fate', 'Rachel King', 'Action', 1994, 8.8, 154),
(10, 'Oceans Whisper', 'Gary Wilson', 'Drama', 1999, 8.8, 189),
(11, 'The Eternal City', 'Anne Taylor', 'Romance', 1946, 8.8, 104),
(12, 'Desert Mirage', 'Frank Martin', 'Adventure', 1966, 8.7, 161),
(13, 'Space Odyssey', 'Laura Garcia', 'Sci-Fi', 2012, 8.7, 148),
(14, 'The Lost Kingdom', 'Brian Davis', 'Fantasy', 2001, 8.7, 178),
(15, 'Unseen Enemy', 'Sophie Turner', 'Thriller', 1990, 8.7, 136),
(16, 'Journey Through Time', 'George Walker', 'Sci-Fi', 1985, 8.6, 116),
(17, 'Undercover Mission', 'Emily Scott', 'Action', 1979, 8.6, 127),
(18, 'The Forgotten Land', 'Michael Brown', 'Adventure', 1957, 8.6, 119),
(19, 'Road to Freedom', 'Helen Lee', 'Drama', 2006, 8.5, 133),
(20, 'Mystery of the Abyss', 'Oliver Jones', 'Mystery', 1997, 8.5, 141);
*/

# 1.Show all movies
SELECT * FROM Movies mov;

# 2.Show all movies base on diffrents Genre
SELECT * FROM Movies mov
WHERE Genre = 'Drama'; # Drama movies

SELECT * FROM Movies mov
WHERE Genre = 'Action'; # Action movies

SELECT * FROM Movies mov
WHERE Genre = 'Adventure'; # Adventure movies

SELECT * FROM Movies mov
WHERE Genre = 'Mystery'; # Mystery movies

SELECT * FROM Movies mov
WHERE Genre = 'Sci-Fi'; # Sci-Fi movies

# 3.Show all movies base on ReleaseYear ordning 
SELECT * FROM Movies mov
ORDER BY ReleaseYear ASC; # Oldest first

SELECT * FROM Movies mov
ORDER BY ReleaseYear DESC; # Newest first

# 3.Show all movies base on Rating ordning 
SELECT * FROM Movies mov
ORDER BY Rating ASC; # Lowest rate first

SELECT * FROM Movies mov
ORDER BY Rating DESC; # Higher rate first

# 4.Updat Rating for "The Great Heist"
UPDATE Movies
SET Rating = 10
WHERE Title = "The Great Heist";

# 5.Counting base on Genre
SELECT Genre, COUNT(*) AS NUMBER_OF_MOVIE FROM Movies mov
GROUP BY Genre;

# 6.Show only Title and Director
SELECT Title, Director FROM Movies;

# 7.Show movies efter specific year like 1999
SELECT * FROM Movies
WHERE ReleaseYear > 1999;

# 8.Update app RuntimeMinutes for a specific Genre 
UPDATE Movies
SET RuntimeMinutes = 200
WHERE Genre = 'Action';

# 9.Show top 5 movies base on rate
SELECT * FROM Movies
ORDER BY Rating DESC LIMIT 5;

# 10.Sshow all Movies of one Director
SELECT * FROM Movies
WHERE Director = 'Alice Johnson';

# 11.Show number of movies for evry Director
SELECT Director, COUNT(*) AS NUMBER_OF_MOVIE FROM Movies mov
GROUP BY Director;


























