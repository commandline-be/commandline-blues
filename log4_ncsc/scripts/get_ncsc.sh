#!/bin/bash

wget https://raw.githubusercontent.com/NCSC-NL/log4shell/main/iocs/README.md -O ./tmp/ncsc_ioc.csv
wget https://raw.githubusercontent.com/NCSC-NL/log4shell/main/software/README.md -O ./tmp/ncsc_software.csv
wget https://raw.githubusercontent.com/NCSC-NL/log4shell/main/scanning/README.md -O ./tmp/ncsc_scanning.csv
wget https://github.com/NCSC-NL/log4shell/raw/main/mitigation/README.md -O ./tmp/ncsc_mitigations.csv
wget https://github.com/NCSC-NL/log4shell/raw/main/hunting/README.md -O ./tmp/ncsc_hunting.csv
