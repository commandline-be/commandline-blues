#!/bin/bash

sed -ie '1,24d' $1
sed -i '/^|/!d' $1
sed -i '/^|:---/d' $1
sed -i '/^|---/d' $1
sed -i '2,${ /^| Supplier /d }' $1
sed -i 's/[()]//g' $1
sed -i '/|.*/ s/\[source\]//g' $1
sed -i 's/\,/\;/g' $1
