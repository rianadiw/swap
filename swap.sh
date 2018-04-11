#!/bin/bash

if [ -f /swapfile ]; then
        echo "Error! Swap already exists"
else
        dd if=/dev/zero of=/swapfile bs=2048k count=1000
        mkswap /swapfile
        swapon /swapfile
        echo "/swapfile none swap sw 0 0" >> /etc/fstab
        sysctl -w vm.swappiness=30
        free
	chown root:root /swapfile
	chmod 600 /swapfile
        echo "Successfully created swap file"
fi
