SELECT m.name AS manufacturer_name,
       STRING_AGG(g.name, ', ') AS product_names
FROM manufacturers m
JOIN goods g ON m.code = g.manufacturer_code
GROUP BY m.name;

SELECT m.name AS manufacturer_name,
       COUNT(g.code) AS product_count_under_20
FROM manufacturers m
JOIN goods g ON m.code = g.manufacturer_code
WHERE g.price < 20
GROUP BY m.name;

SELECT AVG(price) AS average_price
FROM goods;

SELECT m.name AS manufacturer_name
FROM manufacturers m
JOIN goods g ON m.code = g.manufacturer_code
WHERE g.price < 20
GROUP BY m.name
HAVING COUNT(g.code) > 1;

