echo "filename,size,num_lines" > wikimedia_data_summary.csv
find data/ -type f -name "*.csv" | sort | while read -r file; do
    echo "$(basename "$file"),$(ls -lh "$file" | awk '{print $5}'),$(wc -l < "$file" | tr -d ' ')" >> wikimedia_data_summary.csv
done
