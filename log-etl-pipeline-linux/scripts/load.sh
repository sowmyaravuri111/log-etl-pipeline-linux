#!/bin/bash
echo "Loading into SQLite DB..."
echo "Current directory: $(pwd)"
echo "Attempting to open: $PWD/data/logs.db"
sqlite3 "$PWD/data/logs.db" <<EO
CREATE TABLE IF NOT EXISTS web_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    log_line TEXT
);
.mode tabs
.import cleaned_log.log web_logs
EOF






