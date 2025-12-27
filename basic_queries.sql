-- Basic SELECT
SELECT * FROM employees;

-- WHERE clause
SELECT name, salary
FROM employees
WHERE salary > 30000;

-- ORDER BY
SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- GROUP BY
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- HAVING
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;

-- INNER JOIN
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id;

-- Subquery
SELECT name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
