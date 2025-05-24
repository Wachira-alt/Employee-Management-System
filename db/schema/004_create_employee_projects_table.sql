
--relationship many to many
-- an employee can have many projects and one project can be assigned to many employees

CREATE TABLE IF NOT EXISTS employee_projects (
  employee_id INTEGER,
  project_id INTEGER,
  FOREIGN KEY (employee_id) REFERENCES employees(id),
  FOREIGN KEY (project_id) REFERENCES projects(id)
);
