SELECT engines, seats FROM planes WHERE ENGINES = 3 order by SEATS DESC lImIt 10000;
-- Question 1 --
SELECT origin, dest, distance FROM flights ORDER BY distance DESC;
-- Question 2a --
SeLeCt distinct engines from planes ORDER BY engines DeSc;
-- Question 2b --
(select engines, tailnum, seats from planes where (engines = 4) ORDER BY seats DESC LIMIT 1) UNION
(select engines, tailnum, seats from planes where (engines = 3) ORDER BY seats DESC LIMIT 1) UNION
(select engines, tailnum, seats from planes where (engines = 2) ORDER BY seats DESC LIMIT 1) UNION
(select engines, tailnum, seats from planes where (engines = 1) ORDER BY seats DESC LIMIT 1);
-- Question 3 --
SELECT COUNT(*) AS total_flights FROM flights;
-- Question 4 --
SELECT carrier, COUNT(*) AS total_flights FROM flights GROUP BY carrier;
-- Question 5 --
SELECT carrier, COUNT(*) AS total_flights FROM flights GROUP BY carrier ORDER BY total_flights DESC;
SELECT * FROM airlines;
-- Question 6 --
SELECT carrier, COUNT(*) AS total_flights FROM flights GROUP BY carrier ORDER BY total_flights DESC LIMIT 5;
-- Question 7 --
SELECT carrier, COUNT(*) AS total_flights FROM flights WHERE distance >= 1000 GROUP BY carrier ORDER BY total_flights DESC LIMIT 5;
-- Question 8--
-- 8.) Show the airlines with the longest average departure delay in descending order, where a positive value is a delayed departure and a negative value is an early departure) --
SELECT carrier, AVG(dep_delay) AS avg_delay FROM flights GROUP BY carrier ORDER BY avg_delay DESC;