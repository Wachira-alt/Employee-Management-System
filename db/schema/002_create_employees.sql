CREATE TABLE IF NOT EXISTS employees(
  id INTEGER PRIMARY KEY,
  full_name TEXT NOT NULL,
  email TEXT NOT NULL,
  hire_date TEXT NOT NULL,
  role TEXT NOT NULL,
  department_id INTEGER,
  FOREIGN KEY (department_id) references departments(id)
   ON DELETE SET NULL  
   ON UPDATE CASCADE 

);

--ON DELETE SET NULL -> if a department is deleted, don't delete the employee, just remove the link

--ON UPDATE CASCADE -> if dep ID changes, update here too

--applying it --> $ sqlite3 db/library.db < db/schema/002_create_employees.sql
