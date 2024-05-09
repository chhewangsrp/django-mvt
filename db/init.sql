-- Check if the database exists before attempting to create it
SELECT 'CREATE DATABASE blogpost'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'blogpost');
