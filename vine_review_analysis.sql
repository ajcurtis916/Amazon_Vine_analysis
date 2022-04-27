-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

-- check import
SELECT * FROM vine_table;
SELECT COUNT(review_id) FROM vine_table;

-- create filtered vine table total votes <= 20
SELECT *
INTO filtered_vine
FROM vine_table
WHERE (total_votes >= 20);

SELECT * FROM filtered_vine;
SELECT COUNT(*) FROM filtered_vine;

-- filter filtered_vine table where helpful_votes / total_votes is >= 50%
SELECT *
INTO helpful_total
FROM filtered_vine
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >= 0.5;

SELECT * FROM helpful_total;
SELECT COUNT(*) FROM helpful_total;

-- filter for rows w/ vine reviews
SELECT *
INTO vine_reviews
FROM helpful_total
WHERE (vine = 'Y');

SELECT * FROM vine_reviews;
SELECT COUNT(*) FROM vine_reviews;

-- filter for rows w/o vine reviews
SELECT *
INTO non_vine_reviews
FROM helpful_total
WHERE (vine = 'N');

SELECT * FROM non_vine_reviews;
SELECT COUNT(*) FROM non_vine_reviews;

-- create tables for analysis
CREATE TABLE paid_reviews(
	total_reviews INT);

CREATE TABLE unpaid_reviews(
	total_reviews INT);

CREATE TABLE paid_5_stars(
	fivestar_count INT);

CREATE TABLE unpaid_5_stars(
	fivestar_count INT);

-- determine total number of reviews paid
INSERT INTO paid_reviews(total_reviews)
SELECT COUNT(review_id) FROM vine_reviews;
SELECT * FROM paid_reviews;

-- number of reviews unpaid
INSERT INTO unpaid_reviews(total_reviews)
SELECT COUNT(review_id) FROM non_vine_reviews;
SELECT * FROM unpaid_reviews;

-- number of 5-star reviews paid
INSERT INTO paid_5_stars(fivestar_count)
SELECT COUNT(star_rating) FROM vine_reviews
WHERE (star_rating=5);
SELECT * FROM paid_5_stars;

-- number of 5-star reviews unpaid
INSERT INTO unpaid_5_stars(fivestar_count)
SELECT COUNT(star_rating) FROM non_vine_reviews
WHERE (star_rating=5);
SELECT * FROM unpaid_5_stars;



-- join and fill tables
SELECT total_paid.total_reviews, paid_5_stars.fivestar_count
INTO paid_review_temp
FROM total_paid
INNER JOIN paid_5_stars ON 1=1;

SELECT total_reviews, fivestar_count, CAST(fivestar_count as FLOAT)/CAST(total_reviews as FLOAT)
FROM paid_review_temp;



