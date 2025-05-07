#NEXTFLOW SCRIPT CODE FOR FASTQC ANALYSIS
#!/usr/bin/env nextflow

params.reads = '/home/Desktop/Prcatise/Nexflow_prac/my_pipelines/fastq_files/*.fastq.gz'
params.outdir = '/home/Desktop/Prcatise/Nexflow_prac/my_pipelines/fastq_files/output_fastqc'

process FastQC {
	publishDir params.outdir, mode: 'copy'

	input:
	path read_file

	output:
	path "*.html"
	path "*.zip"

	script:
	"""
	fastqc $read_file
	"""
}

workflow {
	Channel
    	.fromPath(params.reads)
    	.set { read_files }

	FastQC(read_files)
}
