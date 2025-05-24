-- Get all projects assigned to employee with id 1
SELECT projects.name
FROM projects
JOIN employee_projects ON projects_id = employee_projects.project_id
WHERE employee_projects.employee_id = 1;

--Get all employees working on website Redisign

SELECT employees.name
FROM employees
JOIN employee_projects ON employees.id = employee_project.employee_id
JOIN projects ON employee_projects.project_id = projects.id 
WHERE projects.name = 'Website Redesign';



-- JOIN -> just join tables
-- INNER JOIN-> join table on condition
-- WHERE --> Filtering


