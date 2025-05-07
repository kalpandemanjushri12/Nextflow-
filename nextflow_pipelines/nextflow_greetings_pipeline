#!/usr/bin/env nextflow

process wishes {
    input:
    val name 

    output:
    stdout  // this will output result on screen

    script:
    """
    echo "Good evening ${name} from India"
    """
}

workflow {
    name = "Joy Menon"
    wishes(name).view()
}
