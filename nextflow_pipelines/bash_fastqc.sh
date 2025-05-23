##BASH SCRIPT CODE FOR FASTQC ANALYSIS
#!/bin/bash

# Define input and output directories
INPUT_DIR="/home/Desktop/Prcatise/Nexflow_prac/my_pipelines/fastq_files"
OUTPUT_DIR="/home/Desktop/Prcatise/Nexflow_prac/my_pipelines/fastq_files/output_bash_fastqc"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through all .fastq.gz files in the input directory
for file in "$INPUT_DIR"/*.fastq.gz
do
	echo "Running FastQC on $file..."
	fastqc "$file" --outdir "$OUTPUT_DIR"
done

echo "All FastQC analyses completed!"
