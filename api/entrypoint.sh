#!/bin/bash

echo "waiting for postgres..."

while ! nc -z database 5432; do
    sleep 0.1
done

echo "PostgreSQL started"
# # Apply migrations, create database tables
if [ "$RUN_SETUP_DJANGO" = "true" ]; then
    echo "Django Is startedddd"
    python manage.py migrate
    gunicorn blogpost.wsgi:application --bind 0.0.0.0:8000
fi
exec "$@"