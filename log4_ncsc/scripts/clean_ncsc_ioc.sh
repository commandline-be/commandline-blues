#!/bin/bash

sed -ie '1,8d' $1
sed -i '/^|/!d' $1
sed -i '/^|:---/d' $1
sed -i '/^|---/d' $1
sed -i '2,${ /^| Note /d }' $1
sed -i 's/[()]//g' $1
sed -i '/|.*/ s/\[source\]//g' $1
#sed -i '/^#.*/d' ncsc_nl_log4j_software.csv
#sed -i '/^$/d' ncsc_nl_log4j_software.csv

