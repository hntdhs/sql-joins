-- first query
SELECT * FROM owners o 
  FULL OUTER JOIN vehicles v 
    ON o.id=v.owner_id;

-- owners is left, vehicles right. so we’re saying id column from owners table is owner id column from vehicles table.

-- second query

SELECT first_name, last_name, COUNT (owner_id) 
FROM owners o JOIN vehicles v on o. id=v. owner_id 
GROUP BY (first_name, last_name)
ORDER BY first_name;
-- when do things need to be inside parentheses? is the indentation in the solution code important?
-- is GROUP BY telling it...what?
-- how does COUNT end up as a column in the table? seems odd that it looks like a command in the code while also ending up as the title of a column.

SELECT 
  first_name, last_name, 
  ROUND(AVG(price)) as average_price, 
  COUNT(owner_id) 
FROM owners o 
JOIN vehicles v on o.id=v.owner_id 
GROUP BY 
  (first_name, last_name) 
HAVING 
  COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 
ORDER BY first_name DESC;
-- I thought vehicles was the right table and owners the left, but we’re selecting from the right table then joining it to the left. Do you not have to do left then right?
-- Is JOIN always followed by something like ‘on o, id=v. owner_id’?


