/* Write your PL/SQL query statement below */
SELECT to_char(sell_date) sell_date, 
count(distinct product) as num_sold,
LISTAGG(product , ',') WITHIN GROUP (ORDER BY product) as products
FROM (SELECT distinct * FROM Activities)
GROUP BY sell_date
ORDER BY sell_date;