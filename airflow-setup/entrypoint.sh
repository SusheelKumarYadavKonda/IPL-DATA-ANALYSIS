#!/bin/bash
# Activate the virtual environment
source /opt/airflow/venv/bin/activate

# Execute the command passed to the container
exec "$@"
