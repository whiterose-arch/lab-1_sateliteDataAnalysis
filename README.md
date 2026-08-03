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

| Eric Mugisha | Extracted Burundi records from
  "raw_data/satelite_temperature_data.csv", sorted them by humidity in descending
  order, and saved the result as
  "analyzed_data/humidity_data_burundi.csv". |
| Margaret Gitau | chore(cleanup): remove dummy, dummy-2 and dummy-3.txt files |
| Emmanuel Adekojo | Merge pull requests |
| Jemima Muthoka: chore(cleanup) | rename rename_directory to analyzed_data |


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
