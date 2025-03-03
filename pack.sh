#!/bin/bash

# autmated compression into a zip file
if [ ! -e "packed-latest.zip" ]; then
    zip packed-latest.zip manifest.json src/*
elif [ -e "packed-latest.zip" ]; then
    mv packed-latest.zip "packed-$(date +%d-%m_%H-%M-%S).zip";
    zip packed-latest.zip manifest.json src/*
fi
