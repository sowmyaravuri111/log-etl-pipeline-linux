#!/bin/bash
echo "Transforming data..."
cat access_temp.log | grep " 200 " | grep -viE 'bot|crawl|spider' > cleaned_log.log
