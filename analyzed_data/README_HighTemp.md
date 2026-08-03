### Extracting the Top 10 Highest Temperatures

The following command extracts the 10 highest temperature records from `satelite_temperature_data.csv` and saves them as `analyzed_data/highest_temp.csv`.

```sh
touch analyzed_data/highest_temp.csv
head -n 1 raw_data/satelite_temperature_data.csv > analyzed_data/highest_temp.csv # Preserve header row in output 
tail -n +2 raw_data/satelite_temperature_data.csv | sort -t ',' -k 3,3nr | head -n 10 >> analyzed_data/highest_temp.csv
```

**How it works:**

* `head -n 1` keeps the CSV header.
* `tail -n +2` skips the header before sorting.
* `sort -t ',' -k3,3nr` sorts the data by the **Temperature** column (3rd column) in **descending numeric order**.
* `head -n 10` selects the 10 highest temperature records.
* The results are written to `analyzed_data/highest_temp.csv`.

