#!/bin/bash
# This script is supposed to be run on Jetson Nano


echo "Run ./setSwapMemorySize.sh -g 16 and reboot before executing this scrip"
read -p "Run setSwapMemorySize.sh now?[No]/Yes:" respond
if [[ $respond == 'Yes' || $respond == 'Y' ]]
then
    echo "Resizing swap file..."
    sudo ./setSwapMemorySize.sh -g 16
    echo "Reboot in 10 sec... Rerun this script after the reboot and continue."
    sleep 10
    sudo reboot
fi

echo "export OPENBLAS_CORETYPE=ARMV8" >> ~/.bashrc
