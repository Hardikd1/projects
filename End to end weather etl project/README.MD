<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather Data ETL Pipeline Project</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
            padding: 20px;
        }
        h1, h2, h3 {
            color: #2c3e50;
        }
        h1 {
            text-align: center;
            padding-bottom: 20px;
        }
        ul {
            list-style-type: square;
            margin-left: 20px;
        }
        .code-block {
            background-color: #ecf0f1;
            padding: 10px;
            border-radius: 5px;
            font-family: 'Courier New', monospace;
            margin-top: 10px;
            color: #333;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #2980b9;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #2c3e50;
            color: white;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Weather Data ETL Pipeline</h1>
        
        <h2>Project Overview</h2>
        <p>This ETL pipeline retrieves weather data from the Open Meteo API, transforms it, and loads it into a PostgreSQL database for analysis. It's built using Apache Airflow for task orchestration and scheduling.</p>

        <h2>Key Features</h2>
        <ul>
            <li><strong>Extract:</strong> Weather data from the Open Meteo API.</li>
            <li><strong>Transform:</strong> Filter essential metrics (temperature, windspeed, etc.).</li>
            <li><strong>Load:</strong> Save data into PostgreSQL.</li>
        </ul>

        <h2>Technologies Used</h2>
        <ul>
            <li>Apache Airflow</li>
            <li>Open Meteo API</li>
            <li>PostgreSQL</li>
            <li>Python</li>
        </ul>

        <h2>Project Structure</h2>
        <div class="code-block">
            <p>. ├── dags<br>│ └── weather.py  # The main DAG script<br>└── README.md       # Project documentation</p>
        </div>

        <h2>Setup Instructions</h2>
        <ol>
            <li>Install Airflow: <span class="code-block">pip install apache-airflow</span></li>
            <li>Set up PostgreSQL and configure in Airflow with `POSTGRES_CONN_ID`.</li>
            <li>Configure the Open Meteo API connection in Airflow using `open_meteo_api`.</li>
            <li>Modify latitude/longitude in `weather.py` if needed.</li>
        </ol>

        <h2>Running the Pipeline</h2>
        <p>To run the pipeline:</p>
        <ul>
            <li>Start the Airflow Scheduler: <span class="code-block">airflow scheduler</span></li>
            <li>Start the Airflow Webserver: <span class="code-block">airflow webserver</span></li>
            <li>Trigger the DAG manually or let it run on its daily schedule.</li>
        </ul>

        <h2>Data Schema</h2>
        <p>The data is stored in a `weather_data` table with fields:</p>
        <ul>
            <li>latitude (FLOAT)</li>
            <li>longitude (FLOAT)</li>
            <li>temperature (FLOAT)</li>
            <li>windspeed (FLOAT)</li>
            <li>winddirection (FLOAT)</li>
            <li>weathercode (INT)</li>
        </ul>

        <h2>Future Improvements</h2>
        <ul>
            <li>Support for multiple locations.</li>
            <li>Weather trend visualization over time.</li>
            <li>Real-time dashboard integration.</li>
        </ul>

        <h2>License</h2>
        <p>This project is open source under the MIT License.</p>

        <a href="#" class="btn">Learn More</a>
    </div>

    <footer>
        <p>&copy; 2024 Weather ETL Pipeline Project</p>
    </footer>
</body>
</html>
