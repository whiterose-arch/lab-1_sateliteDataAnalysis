#!/bin/bash

# This script extracts:
# 1. Top 10 highest temperatures
# 2. Humidity data for a selected country

# Check if the user provided a country name
if [ $# -eq 0 ]; then
    echo "Usage: ./scripts/analyze.sh <country_name>"
    exit 1
fi

# Save the country name passed as an argument
COUNTRY="${1^}"

# Input dataset
INPUT="raw_data/satelite_temperature_data.csv"

# Output folder
OUTPUT="analyzed_data"

# Create the output folder if it doesn't exist
mkdir -p "$OUTPUT"

# make the output file for the highest temperature and humidity data
touch "$OUTPUT/highest_temp.csv"
touch "$OUTPUT/humidity_data_$COUNTRY.csv"

# Preserve header row in output
head -n 1 "$INPUT" > "$OUTPUT/highest_temp.csv"

# Extract the top 10 highest temperatures and save to a new CSV file
# sort the data by temperature (3rd column) in descending order and take the top 10 rows
#add the top 10 highest temperatures to the output file
tail -n +2 "$INPUT" | sort -t ',' -k 3,3nr | head -n 10 >> "$OUTPUT/highest_temp.csv"

# Preserve header row in the country-specific humidity output file
head -n 1 "$INPUT" >> "$OUTPUT/humidity_data_$COUNTRY.csv"

# Filter rows matching the given country, sort by humidity (4th column) in descending order,
# and append the results to the country-specific humidity output file
grep "$COUNTRY" "$INPUT" | sort -t ',' -k 4,4nr >> "$OUTPUT/humidity_data_$COUNTRY.csv"
