# 🛠 Log ETL Pipeline using Linux + PostgreSQL

A lightweight Linux-based ETL (Extract, Transform, Load) pipeline project designed for Data Engineering practice. It filters web server logs and loads cleaned data into a PostgreSQL database.

---

## 📁 Project Structure

log-etl-pipeline-linux/ ├── rawlogs/ # Contains raw access log file ├── data/ # Cleaned logs & backup.sql ├── scripts/ # Bash & Python scripts for ETL ├── test_read_log.py # Simple log reader script ├── requirements.txt # Python dependencies └── README.md # Project overview

yaml
Copy
Edit

---

## 🚀 What It Does

- ✅ **Extracts**: Reads raw web server logs  
- 🧹 **Transforms**: Filters only `200 OK` responses and removes bots  
- 💾 **Loads**: Inserts cleaned data into a PostgreSQL table (`web_logs`)  
- 🐘 Uses **PostgreSQL** instead of SQLite  

---

## 🔧 How to Run

### 1. Prepare Logs

```bash
cat scripts/access_temp.log | grep " 200 " | grep -viE 'bot|c' > data/cleaned_log.log
2. Run the Python ETL Script
bash
Copy
Edit
python scripts/etl_to_postgres.py
➡️ Make sure PostgreSQL is running and a table web_logs exists in the log_db database.

📦 Requirements
Python 3.x

PostgreSQL

Python libraries:
psycopg2

Install them with:

bash
Copy
Edit
pip install -r requirements.txt
🛡 .gitignore
bash
Copy
Edit
data/logs.db
*.pyc
__pycache__/
access_temp.log
cleaned_logs/
📄 License
MIT License

Built with ❤️ by Sowmya Ravuri

yaml
Copy
Edit




