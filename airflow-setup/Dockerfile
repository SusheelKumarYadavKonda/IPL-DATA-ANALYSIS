# Use the official Apache Airflow image
FROM apache/airflow:2.9.2

# Install virtualenv
RUN pip install virtualenv

# Create a virtual environment
RUN virtualenv /opt/airflow/venv

# Copy the requirements.txt file
COPY requirements.txt /opt/airflow/airflow-setup/requirements.txt

# Activate the virtual environment and install requirements
RUN /opt/airflow/venv/bin/pip install -r /opt/airflow/airflow-setup/requirements.txt

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Ensure the entrypoint script has the correct permissions
USER root
RUN chmod +x /entrypoint.sh
USER airflow

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
