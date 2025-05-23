-- $bash sqlite3 db/library.db < db/updates/002_update_departments_name.sql

UPDATE  departments SET location = 'Headquarters' WHERE name = 'Human Resources';

UPDATE departments SET location = 'Building B' WHERE name = 'IT Support';