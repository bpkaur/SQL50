/* Write your PL/SQL query statement below */
WITH cats AS
(SELECT 
CASE WHEN income < 20000 THEN 1 ELSE 0 END AS low,
CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 ELSE 0 END AS average,
CASE WHEN income > 50000 THEN 1 ELSE 0 END AS high
FROM Accounts)

SELECT 'Low Salary' AS category, sum(low) AS accounts_count
FROM cats
UNION ALL
SELECT 'Average Salary' AS category, sum(average) AS accounts_count
FROM cats
UNION ALL
SELECT 'High Salary' AS category, sum(high) AS accounts_count
FROM cats;

