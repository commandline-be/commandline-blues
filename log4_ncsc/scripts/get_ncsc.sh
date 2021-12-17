#!/bin/bash

wget -q https://raw.githubusercontent.com/NCSC-NL/log4shell/main/iocs/README.md -O ./tmp/ncsc_ioc.csv
wget -q https://raw.githubusercontent.com/NCSC-NL/log4shell/main/software/README.md -O ./tmp/ncsc_software.csv
wget -q https://raw.githubusercontent.com/NCSC-NL/log4shell/main/scanning/README.md -O ./tmp/ncsc_scanning.csv
wget -q https://github.com/NCSC-NL/log4shell/raw/main/mitigation/README.md -O ./tmp/ncsc_mitigations.csv
wget -q https://github.com/NCSC-NL/log4shell/raw/main/hunting/README.md -O ./tmp/ncsc_hunting.csv
wget -q https://raw.githubusercontent.com/enisaeu/CNW/main/log4shell/README.md -O ./tmp/ncsc_csirts.csv
