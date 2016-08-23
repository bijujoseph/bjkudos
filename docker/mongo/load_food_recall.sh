#!/usr/bin/env bash

#
# This script will downlod the food recall json export from FDA and loads it into "recalls" collection in "food" database. 
#
cd /work/sandpit
#download all the files
wget http://download.open.fda.gov/food/enforcement/food-enforcement-0001-of-0001.json.zip

echo 'Unzipping food-enforcement-0001-of-0001.json.zip'
unzip food-enforcement-0001-of-0001.json.zip
jq .results food-enforcement-0001-of-0001.json > food-enforcement-results.json

echo 'Importing into MongoDB collection data'
mongoimport --db food --collection recalls --type json --file food-enforcement-results.json --jsonArray 
