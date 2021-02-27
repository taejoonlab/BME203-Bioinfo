#!/bin/bash

#QUERY="Escherichia coli"
#QUERY="Staphylococcus aureus"
#QUERY="Streptococcus pyogen"
#QUERY="Campylobacter jejuni"
QUERY="Acidaminococcus"
#QUERY="Francisella tularensis"

SUMMARY_GZ="assembly_summary.2021-02-27.txt.gz"

echo "# QUERY: "$QUERY
#zgrep "$QUERY" $SUMMARY_GZ | grep reference | awk -F"\t" '{print $15"\t"$1"\t"$20"\t"$8"\t"$9}' | sort -d | head -n 20 >> genomes_list.txt
zgrep "$QUERY" $SUMMARY_GZ | grep Genome | awk -F"\t" '{print $15"\t"$1"\t"$20"\t"$8"\t"$9}' | sort -d | head -n 20 >> genomes_list.txt
