#!/bin/bash
#fastqc SRR6511644_1.fastq SRR6511644_2.fastq
output_dir="untrimmed_reads/unzipped"
#mkdir -p untrimmed_reads
#mv *.zip untrimmed_reads
#mv *.html untrimmed_reads
# for fq in untrimmed_reads/*.zip
# do
# unzip $fq -d $output_dir
# done

# if [! - d "$output_dir" ]; then
# mkdir -p "$output_dir"

#awk '{if ($1 == chr1 && $2-$3 > 10) print $2 "\t" $3}' example.bed

#Printing the name or identifier associated with the sequences in the contam.fastq file
# bioawk -c fastx '{print $name}' contam.fastq
# bioawk -c fastx '{ print ">" $name "\t" $seq }' contam.fastq
for fq in untrimmed_reads/*.fastq; do
out_file="${fq%.fastq}_filtered.fastq"
bioawk -c fastx '{ if (meanqual($qual) >= 25) print "@"$name"\n"$seq"\n+\n"$qual }' $fq > $out_file
done