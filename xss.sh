#!/bin/bash

# Ask the user for the website URL
read -p "Enter the website URL: " website_url

# Step 1: Run the first command and save the output to output.txt using the user-provided URL
echo "$website_url" | katana -d 5 -ps -pss waybackarchive,commoncrawl,alienvault -f qurl | uro | Gxss | kxss > output.txt

# Step 2: Filter URLs and save them to new.txt
cat output.txt | grep -oP '^URL: \K\S+' > xssurls.txt

# Let the user know the task is complete
echo "Filtered URLs have been saved to xssurls.txt"
