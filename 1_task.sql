SELECT workers.last_name, workers.first_name
FROM workers
ORDER BY passport_no DESC;

SELECT goods.name, round(goods.price / 2 * 10, 2) AS cost
FROM goods
ORDER BY goods.name;