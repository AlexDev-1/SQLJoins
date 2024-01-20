-- write your queries here

SELECT * 
FROM owners o
FULL OUTER JOIN vehicles v
    ON o.id = v.owner_id;

SELECT o.first_name, o.last_name, COUNT(v.owner_id) AS vehicle_count
FROM owners o
JOIN vehicles v 
    ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
ORDER BY o.first_name ASC;

SELECT o.first_name
    , o.last_name
    , COUNT(v.owner_id) AS count
    , ROUND(AVG(price)) AS average_price
FROM owners o
JOIN vehicles v 
    ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
HAVING count > 1 AND average_price > 10000
ORDER BY o.first_name DESC;