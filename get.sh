#!/bin/bash
mkdir asset_details
cd asset_details
lshw > lshw.log
lshw -short > lshw.short.log
lshw -html > lshw.html
lscpu > cpu.log
lsblk > block.log
lspci > pci.log
