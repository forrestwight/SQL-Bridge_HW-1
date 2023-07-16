-- SQL Bridge Homework #1 --
-- Forrest Wight --

-- Question 1 --
SELECT origin, dest, distance FROM flights ORDER BY distance DESC;
-- Answer 1: JFK to HNL, dist = 4983 --

-- Question 2a --
SeLeCt distinct engines from planes ORDER BY engines DeSc;
-- Answer 2a: 4, 3, 2, 1 --

-- Question 2b --
(select engines, tailnum, seats from planes where (engines = 4) ORDER BY seats DESC LIMIT 1) UNION
(select engines, tailnum, seats from planes where (engines = 3) ORDER BY seats DESC LIMIT 1) UNION
(select engines, tailnum, seats from planes where (engines = 2) ORDER BY seats DESC LIMIT 1) UNION
(select engines, tailnum, seats from planes where (engines = 1) ORDER BY seats DESC LIMIT 1);
-- Answer 2b: 4/N670US/450, 3/N854NW/379, 2/N206UA/400, 1/N567AA/16 --

-- Question 3 --
SELECT COUNT(*) AS total_flights FROM flights;
-- Answer 3: 857 --

-- Question 4 --
SELECT carrier, COUNT(*) AS total_flights FROM flights GROUP BY carrier ORDER BY carrier;
-- Answer 4: Total flights by airline --

-- Question 5 --
SELECT carrier, COUNT(*) AS total_flights FROM flights GROUP BY carrier ORDER BY total_flights DESC;
-- Answer 5: Airlines ordered by total flights/desc --

-- Question 6 --
SELECT carrier, COUNT(*) AS total_flights FROM flights GROUP BY carrier ORDER BY total_flights DESC LIMIT 5;
-- Answer 6: Top 5 airlines ordered by total flights/desc --

-- Question 7 --
SELECT carrier, COUNT(*) AS total_flights FROM flights WHERE distance >= 1000 GROUP BY carrier ORDER BY total_flights DESC LIMIT 5;
-- Answer 7: Top 5 airlines by totals flights/desc dist >= 1000 --

-- Question 8--
-- 8.) Show the airlines with the longest average departure delay in descending order --
SELECT carrier, AVG(dep_delay) AS avg_delay FROM flights GROUP BY carrier ORDER BY avg_delay DESC;
-- Answer 8: Airlines ordered by average departure delay/desc --
SELECT carrier, AVG(dep_delay) AS avg_delay FROM flights GROUP BY carrier ORDER BY avg_delay DESC;
