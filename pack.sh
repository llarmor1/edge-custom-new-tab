#!/bin/bash

# autmated compression into a zip file
if  [ -e "packaged/" ]; then
    echo "[$(date +%H:%M:%S)] directory already exists"
elif [ ! -e "packaged/" ]; then
    echo "[$(date +%H:%M:%S)] directory doesn't exist, creating it..."
    mkdir packaged
fi

if [ ! -e "packaged/packaged-latest.zip" ]; then
    echo "[$(date +%H:%M:%S)] no latest package found, packaging..."
    zip packaged/packaged-latest.zip manifest.json src/*
elif [ -e "packaged/packaged-latest.zip" ]; then
    echo "[$(date +%H:%M:%S)] latest package found, renaming it"
    echo "[$(date +%H:%M:%S)] compressing new latest package"
    mv packaged/packaged-latest.zip "packaged/packaged-$(date +%d-%m_%H-%M-%S).zip";
    zip packaged/packaged-latest.zip manifest.json src/*
fi

echo "[$(date +%H:%M:%S)] created latest package in packaged/packaged-latest.zip"
