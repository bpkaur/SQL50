/* Write your PL/SQL query statement below */
SELECT max(salary) AS SecondHighestSalary
FROM Employee
WHERE salary NOT IN
(SELECT max(salary) FROM Employee);