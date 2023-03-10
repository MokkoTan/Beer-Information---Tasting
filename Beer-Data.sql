-- Rename Table

ALTER TABLE beer_data RENAME TO beer;

ALTER TABLE beer RENAME COLUMN "key" TO beer_id;
ALTER TABLE beer RENAME COLUMN "Name" TO beer_name;
ALTER TABLE beer RENAME COLUMN "Style" TO beer_style;
ALTER TABLE beer RENAME COLUMN "Style Key" TO style_key;
ALTER TABLE beer RENAME COLUMN "Ave Rating" TO ave_rating;
ALTER TABLE beer RENAME COLUMN "Brewery" TO brewery;

ALTER TABLE beer ALTER COLUMN beer_id TYPE integer USING (beer_id::integer);

CREATE TABLE top_50_beer
AS SELECT "beer_id", "style_key", "ave_rating"
FROM beer;

CREATE TABLE beer_style
AS SELECT "beer_id", "beer_name", "style_key", "ave_rating"
FROM beer;

CREATE TABLE brewery
AS SELECT "beer_id", "beer_name"
FROM beer;

CREATE TABLE mouthfeel
AS SELECT "beer_id", "ave_rating", "Astringency", "Body", "Alcohol"
FROM beer;

CREATE TABLE taste
AS SELECT "beer_id", "ave_rating","Bitter", "Sweet", "Sour", "Salty"
FROM beer;

CREATE TABLE flavor_aroma
AS SELECT "beer_id", "ave_rating","Fruits", "Hoppy", "Spices", "Malty"
FROM beer;


-- To check on the table

SELECT *
FROM top_50_beer;

SELECT *
FROM beer_style;

SELECT *
FROM brewery;

SELECT *
FROM mouthfeel
ORDER BY "ave_rating" DESC;

SELECT *
FROM taste
ORDER BY "ave_rating" DESC;

SELECT *
FROM flavor_aroma
ORDER BY "ave_rating" DESC;

-- Q1 
SELECT "beer_id", "beer_name", "brewery", "ave_rating"
FROM beer
ORDER BY "ave_rating" DESC
LIMIT 5;

-- Q2 
SELECT *
FROM beer_style
LEFT JOIN brewery
ON beer_style.beer_id = brewery.beer_id
ORDER BY "ave_rating" DESC
LIMIT 5;

-- Q3
SELECT * 
FROM top_50_beer
LEFT JOIN mouthfeel
ON top_50_beer.beer_id = mouthfeel.beer_id
LEFT JOIN taste
ON taste.beer_id = mouthfeel.beer_id
LEFT JOIN flavor_aroma
ON flavor_aroma.beer_id = taste.beer_id;


SELECT "brewery", COUNT ("brewery") AS nominated
FROM beer
GROUP BY "brewery"
ORDER BY 2 DESC;

SELECT "beer_id", "beer_style", "brewery", "ave_rating"
FROM beer
ORDER BY "ave_rating" DESC
LIMIT 50;

-- highest ave_rating of beer
SELECT *
FROM top_50_beer
LEFT JOIN brewery
ON top_50_beer.beer_id = brewery.beer_id
ORDER BY "ave_rating" DESC
LIMIT 5;

-- Taste reviews
SELECT *
FROM brewery
LEFT JOIN taste
ON brewery.beer_id = taste.beer_id
ORDER BY "ave_rating" DESC
LIMIT 10;

-- Flavor_aroma reviews
SELECT *
FROM brewery
LEFT JOIN flavor_aroma
ON brewery.beer_id = flavor_aroma.beer_id
ORDER BY "ave_rating" DESC
LIMIT 10;

-- product highest no. of beer
SELECT COUNT(brewery)AS total, brewery
FROM beer
GROUP BY 2
ORDER BY 1 DESC;


COPY "beer_profile" TO 'C:\Users\Paul\Documents\Data Analyst\Capstone 2\Beer-Profile.csv' DELIMITER ',' CSV HEADER;
COPY "mouthfeel" TO 'C:\Users\Paul\Documents\Data Analyst\Capstone 2\Mouthfeel.csv' DELIMITER ',' CSV HEADER;
COPY "taste" TO 'C:\Users\Paul\Documents\Data Analyst\Capstone 2\Taste.csv' DELIMITER ',' CSV HEADER;
COPY "flavor_aroma" TO'C:\Users\Paul\Documents\Data Analyst\Capstone 2\Flavor_aroma.csv' DELIMITER ',' CSV HEADER;