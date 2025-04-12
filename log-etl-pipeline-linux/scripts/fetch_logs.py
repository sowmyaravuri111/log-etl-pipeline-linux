# scripts/fetch_logs.py

import psycopg2

# PostgreSQL connection
conn = psycopg2.connect(
    host="localhost",
    database="log_db",
    user="etl_user",
    password="sowmi@5855"
)

cur = conn.cursor()
cur.execute("SELECT * FROM web_logs LIMIT 5;")
rows = cur.fetchall()

for row in rows:
    print(row)

cur.close()
conn.close()
