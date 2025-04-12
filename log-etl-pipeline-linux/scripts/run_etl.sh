#!/bin/bash
cd "$(dirname "$0")"
./extract.sh
./transform.sh
./load.sh
echo "ETL process completed."
