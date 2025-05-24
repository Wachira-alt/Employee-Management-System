# Employee Management System (SQL-Based)

This is a real-world SQL project that simulates how companies manage their employees, departments, roles, and project assignments. It demonstrates how to structure and query relational databases using best practices.

## Project Overview

The system is designed to:
- Track departments and the roles associated with each
- Manage employees and assign them to specific roles
- Create and manage company projects
- Assign employees to multiple projects
- Perform complex queries to retrieve business insights

The project is built using raw SQL with a focus on normalization, relationships, and data integrity.


## Technologies

- PostgreSQL syntax
- Relational schema design
- Foreign key constraints
- Many-to-many relationships
- SQL joins and subqueries

## Schema Relationships

- One-to-many:
  - A department has many roles
  - A role has many employees

- Many-to-many:
  - An employee can be assigned to multiple projects
  - A project can have multiple employees

## Key SQL Features Used

- CREATE TABLE with constraints
- INSERT, UPDATE, DELETE
- SELECT with JOINs (INNER, LEFT)
- Subqueries
- ON DELETE CASCADE
- Grouping and filtering data

## Sample Queries

### List all employees with their department names

```sql
SELECT e.first_name, e.last_name, d.name AS department
FROM employees e
JOIN roles r ON e.role_id = r.id
JOIN departments d ON r.department_id = d.id;
SELECT e.first_name, e.last_name
FROM employees e
LEFT JOIN employee_projects ep ON e.id = ep.employee_id
WHERE ep.project_id IS NULL;
DELETE FROM projects WHERE id = 3;
-- This works if ON DELETE CASCADE is set on employee_projects.project_id






