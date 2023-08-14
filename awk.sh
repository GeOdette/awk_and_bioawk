# #!/bin/bash
# #fastqc SRR6511644_1.fastq SRR6511644_2.fastq
# output_dir="untrimmed_reads/unzipped"
# #mkdir -p untrimmed_reads
# #mv *.zip untrimmed_reads
# #mv *.html untrimmed_reads
# # for fq in untrimmed_reads/*.zip
# # do
# # unzip $fq -d $output_dir
# # done

# # if [! - d "$output_dir" ]; then
# # mkdir -p "$output_dir"

# #awk '{if ($1 == chr1 && $2-$3 > 10) print $2 "\t" $3}' example.bed

# #Printing the name or identifier associated with the sequences in the contam.fastq file
# # bioawk -c fastx '{print $name}' contam.fastq
# # bioawk -c fastx '{ print ">" $name "\t" $seq }' contam.fastq
# # Process and convert FASTQ files to FASTA format
# for input_fastq in untrimmed_reads/*.fastq; do
#   output_fasta="$(basename "$input_fastq" .fastq)-filtered.fasta"
#   bioawk -c fastx '{ print ">"$name"\n"$seq }' "$input_fastq" > "$output_fasta"
# done

# # Convert -filtered.fastq files to FASTA format and perform alignment
# for input_fastq in untrimmed_reads/*-filtered.fastq; do
#   output_fasta="$(basename "$input_fastq" .fastq).fasta"
#   bioawk -c fastx '{ print ">"$name"\n"$seq }' "$input_fastq" > "$output_fasta"
  
#   alignment_output="$(basename "$input_fastq" -filtered.fastq)_alignment.sam"
#   bwa mem reference_genome.fasta "$output_fasta" > "$alignment_output"
# done

# # Print a message indicating the completion of the pipeline
# echo "Pipeline completed successfully!"