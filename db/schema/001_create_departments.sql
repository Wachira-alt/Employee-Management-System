CREATE TABLE IF NOT EXISTS departments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE,
  location TEXT
);

-- run the schema in sqlite $ sqlite3 db/library.db < db/schema/001_create_departments.sql
