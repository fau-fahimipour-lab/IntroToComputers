#!/bin/bash

## Define the number of times we want to run the analysis
NUM_RUNS=10

## Define a unique directory for our output to keep things organized
OUTPUT_DIR="output_data"

echo "Starting the analysis pipeline..."
mkdir -p ${OUTPUT_DIR}

## Loop to run the R script N times
for i in $(seq 1 $NUM_RUNS)
do
    echo "Running analysis number: $i"
    Rscript analyzeData.R
    sleep 2
done

## Concatenate all the output files into a master data array
cat data_*.txt > ${OUTPUT_DIR}/master_data.txt

## Clean up the individual files (CAREFUL)
rm data_*.txt

## Drop a line
echo "Analysis complete. Final data is in ${OUTPUT_DIR}/master_data.txt"