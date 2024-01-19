#!/usr/bin/env bash

# trimmomatic version 0.39
# trimmomatic manual : http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf

WORKING_DIRECTORY=/scratch_vol1/fungi/Turtles_microplastics_microbiome/Turtles_microplastics_microbiome/01_raw_data/raw_sequences
OUTPUT=/scratch_vol1/fungi/Turtles_microplastics_microbiome/Turtles_microplastics_microbiome/03_cleaned_data

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $OUTPUT

ADAPTERFILE=/scratch_vol1/fungi/Turtles_microplastics_microbiome/Turtles_microplastics_microbiome/99_softwares/adapters_sequences.fasta

# Arguments :
# ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150

eval "$(conda shell.bash hook)"
conda activate trimmomatic

cd $WORKING_DIRECTORY

####################################################
# Cleaning step
####################################################

					
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/Control-17032022_S15_R1_001.fastq $WORKING_DIRECTORY/Control-17032022_S15_R2_001.fastq $OUTPUT/Control-17032022_S15_R1_001.paired.fastq.gz $OUTPUT/Control-17032022_S15_R1_001.single.fastq.gz $OUTPUT/Control-17032022_S15_R2_001.paired.fastq.gz $OUTPUT/Control-17032022_S15_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/Control-31032022_S16_R1_001.fastq $WORKING_DIRECTORY/Control-31032022_S16_R2_001.fastq $OUTPUT/Control-31032022_S16_R1_001.paired.fastq.gz $OUTPUT/Control-31032022_S16_R1_001.single.fastq.gz $OUTPUT/Control-31032022_S16_R2_001.paired.fastq.gz $OUTPUT/Control-31032022_S16_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/filteredwater-17032022-1_S10_R1_001.fastq $WORKING_DIRECTORY/filteredwater-17032022-1_S10_R2_001.fastq $OUTPUT/filteredwater-17032022-1_S10_R1_001.paired.fastq.gz $OUTPUT/filteredwater-17032022-1_S10_R1_001.single.fastq.gz $OUTPUT/filteredwater-17032022-1_S10_R2_001.paired.fastq.gz $OUTPUT/filteredwater-17032022-1_S10_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/filteredwater-17032022-2_S11_R1_001.fastq $WORKING_DIRECTORY/filteredwater-17032022-2_S11_R2_001.fastq $OUTPUT/filteredwater-17032022-2_S11_R1_001.paired.fastq.gz $OUTPUT/filteredwater-17032022-2_S11_R1_001.single.fastq.gz $OUTPUT/filteredwater-17032022-2_S11_R2_001.paired.fastq.gz $OUTPUT/filteredwater-17032022-2_S11_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/filteredwater-17032022-3_S12_R1_001.fastq $WORKING_DIRECTORY/filteredwater-17032022-3_S12_R2_001.fastq $OUTPUT/filteredwater-17032022-3_S12_R1_001.paired.fastq.gz $OUTPUT/filteredwater-17032022-3_S12_R1_001.single.fastq.gz $OUTPUT/filteredwater-17032022-3_S12_R2_001.paired.fastq.gz $OUTPUT/filteredwater-17032022-3_S12_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-03032022-1_S1_R1_001.fastq $WORKING_DIRECTORY/plastic-03032022-1_S1_R2_001.fastq $OUTPUT/plastic-03032022-1_S1_R1_001.paired.fastq.gz $OUTPUT/plastic-03032022-1_S1_R1_001.single.fastq.gz $OUTPUT/plastic-03032022-1_S1_R2_001.paired.fastq.gz $OUTPUT/plastic-03032022-1_S1_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-03032022-2_S2_R1_001.fastq $WORKING_DIRECTORY/plastic-03032022-2_S2_R2_001.fastq $OUTPUT/plastic-03032022-2_S2_R1_001.paired.fastq.gz $OUTPUT/plastic-03032022-2_S2_R1_001.single.fastq.gz $OUTPUT/plastic-03032022-2_S2_R2_001.paired.fastq.gz $OUTPUT/plastic-03032022-2_S2_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-03032022-3_S3_R1_001.fastq $WORKING_DIRECTORY/plastic-03032022-3_S3_R2_001.fastq $OUTPUT/plastic-03032022-3_S3_R1_001.paired.fastq.gz $OUTPUT/plastic-03032022-3_S3_R1_001.single.fastq.gz $OUTPUT/plastic-03032022-3_S3_R2_001.paired.fastq.gz $OUTPUT/plastic-03032022-3_S3_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-17032022-1_S4_R1_001.fastq $WORKING_DIRECTORY/plastic-17032022-1_S4_R2_001.fastq $OUTPUT/plastic-17032022-1_S4_R1_001.paired.fastq.gz $OUTPUT/plastic-17032022-1_S4_R1_001.single.fastq.gz $OUTPUT/plastic-17032022-1_S4_R2_001.paired.fastq.gz $OUTPUT/plastic-17032022-1_S4_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-17032022-2_S5_R1_001.fastq $WORKING_DIRECTORY/plastic-17032022-2_S5_R2_001.fastq $OUTPUT/plastic-17032022-2_S5_R1_001.paired.fastq.gz $OUTPUT/plastic-17032022-2_S5_R1_001.single.fastq.gz $OUTPUT/plastic-17032022-2_S5_R2_001.paired.fastq.gz $OUTPUT/plastic-17032022-2_S5_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-17032022-3_S6_R1_001.fastq $WORKING_DIRECTORY/plastic-17032022-3_S6_R2_001.fastq $OUTPUT/plastic-17032022-3_S6_R1_001.paired.fastq.gz $OUTPUT/plastic-17032022-3_S6_R1_001.single.fastq.gz $OUTPUT/plastic-17032022-3_S6_R2_001.paired.fastq.gz $OUTPUT/plastic-17032022-3_S6_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-3103202-1_S7_R1_001.fastq $WORKING_DIRECTORY/plastic-3103202-1_S7_R2_001.fastq $OUTPUT/plastic-3103202-1_S7_R1_001.paired.fastq.gz $OUTPUT/plastic-3103202-1_S7_R1_001.single.fastq.gz $OUTPUT/plastic-3103202-1_S7_R2_001.paired.fastq.gz $OUTPUT/plastic-3103202-1_S7_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-31032022-2_S8_R1_001.fastq $WORKING_DIRECTORY/plastic-31032022-2_S8_R2_001.fastq $OUTPUT/plastic-31032022-2_S8_R1_001.paired.fastq.gz $OUTPUT/plastic-31032022-2_S8_R1_001.single.fastq.gz $OUTPUT/plastic-31032022-2_S8_R2_001.paired.fastq.gz $OUTPUT/plastic-31032022-2_S8_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/plastic-31032022-3_S9_R1_001.fastq $WORKING_DIRECTORY/plastic-31032022-3_S9_R2_001.fastq $OUTPUT/plastic-31032022-3_S9_R1_001.paired.fastq.gz $OUTPUT/plastic-31032022-3_S9_R1_001.single.fastq.gz $OUTPUT/plastic-31032022-3_S9_R2_001.paired.fastq.gz $OUTPUT/plastic-31032022-3_S9_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/unfilteredwater-17032022-2_S13_R1_001.fastq $WORKING_DIRECTORY/unfilteredwater-17032022-2_S13_R2_001.fastq $OUTPUT/unfilteredwater-17032022-2_S13_R1_001.paired.fastq.gz $OUTPUT/unfilteredwater-17032022-2_S13_R1_001.single.fastq.gz $OUTPUT/unfilteredwater-17032022-2_S13_R2_001.paired.fastq.gz $OUTPUT/unfilteredwater-17032022-2_S13_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/unfilteredwater-17032022-3_S14_R1_001.fastq $WORKING_DIRECTORY/unfilteredwater-17032022-3_S14_R2_001.fastq $OUTPUT/unfilteredwater-17032022-3_S14_R1_001.paired.fastq.gz $OUTPUT/unfilteredwater-17032022-3_S14_R1_001.single.fastq.gz $OUTPUT/unfilteredwater-17032022-3_S14_R2_001.paired.fastq.gz $OUTPUT/unfilteredwater-17032022-3_S14_R2_001.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150	
					
					
