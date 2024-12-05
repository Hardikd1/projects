<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CanTelecom Database Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
        }
        h1, h2, h3 {
            color: #2c3e50;
        }
        code {
            background-color: #f4f4f4;
            border: 1px solid #ddd;
            padding: 2px 5px;
            border-radius: 4px;
            font-family: Consolas, monospace;
        }
        pre {
            background-color: #f4f4f4;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            overflow-x: auto;
        }
        a {
            color: #3498db;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        ul {
            padding-left: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>CanTelecom Database Project</h1>
    <p>This project involves the creation, analysis, and management of a fictional telecommunications company's database system. The database is designed to simulate real-world data scenarios for customers, services, subscriptions, usage, billing, and support tickets. It showcases expertise in SQL query writing, data analysis, and advanced database management techniques.</p>

    <h2>Project Overview</h2>
    <ul>
        <li><strong>Company:</strong> CanTelecom (fictional)</li>
    </ul>
    <p>CanTelecom offers various services such as mobile phone plans, internet services, and TV subscriptions. This project provides an end-to-end database solution, including:</p>
    <ul>
        <li>Database schema design and creation.</li>
        <li>Data generation using Python.</li>
        <li>Complex SQL queries to solve business problems.</li>
        <li>Advanced SQL concepts like window functions and subqueries.</li>
    </ul>

    <h2>Features</h2>
    <ul>
        <li><strong>Database Design:</strong>
            <ul>
                <li>Entity Relationship Diagram (ERD) detailing relationships between tables.</li>
                <li>Schema with six tables: <code>customers</code>, <code>services</code>, <code>subscriptions</code>, <code>service_usage</code>, <code>billing</code>, and <code>support_tickets</code>.</li>
            </ul>
        </li>
        <li><strong>Data Generation:</strong>
            <ul>
                <li>Python script utilizing <code>Faker</code> and <code>Pandas</code> to create realistic datasets.</li>
                <li>100,000 customers, ~250,000 subscriptions, ~1 million usage records, ~2 million billing records, ~50,000 support tickets.</li>
            </ul>
        </li>
        <li><strong>SQL Queries:</strong>
            <ul>
                <li>Business queries to analyze data, including:
                    <ul>
                        <li>Customer churn rate calculation.</li>
                        <li>Identifying top customers by usage and revenue.</li>
                        <li>Ranking customers based on subscription and payment history.</li>
                    </ul>
                </li>
                <li>Advanced SQL functions:
                    <ul>
                        <li>Window functions (<code>ROW_NUMBER</code>, <code>SUM OVER</code>, <code>LAG</code>).</li>
                        <li>Subqueries for aggregations and filtering.</li>
                        <li>Data manipulation using <code>STRING_AGG</code> and <code>COUNT</code>.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><strong>Key Business Scenarios:</strong>
            <ul>
                <li>Detect churned customers.</li>
                <li>Analyze usage patterns to optimize service offerings.</li>
                <li>Find potential revenue growth opportunities.</li>
            </ul>
        </li>
    </ul>

    <h2>Installation</h2>
    <h3>Prerequisites</h3>
    <ul>
        <li>Python 3.x</li>
        <li>PostgreSQL (or other SQL database systems)</li>
        <li>Required Python libraries: <code>Faker</code>, <code>Pandas</code></li>
    </ul>

    <h3>Steps</h3>
    <ol>
        <li>Clone the repository:
            <pre><code>git clone https://github.com/yourusername/cantelecom-project.git
cd cantelecom-project</code></pre>
        </li>
        <li>Generate the dataset using Python:
            <pre><code>python generate_data.py</code></pre>
        </li>
        <li>Import the dataset into your SQL database:
            <ul>
                <li>Use the provided <code>.sql</code> scripts for table creation.</li>
                <li>Use <code>LOAD DATA</code> or import tools to load CSV files.</li>
            </ul>
        </li>
        <li>Execute queries using the SQL scripts provided in <code>/queries</code>.</li>
    </ol>

    <h2>SQL Highlights</h2>
    <h3>Example Query: Calculate Churn Rate</h3>
    <pre><code>WITH customer_status AS (
    SELECT
        c.customer_id,
        COUNT(s.subscription_id) AS total_subscriptions,
        SUM(CASE WHEN s.subscription_status = 'Inactive' THEN 1 ELSE 0 END) AS inactive_subscriptions
    FROM
        customers c
    LEFT JOIN subscriptions s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id
)
SELECT
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers) AS churn_rate_percentage
FROM customer_status
WHERE total_subscriptions = inactive_subscriptions AND total_subscriptions > 0;</code></pre>

    <h2>Folder Structure</h2>
    <pre><code>.
├── data/
│   ├── customers.csv
│   ├── services.csv
│   ├── subscriptions.csv
│   ├── service_usage.csv
│   ├── billing.csv
│   ├── support_tickets.csv
├── scripts/
│   ├── generate_data.py
│   ├── table_creation.sql
│   ├── business_queries.sql
├── README.md
└── ERD.png
    </code></pre>

    <h2>Author</h2>
    <p>[Your Name](https://github.com/yourusername)</p>
</body>
</html>
