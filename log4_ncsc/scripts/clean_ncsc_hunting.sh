#!/bin/bash
### this script is NOT in use yet and must be modified to fit the different formatting of 'hunting' section

sed -ie '1,33d' $1
sed -i '/^|/!d' $1
sed -i '/^|:---/d' $1
sed -i '/^|---/d' $1
sed -i '2,${ /^| Source /d }' $1
sed -i '2,${ /^| Note /d }' $1
sed -i '2,${ /^| Web-server /d }' $1
sed -i 's/[()]//g' $1
sed -i '/|.*/ s/\[source\]//g' $1
