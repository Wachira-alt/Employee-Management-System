-- fetching employees name alongside the projects they are working on (many to many)

SELECT 
   e.firstname|| "" || e.lastname AS employee_name,
   p.name AS project_name,
   ep.role
FROM employee_projects ep 
JOIN employees e ON ep.employee_id = e.id 
JOIN projects p ON ep.project_id = p.id;

-- LEFT JOIN to show employees with no projects

SELECT
    e.id,
    e.first_name || ' ' || e.last_name AS employee_name,
    p.name AS project_name
FROM employees e
LEFT JOIN employee_projects ep ON e.id = ep.employee_id
LEFT JOIN projects p ON ep.project_id = p.id
WHERE p.id IS NULL;
