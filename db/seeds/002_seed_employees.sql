INSERT INTO employees (full_name, email, hire_date, role, department_id)
VALUES
  ('Alice Mumbi', 'alice.mumbi@example.com', '2023-01-15', 'Software Engineer', 1),
  ('Brian Otieno', 'brian.otieno@example.com', '2022-11-05', 'Systems Analyst', 2),
  ('Carol Njeri', 'carol.njeri@example.com', '2024-02-20', 'HR Specialist', 3),
  ('Daniel Kiptoo', 'daniel.kiptoo@example.com', '2021-07-10', 'Software Engineer', 1);



--  applying it -> $ sqlite3 db/library.db < db/seeds/002_seed_employees.sql
