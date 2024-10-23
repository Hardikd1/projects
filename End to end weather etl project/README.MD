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
Project Structure
graphql
Copy code
.
├── dags
│   └── weather.py  # The main DAG script for the ETL pipeline
└── README.md       # Project documentation
Requirements
Python 3.x
Apache Airflow
PostgreSQL
Open Meteo API (Requires API connection in Airflow)
Setup
Install Apache Airflow:

bash
Copy code
pip install apache-airflow
Set up PostgreSQL: Ensure that a PostgreSQL instance is running and create a connection to it in Airflow using POSTGRES_CONN_ID = 'postgres_default'.

API Connection in Airflow: Set up an HTTP connection in Airflow using the open_meteo_api connection ID. You can configure it through the Airflow UI.

Configure the DAG: In the weather.py script, the latitude and longitude are currently set for London (51.5074, -0.1278). Modify these values if needed.

Running the Pipeline
Start Airflow Scheduler:

bash
Copy code
airflow scheduler
Start Airflow Webserver:

bash
Copy code
airflow webserver
Navigate to the Airflow web UI, trigger the DAG manually, or let it run on the predefined schedule (@daily).

Data Schema
The weather data is stored in the weather_data table with the following schema:

latitude (FLOAT): Latitude of the location.
longitude (FLOAT): Longitude of the location.
temperature (FLOAT): Current temperature.
windspeed (FLOAT): Current wind speed.
winddirection (FLOAT): Current wind direction.
weathercode (INT): Weather condition code.
timestamp (TIMESTAMP): Time when the data was inserted.
Future Improvements
Support for multiple locations.
Visualization of weather trends over time.
Integration with a dashboard (e.g., Power BI) for real-time data analysis.
License
This project is open source and available under the MIT License.
