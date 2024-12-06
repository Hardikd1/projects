# Weather Data ETL Pipeline with Apache Airflow

[![Apache Airflow](https://img.shields.io/badge/Airflow-ETL-blue.svg)](https://airflow.apache.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue.svg)](https://www.postgresql.org/)

An ETL pipeline that retrieves weather data from the Open-Meteo API, transforms it, and loads it into a PostgreSQL database for further analysis. The pipeline leverages Apache Airflow for orchestration and scheduling.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Requirements](#requirements)

---

## Overview

This project demonstrates how to build an ETL (Extract, Transform, Load) pipeline using Apache Airflow to process weather data. The pipeline fetches data from the [Open-Meteo API](https://open-meteo.com/), transforms it to retain essential weather parameters, and loads it into a PostgreSQL database for storage and analysis.

---

## Features

- **Extract**: Fetches real-time weather data (temperature, wind speed, wind direction, etc.) from the [Open-Meteo API](https://open-meteo.com/).
- **Transform**: Cleans and formats the data, extracting essential fields like temperature and wind speed.
- **Load**: Inserts the transformed data into a PostgreSQL database table named `weather_data`.

---

## Technologies Used

- **Apache Airflow**: Task scheduling and orchestration.
- **Open-Meteo API**: Source of the weather data.
- **PostgreSQL**: Database for storing weather data.
- **Docker**: Containerization of the application.
- **Astronomer**: Airflow deployment and management platform.
- **DBeaver**: Database management tool for PostgreSQL.
- **Python**: Programming language used for the ETL pipeline.

---

## Requirements

- **Python 3.x**
- **Apache Airflow**
- **PostgreSQL**
- **Open-Meteo API** (Requires API connection in Airflow)
- **Docker**
