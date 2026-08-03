#1.PROJECT TITLE:
 Satellite Data Analysis with Linux

#2.PROJECT OVERVIEW:
This project was completed as part of the Bachelor of Software Engineer(BSE) Linux module at ALCHE.This project involved collaborating on Github repository containing satellite weather data provided by an AI startup in Mauritius. The objective was to organize the repository, clean unnecessary files, and use Linux command-line tools to extract meaningful insights from the dataset.

#3.PROJECT OBJECTIVES:

- Clean and organize the repository
- Organize raw and analyzed datasets
- Perform data analysis using Linux commands
- Document the workflow for future users
- Collaborate using Git and GitHub

#4.REPOSITORY STRUCTURE
.
├── raw_data/
│   └── satellite_temperature_data.csv
│
├── analyzed_data/
│   ├── highest_temp.csv
│   └── humidity_data_Kenya.csv
│
└── README.md

# 5. REPOSITORY CLEANUP:

The following cleanup tasks were completed:

- Renamed `rename_directory` to `analyzed_data`
- Removed unnecessary files:
  - dummy
  - dummy-2
  - dummy-3.txt
- Moved `satellite_temperature_data.csv` into `raw_data`
# 6. LINUX COMMANDS USED 

| Command | Purpose |
|---------|---------|
| `mv` | Renamed the `rename_directory` directory to `analyzed_data` and moved the dataset into `raw_data/`. |
| `rm` | Removed the unnecessary dummy files (`dummy`, `dummy-2`, and `dummy-3.txt`). |
| `mkdir` | Created directories such as `raw_data`, `analyzed_data`, and `scripts` (if needed). |
| `cp` | Copied files where necessary during repository organization or testing. |
| `cat` | Displayed the contents of the dataset. |
| `head` | Displayed the first lines of the dataset and extracted the top 10 temperature records after sorting. |
| `tail` | Skipped the CSV header before sorting the data. |
| `grep` | Filtered records for a specific country. |
| `cut` | Extracted specific columns from the CSV file when required. |
| `sort` | Sorted temperature and humidity values in descending order. |
| `chmod` | Made the `analyze.sh` script executable. |
| `nano` | Created and edited the shell script and README file. |
| `git add` | Staged modified files for commit. |
| `git commit` | Recorded changes in the repository. |
| `git push` | Uploaded commits to the GitHub repository. |
| `git checkout` | Switched to the assigned feature/documentation branches. |
# 7. TEAM MEMBERS  AND CONTRIBUTIONS:


| Member          | Contribution                             |
| --------------- | ---------------------------------------- |
| Margaret Gitau | Repository cleanup, README documentation |
| Erick Mugisha  |                     |
| Jemima Muthoka  |                         |
| Emmanuel Adekojo |          |


# 8. TECHNOLOGIES USED:

- Ubuntu Linux
- Bash
- Gi
- GitHub

