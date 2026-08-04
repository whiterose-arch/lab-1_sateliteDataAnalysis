# Scripts

This folder contains scripts for analyzing satellite temperature and humidity data.

## analyze.sh

Extracts two things from the raw dataset:
1. The top 10 highest temperature readings (across all countries).
2. The humidity data for a specific country, sorted from highest to lowest humidity.

### Usage

```bash
./scripts/analyze.sh <country_name>
```

Example:
```bash
./scripts/analyze.sh chad
```

### Input

- `raw_data/satelite_temperature_data.csv` — the raw dataset (must have a header row, with temperature in column 3 and humidity in column 4).

### Output

Results are saved in the `analyzed_data/` folder (created automatically if it doesn't exist):
- `highest_temp.csv` — top 10 highest temperature records.
- `humidity_data_<Country>.csv` — humidity records for the given country.

### Notes

- The country name you pass in is automatically capitalized (first letter) to match how it appears in the dataset.
- Matching is done with a simple text search, so make sure the country name doesn't overlap with other text in the data (e.g. part of a city name).
