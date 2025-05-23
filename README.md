# Employee Management System

This project simulates a real-world company database system for managing employees and departments.  
It includes schema creation, seed data, update migrations, and follows best practices for organization and version control.

## Project Structure

- `db/schema/`: Contains SQL files for creating database tables.
- `db/seeds/`: Contains SQL files for inserting initial data.
- `db/updates/`: Contains SQL files for updating existing data.
- `db/library.db`: The SQLite database file (ignored in Git).

## How to Use

1. Create database schema:
   ```bash
   sqlite3 db/library.db < db/schema/001_create_departments.sql
   sqlite3 db/library.db < db/schema/002_create_employees.sql
