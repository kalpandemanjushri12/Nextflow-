#!/usr/bin/env nextflow

input_dir = "input/*.fasta"
output_dir = "output"

process ALIGN_FASTA {

    publishDir output_dir, mode: 'copy'

    input:
    path fasta

    output:
    path "*.aln"

    script:
    """
    output_file="${fasta.simpleName}.aln"

    mafft --auto $fasta > $output_file

    echo "$fasta is aligned"
    """
}

workflow {

    fasta_files = Channel.fromPath(input_dir)

    ALIGN_FASTA(fasta_files)
}
