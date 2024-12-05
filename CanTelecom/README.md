# CanTelecom SQL Project

## 📜 Project Overview

Welcome to **CanTelecom SQL Project**, a hands-on data analysis project! This dataset simulates the operations of **CanTelecom**, a fictional Canadian telecommunications company. Designed for data enthusiasts, this project provides you with the tools and challenges to enhance your SQL expertise while solving real-world business problems.📊

---

## 🚀 Features

- **🛠 Data Generation Code**: Python scripts powered by the Faker library to create large-scale, realistic datasets.
- **📂 SQL Table Creation Scripts**: Ready-to-use scripts to create and populate tables in MySQL.
- **💡 Business Scenarios**: Solve SQL challenges from beginner to expert level, tailored for practical use cases.
- **🔗 Relationships**: A well-structured relational database with meaningful connections.

---

## 🗂 Dataset Structure

### 🏷 Tables and Relationships

1. **👤 Customers**  
   - **Purpose**: Store customer details.  
   - **Key Fields**:
     - `customer_id` (Primary Key), `first_name`, `last_name`, `email`
     - `address`, `city`, `province`, `postal_code`, `signup_date`

2. **📄 Services**  
   - **Purpose**: Catalog of CanTelecom's offerings.  
   - **Key Fields**:
     - `service_id` (Primary Key), `service_name`, `service_type`, `monthly_cost`

3. **📦 Subscriptions**  
   - **Purpose**: Manage customer subscriptions.  
   - **Key Fields**:
     - `subscription_id` (Primary Key), `customer_id` (Foreign Key)
     - `service_id` (Foreign Key), `start_date`, `end_date`, `status`

4. **📈 Usage**  
   - **Purpose**: Log service usage details.  
   - **Key Fields**:
     - `usage_id` (Primary Key), `subscription_id` (Foreign Key)
     - `usage_date`, `data_used_gb`, `minutes_used`

5. **💳 Billing**  
   - **Purpose**: Track billing transactions.  
   - **Key Fields**:
     - `billing_id` (Primary Key), `subscription_id` (Foreign Key)
     - `billing_date`, `amount_due`, `amount_paid`, `payment_method`

6. **📩 Support Tickets**  
   - **Purpose**: Record customer support interactions.  
   - **Key Fields**:
     - `ticket_id` (Primary Key), `customer_id` (Foreign Key)
     - `issue_date`, `issue_type`, `resolution_date`, `status`

---

##  Business Problems to Solve

🟢 **Easy**
 - Retrieve all active customers in a specific province (e.g., Ontario).
 - List all services along with their monthly costs.
 - Find the total number of customers who have subscribed to the "Mobile Plus" service.

🟡 **Intermediate**
 - Calculate the average amount paid per billing cycle.
 - Identify customers who have missed payments in the last 3 months.
 - Find the top 10 cities with the highest number of customers.
 
🔴 **Advanced**
 - Analyze the churn rate by identifying customers who canceled all subscriptions.
 - Detect potential fraud through overlapping service subscriptions.
 - Calculate the average data usage per customer by service type in the last month.
 
⚫ **Expert**
 - Perform a cohort analysis based on signup month to track customer retention.
 - Identify trends in data usage by service type and province.
 - Rank customers by total usage and identify the top 5% heavy users.

## 🎓 Learning Goals
By completing this project, you will:
- Master SQL joins
- Aggregate functions
- Window functions.
  
  - Gain hands-on experience with real-world data analysis scenarios.
  - Improve problem-solving skills by tackling diverse SQL challenges.
  - Prepare for data engineering and analyst roles with confidence.

---

## 🛠 Installation & Setup

### 🧰 Prerequisites
- Python 3.x
- Libraries: `Faker`, `Pandas`
- mysql or dbeaver

### 📥 Installation
```bash
pip install faker pandas

Note : The data is fake and does not represent its true nature 
