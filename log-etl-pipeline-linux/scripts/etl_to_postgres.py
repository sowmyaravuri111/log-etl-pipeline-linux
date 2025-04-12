import psycopg2

def load_logs_to_postgres(file_path):
    try:
        # Connect to PostgreSQL database
        conn = psycopg2.connect(
            dbname="log_db",
            user="etl_user",
            password="sowmi@5855",
            host="localhost",
            port="5432"
        )
        cursor = conn.cursor()

        # Open the cleaned log file
        with open(file_path, 'r') as file:
            for line in file:
                if line.strip():  # Avoid inserting empty lines
                    cursor.execute(
                        "INSERT INTO web_logs (log_line) VALUES (%s);",
                        (line.strip(),)
                    )

        # Commit changes and close connections
        conn.commit()
        cursor.close()
        conn.close()
        print("✅ Logs successfully inserted into PostgreSQL!")

    except Exception as e:
        print("❌ Error occurred:", e)

if __name__ == "__main__":
    log_file = 'data/cleaned_log.log'  # Use relative path from the current directory
    load_logs_to_postgres(log_file)
