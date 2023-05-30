SELECT count(*) FROM harvesting;

SELECT AVG(quantity) FROM harvesting;

SELECT fruit, AVG(quantity) AS 'average quantity'
FROM harvesting
GROUP BY fruit
ORDER BY 2 DESC;

SELECT fruit, SUM(quantity) AS 'sum quantity'
FROM harvesting
GROUP BY fruit
ORDER BY 2 DESC;

SELECT MAX(quantity) AS 'max quantity'
FROM harvesting;

SELECT fruit, min(quantity) AS 'min quantity'
FROM harvesting
GROUP BY fruit
ORDER BY 2;
