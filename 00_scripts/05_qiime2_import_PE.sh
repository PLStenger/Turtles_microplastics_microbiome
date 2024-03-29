#!/usr/bin/env bash

WORKING_DIRECTORY=/scratch_vol1/fungi/Turtles_microplastics_microbiome/Turtles_microplastics_microbiome/03_cleaned_data
OUTPUT=/scratch_vol1/fungi/Turtles_microplastics_microbiome/Turtles_microplastics_microbiome/05_QIIME2
NEG_CONTROL=/scratch_vol1/fungi/Turtles_microplastics_microbiome/Turtles_microplastics_microbiome/98_database_files/manifest_negative_control

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $OUTPUT

# You need a "manifest" for explaining and importing your data :
# In the fastq manifest formats, a manifest file maps sample identifiers to fastq.gz or fastq absolute filepaths that contain sequence and quality data for the sample, and indicates the direction of the reads in each fastq.gz / fastq absolute filepath. The manifest file will generally be created by you, and it is designed to be a simple format that doesn’t put restrictions on the naming of the demultiplexed fastq.gz / fastq files, since there is no broadly used naming convention for these files. There are no restrictions on the name of the manifest file.
# See https://docs.qiime2.org/2018.8/tutorials/importing/

MANIFEST=/scratch_vol1/fungi/Turtles_microplastics_microbiome/Turtles_microplastics_microbiome/98_database_files/manifest
TMPDIR=/scratch_vol1

###############################################################
### For importing your data in a Qiime2 format
###############################################################

cd $WORKING_DIRECTORY

eval "$(conda shell.bash hook)"
conda activate qiime2-2021.4

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $OUTPUT/core
mkdir -p $OUTPUT/visual

# I'm doing this step in order to deal the no space left in cluster :
export TMPDIR='/scratch_vol1/fungi'
echo $TMPDIR

qiime tools import --type 'SampleData[PairedEndSequencesWithQuality]' \
			    --input-path  $MANIFEST \
			    --output-path $OUTPUT/core/demux.qza \
			    --input-format PairedEndFastqManifestPhred33V2

cd $OUTPUT

qiime demux summarize --i-data core/demux.qza --o-visualization visual/demux.qzv

qiime tools import --type 'SampleData[PairedEndSequencesWithQuality]' \
			    --input-path  $NEG_CONTROL \
			    --output-path $OUTPUT/core/contamination_seq.qza \
			    --input-format PairedEndFastqManifestPhred33V2

cd $OUTPUT

qiime demux summarize --i-data core/contamination_seq.qza --o-visualization visual/contamination_seq.qzv

# for vizualisation :
# https://view.qiime2.org

qiime tools export --input-path visual/demux.qzv --output-path export/visual/demux
qiime tools export --input-path core/demux.qza --output-path export/core/demux


qiime tools export --input-path visual/contamination_seq.qzv --output-path export/visual/contamination_seq
qiime tools export --input-path core/contamination_seq.qza --output-path export/core/contamination_seq

