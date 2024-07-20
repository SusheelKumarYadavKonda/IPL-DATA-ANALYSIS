#!/bin/bash
# Activate the virtual environment
source /opt/airflow/venv/bin/activate

# Create necessary directories and set permissions
mkdir -p /opt/airflow/logs /opt/airflow/dags /opt/airflow/plugins
chown -R airflow:root /opt/airflow/logs /opt/airflow/dags /opt/airflow/plugins
chmod -R 755 /opt/airflow/logs /opt/airflow/dags /opt/airflow/plugins

# Execute the command passed to the container
exec "$@"
