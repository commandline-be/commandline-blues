#!/bin/bash

sed -ie '1,9d' $1
sed -i '/^|/!d' $1
sed -i '/^|:---/d' $1
sed -i '/^|---/d' $1
sed -i '2,${ /^| Source /d }' $1
sed -i 's/[()]//g' $1
sed -i '/|.*/ s/\[source\]//g' $1
