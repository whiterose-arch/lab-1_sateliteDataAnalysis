# Lab 1 Satelite Data Analysis

## Overview

This repository contains the data analysis workflow for the project of satelite Data Analysis. It includes the original datasets, processed outputs, and the scripts/commands used to perform the analysis.

---

## Repository Structure

```text
.
├── raw_data/
│   └ satelite_temperature_data.csv
├── analyzed_data/
│   ├ highest_temp.cs
│   ├ humidity_data_Rwanda.csv
├── scripts/
│   └─extract_data.sh 
├── README.md
```

### Directory Description

#### `raw_data/`
Contains the original datasets provided for the project. These files are not modified.

#### `analyzed_data/`
Contains the processed datasets,and  filtered result generated during the analysis.

#### `scripts/`
Contains shell scripts used to automate the analysis workflow.

---

## Task 2 Analysis

### Commands Used

### Extracting the Top 10 Highest Temperatures

The following command extracts the 10 highest temperature records from `satelite_temperature_data.csv` and saves them as `analyzed_data/highest_temp.csv`.

```sh
touch analyzed_data/highest_temp.csv
head -n 1 raw_data/satelite_temperature_data.csv > analyzed_data/highest_temp.csv # Preserve header row in output 
tail -n +2 raw_data/satelite_temperature_data.csv | sort -t ',' -k 3,3nr | head -n 10 >> analyzed_data/highest_temp.csv
```

### Extract humidity data for Rwanda - #13

By considering `Rwanda` as chosen country, the following command extract all its records, and sort the results in descending order of humidity. Save the output as `analyzed_data/humidity_data_Rwanda.csv`

```sh 
touch analyzed_data/humidity_data_Rwanda.csv # to create file to store outputs
head -n 1 raw_data/satelite_temperature_data.csv >> analyzed_data/humidity_data_Rwanda.csv # to Preserve header row in output
grep "Rwanda" raw_data/satelite_temperature_data.csv | sort -t ',' -k 4,4nr >> analyzed_data/humidity_data_Rwanda.csv # extract all its records, and sort the results in descending order of humidity. Save the output as analyzed_data/humidity_data_Rwanda
```

---


## Team Members

| Member name | Contributions |
| ----------- | ------------- |
| Eric Mugisha | Extracted Burundi records from `raw_data/satelite_temperature_data.csv`, sorted them by humidity in descending order, and saved the result as `analyzed_data/humidity_data_burundi.csv`. |
| Margaret Gitau | Removed the `dummy.txt`, `dummy-2.txt`, and `dummy-3.txt` files. |
| Emmanuel Adekojo | Merged pull requests. |
| Jemima Muthoka | Renamed `rename_directory` to `analyzed_data`. |

---

## Requirements

- git
- Bash shell
- head
- tail
- GNU grep

---

## Notes

- Original datasets are preserved in `raw_data/`.
- All generated outputs are stored in `analyzed_data/`.
- Analysis can be reproduced by running the provided script or following the documented commands.

## ANALYSIS WORKFLOW

The repository includes a Bash script (`scripts/analyze.sh`) that automates the analysis of the satellite temperature dataset. The script generates two output files: one containing the **top 10 highest recorded temperatures** across the dataset and another containing **humidity data for a user-specified country**.

### Prerequisites

Ensure the following project structure exists:

```text
raw_data/
└── satelite_temperature_data.csv

scripts/
└── analyze.sh

analyzed_data/
```

### Running the Analysis

Execute the script from the root of the repository, providing the country name as an argument:

```bash
./scripts/analyze.sh <country_name>
```

Example:

```bash
./scripts/analyze.sh Kenya
```

If no country name is provided, the script displays a usage message and exits:

```bash
Usage: ./scripts/analyze.sh <country_name>
```

### What the Script Does

1. Validates that a country name has been provided as a command-line argument.
2. Reads the input dataset located at `raw_data/satelite_temperature_data.csv`.
3. Creates the `analyzed_data/` directory if it does not already exist.
4. Generates `highest_temp.csv` containing:

   * the original header row, and
   * the 10 records with the highest temperatures, sorted in descending order.
5. Generates `humidity_data_<country>.csv` containing:

   * the original header row, and
   * all records for the specified country, sorted by humidity in descending order.

### Output Files

After successful execution, the following files are created inside the `analyzed_data/` directory:

* `highest_temp.csv` – Contains the top 10 highest temperature records from the dataset.
* `humidity_data_<country>.csv` – Contains humidity records for the specified country, sorted from highest to lowest humidity.

### Commands Used

The analysis workflow uses standard Linux command-line utilities:

* `mkdir -p` – Creates the output directory if it does not exist.
* `touch` – Creates the output CSV files.
* `head` – Copies the CSV header to the output files.
* `tail` – Skips the header before processing the dataset.
* `sort` – Sorts temperature and humidity values in descending order.
* `grep` – Filters records for the specified country.
* `head -n 10` – Selects the top 10 highest temperature records.

