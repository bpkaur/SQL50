/* Write your PL/SQL query statement below */
SELECT a.employee_id, a.name,
count(b.reports_to) as reports_count,
round(avg(b.age)) as average_age
FROM Employees a
JOIN Employees b
ON a.employee_id = b.reports_to
GROUP BY a.employee_id, a.name
ORDER BY employee_id;

