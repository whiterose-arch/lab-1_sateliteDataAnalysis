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
COUNTRY=$1

# Input dataset
INPUT="raw_data/satelite_temperature_data.csv"

# Output folder
OUTPUT="analyzed_data"

# Create the output folder if it doesn't exist
mkdir -p "$OUTPUT"
