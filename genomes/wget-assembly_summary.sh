#!/bin/bash

#!/bin/bash

# Download refseq assembly_summary file

TODAY=$(date '+%Y-%m-%d')
echo $TODAY

URL_SUMMARY="https://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/assembly_summary.txt"
OUT_SUMMARY="assembly_summary."$TODAY".txt"

wget -O $OUT_SUMMARY $URL_SUMMARY
pigz -p 4 $OUT_SUMMARY
