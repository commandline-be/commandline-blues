#!/bin/bash
##  make ncsc spreadsheet

today=`date +%d`
month=`date +%m`
years=`date +%y`
date="$years"_"$month"_"$today"
#echo "$date"

mkdir -p ./tmp

./scripts/get_ncsc.sh
./scripts/clean_ncsc_ioc.sh ./tmp/ncsc_ioc.csv
./scripts/clean_ncsc_software.sh ./tmp/ncsc_software.csv
./scripts/clean_ncsc_scanning.sh ./tmp/ncsc_scanning.csv
./scripts/clean_ncsc_mitigations.sh ./tmp/ncsc_mitigations.csv
./scripts/clean_ncsc_csirts.sh ./tmp/ncsc_csirts.csv
#./scripts/clean_ncsc_hunting.sh ./tmp/ncsc_hunting.csv
#sed -i 's/|/\t/g' ./tmp/*.csv
ssconvert -I Gnumeric_stf:stf_csvtab --merge-to=log4j_cve_2021_44228_$date.xlsx ./tmp/ncsc_ioc.csv ./tmp/ncsc_software.csv ./tmp/ncsc_scanning.csv ./tmp/ncsc_mitigations.csv ./tmp/ncsc_csirts.csv
rm -Rf ./tmp/*
xdg-open ./log4j_cve_2021_44228_"$date".xlsx
