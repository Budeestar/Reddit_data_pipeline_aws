FROM apache/airflow:2.7.1-python3.9

COPY requirements.txt /opt/airflow/

USER root
RUN apt-get update && apt-get install -y gcc python3-dev
RUN apt-get update && apt-get install -y git

# Switch back to airflow user
USER airflow

RUN pip install --no-cache-dir -r /opt/airflow/requirements.txt

# Other configurations if any
