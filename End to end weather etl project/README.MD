Weather Data ETL Pipeline with Apache Airflow
Project Overview
This project is an ETL (Extract, Transform, Load) pipeline that retrieves weather data from the Open Meteo API, transforms the data, and loads it into a PostgreSQL database for further analysis. The pipeline is built using Apache Airflow for orchestration and scheduling.

Key Features
Extract: Weather data (temperature, windspeed, wind direction, etc.) is fetched from the Open Meteo API using an HTTP connection.
Transform: The data is transformed to a format suitable for storage, keeping only essential fields like temperature and windspeed.
Load: The transformed data is loaded into a PostgreSQL database table named weather_data.
Technologies Used
Apache Airflow: Task scheduling and orchestration.
Open Meteo API: Source of the weather data.
PostgreSQL: Database for storing weather data.
Python: The language used to implement the ETL pipeline.
