
# End-to-End Data Engineering Project: dbt, Snowflake & Apache Airflow  


## Overview  
This project is a **complete data engineering pipeline** using **dbt (Data Build Tool), Snowflake (Data Warehouse), and Apache Airflow (Orchestration Tool)**. It covers **data ingestion, transformation, and scheduling** in a structured and scalable manner.  

## Tech Stack  
- **dbt Core** – For data transformation and modeling  
- **Snowflake** – Cloud-based data warehouse  
- **Apache Airflow** – Workflow automation and orchestration  
- **Python** – Scripting and automation  
- **Git** – Version control  


## Project Structure  
```bash
 snowflake_data_project/
│──  models/                 # dbt models (staging, marts)
│──  dags/                   # Airflow DAGs (for scheduling)
│──  logs/                   # Airflow logs
│──  seeds/                  # Sample seed data for dbt
│──  macros/                 # dbt macros
│──  dbt_project.yml         # dbt project config file
│──  README.md               # Project documentation
```


## Setup & Installation  

### Clone the Repository  
```sh
git clone https://github.com/ansamAY/dbt_snowflake_project.git
cd your-repo-name
```

Set Up a Virtual Environment
```sh
python -m venv venv
source venv/bin/activate  # Mac/Linux
venv\Scripts\activate     # Windows

```

Configure dbt Connection to Snowflake
Update the profiles.yml file located in ~/.dbt/ with your Snowflake credentials:
```sh
snowflake_project:
  outputs:
    dev:
      account: your_snowflake_account
      database: finance_db
      user: dbt_user
      password: your_password
      warehouse: finance_wh
      role: ACCOUNTADMIN
      schema: raw
      type: snowflake
  target: dev
```
Run dbt Models
```sh
dbt run
dbt test  # To validate data integrity
```

Start Apache Airflow
```sh
airflow standalone  # Starts the UI & Scheduler
```




