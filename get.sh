#!/bin/bash
smbAddr=192.168.94.16

mkdir asset_details
cd asset_details
lshw > lshw.log
lshw -short > lshw.short.log
lshw -html > lshw.html
lscpu > cpu.log
lsblk > block.log
lspci > pci.log
cd ..
zip NV-PC-$1.asset_details.zip asset_details -r
rm asset_details -Rf
echo "" | smbclient //$smbAddr/systeminfo/ -c "put NV-PC-$1.asset_details.zip" > /dev/null
rm NV-PC-$1.asset_details.zip
