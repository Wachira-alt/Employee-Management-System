-- INNER JOIN -- Get all employees with their department info

SELECT 
  employees.full_name,
  employees.email,
  employees.role
  departments.name AS department_name,
  departments.location
FROM employees
INNER JOIN departments ON employeees.department_id = departments.id;


--LEFT JOIN : Get all employees including those without a department

SELECT 
  employees.full_name,
  employees.email,
  employees.role
  departments.name AS department_name,
  departments.location
FROM employees
LEFT JOIN departments ON employeees.department_id = departments.id;

-- Find employees with no department assigned
SELECT
  full_name,
  email,
  role
FROM employees
WHERE department_id IS NULL;

-- Find departments WITHOUT any employees assigned
SELECT
  departments.name,
  departments.location
FROM departments
LEFT JOIN employees ON employees.department_id = departments.id
WHERE employees.id IS NULL;

