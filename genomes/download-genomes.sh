#!/bin/bash
INPUT="genomes_list.txt"

#URL_DIR=$(awk -F"\t" '{print $3}' $INPUT)
#OUT_NAME=$(awk -F"]t" '{print $1}' $INPUT)
#echo $URL_DIR 

cat $INPUT | while read LINE
do
  URL_DIR=$(echo $LINE | awk '{print $4}')
  OUT_NAME=$(echo $LINE | awk '{print $1}')

  FILENAME_BASE=$(echo $URL_DIR | awk -F"/" '{print $(NF)}')
  FILENAME_GENOME=$FILENAME_BASE"_genomic.fna.gz"
  OUT_GENOME=$OUT_NAME"."$FILENAME_GENOME

  echo $OUT_GENOME
  wget -O $OUT_GENOME $URL_DIR/$FILENAME_GENOME
done
