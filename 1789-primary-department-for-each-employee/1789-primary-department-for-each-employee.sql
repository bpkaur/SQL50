/* Write your PL/SQL query statement below */
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y' or employee_id in 
(SELECT employee_id 
FROM employee 
GROUP BY employee_id 
HAVING count(department_id) = 1);
 
