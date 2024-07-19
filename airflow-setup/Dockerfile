# Use the official Apache Airflow image
FROM apache/airflow:2.9.2

# Install required packages
USER root
RUN apt-get update && apt-get install -y python3-virtualenv

# Create a virtual environment
RUN virtualenv /opt/airflow/venv

# Copy the requirements.txt file
COPY requirements.txt /opt/airflow/requirements.txt

# Activate the virtual environment and install requirements
RUN /opt/airflow/venv/bin/pip install -r /opt/airflow/requirements.txt

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Ensure the entrypoint script has the correct permissions
RUN chmod +x /entrypoint.sh

# Set the user to airflow
USER airflow

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
