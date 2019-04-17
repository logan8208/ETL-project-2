-- Create and use customer_db
 CREATE DATABASE youtube_db;
 USE youtube_db;

-- Create tables for raw data to be loaded into
CREATE TABLE youtube (
  trending_date TEXT,
  category_id INT,
  views INT,
  country_id INT
);

CREATE TABLE population (
  country_id INT,
  country TEXT,
  population INT
);

CREATE TABLE category (
  category_id INT,
  category TEXT
);

CREATE TABLE category (
  category_id INT,
  category TEXT
);

CREATE TABLE youtube_trending (
  trending_date TEXT,
  category_id INT,
  views INT,
  country_id INT,
  Country TEXT,
  Population INT,
  category TEXT
);

SELECT *
FROM youtube AS Y
JOIN population AS P ON P.country_id = Y.country_id
JOIN category AS C ON C.category_id = Y.category_id;
