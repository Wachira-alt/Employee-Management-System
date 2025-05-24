-- JOINS
-- Why we need Joins
-- in a school database, you have a table of students and a table of classes- to answer the question "what class is each student enrolled in" - you need to combine (JOIN) the two tables based on the class ID

--PRIMARY KEY -> uniquely identifies an object(row)
--FOREIGN KEY -> A value that links one object to another


-- WHAT IS A JOIN -> a JOIN combines two or objects(rows)  based on related columns between them

--TYPES OF JOINS
--INNER JOIN --> Only objects(rows) where the match exist in both tables
--LEFT JOIN --> All objects(rows) from the left table plus the rows from the right

-- 👔 employees

-- | id | name  | position   | department\_id |
-- | -- | ----- | ---------- | -------------- |
-- | 1  | Alice | Developer  | 1              |
-- | 2  | Bob   | HR Manager | 2              |
-- | 3  | Carol | Accountant | NULL           |


-- 🏢 departments

-- | id | name            |
-- | -- | --------------- |
-- | 1  | Engineering     |
-- | 2  | Human Resources |



-- In Hotel Management System 
-- we want to answer the question "which department does each employee belong to"
-- N/B -> in employee - department_id(foreign key)
--     --> in department - id (primary key)
--     --> we assume not all employees have been assigned a department


--- INNER JOIN (Only employees who have departments are listed)

SELECT
  employees.name AS employee_name,
  employees.position,
  departments.name AS department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id;

--RESULTS
-- | employee_name | position   | department_name |
-- | -------------- | ---------- | ---------------- |
-- | Alice          | Developer  | Engineering      |
-- | Bob            | HR Manager | Human Resources  |


--    LEFT JOIN (Show all employees even if no department assigned)

SELECT
  employees.name as employee_name,
  employees.position,
  departments.name as department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = department.id;

-- ✅ Result:

-- | employee_name | position   | department_name |
-- | -------------- | ---------- | ---------------- |
-- | Alice          | Developer  | Engineering      |
-- | Bob            | HR Manager | Human Resources  |
-- | Carol          | Accountant | NULL             |


-- RIGHT JOIN (Show all departments, even if no employee(flipped LEFT JOIN))
-- we want to see what departments have employees assigned

SELECT
departments.name AS department_name,
employees.name AS employee_name
FROM departments
LEFT JOIN employees
ON departments.id = employees.department_id;

-- ✅ Result:
-- | department_name | employee_name |
-- | ---------------- | -------------- |
-- | Engineering      | Alice          |
-- | Human Resources  | Bob            |


   -- RELATIONSHIPS

-- ONE TO MANY -> achieved using a foreign key
-- MANY TO MANY -> achieved usinga join table
-- JOIN TABLE DESIGN --> has to foreign keys- example employee_project(project id, employee.id)


 


