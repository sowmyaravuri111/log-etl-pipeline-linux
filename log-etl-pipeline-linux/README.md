🛠 Log ETL Pipeline using Linux Shell + Python + PostgreSQL

A Linux-based ETL (Extract, Transform, Load) pipeline built for Data Engineering practice. It extracts raw log data, filters it using shell utilities, and loads it into a PostgreSQL database using Python.

📁 Project Structure

log-etl-pipeline-linux/
├── raw_logs/           # (Optional) Store original logs
├── data/               # Cleaned logs and backup SQL files
│   ├── cleaned_log.log
│   └── backup.sql
├── scripts/            # Shell + Python ETL scripts
│   ├── extract.sh
│   ├── transform.sh
│   ├── load.sh
│   ├── run_etl.sh
│   ├── fetch_logs.py
│   └── etl_to_postgres.py
├── test_read_log.py    # Python script to test cleaned log read
├── requirements.txt    # Python dependencies
├── LICENSE
└── README.md

🚀 Features

Extracts raw access log data

Transforms logs by filtering only 200 OK responses, excluding bots

Loads cleaned logs into a PostgreSQL database

Supports automated full-run via run_etl.sh

Modular Bash + Python scripting for flexibility

