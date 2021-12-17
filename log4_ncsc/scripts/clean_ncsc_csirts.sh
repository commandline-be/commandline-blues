#!/bin/bash

sed -ie '1,9d' $1
sed -i '/^|/!d' $1
sed -i '/^|:/d' $1
sed -i '/^| :/d' $1
sed -i '/^|---/d' $1
#sed -i '/^#.*/d' ncsc_nl_log4j_software.csv
#sed -i '/^$/d' ncsc_nl_log4j_software.csv

