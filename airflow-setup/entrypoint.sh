#!/bin/bash

# Activate the virtual environment
source /opt/airflow/venv/bin/activate

# Initialize the Airflow database
airflow db init

# Create an admin user
airflow users create \
    --username admin \
    --password admin \
    --firstname Admin \
    --lastname User \
    --role Admin \
    --email admin@example.com

# Start the scheduler in the background
airflow scheduler &

# Start the web server
exec airflow webserver
