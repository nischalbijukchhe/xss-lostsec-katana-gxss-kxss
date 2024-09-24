This is the best xss oneliner i ever made first it collects all URLs from passive sources that only contain query parameters. It then filters unique URLs, then it checks for reflection in responses using Gxss, and then identifies unfiltered characters with kxss then you can manually test xss depend on which character its allowed or send that all urls to lostxlso tool in list file and it check with all payload bypasses make sure all tools installed like katana,uro,Gxss,Kxss

echo https://ravagedband.com | katana -d 5 -ps -pss waybackarchive,commoncrawl,alienvault -f qurl | uro | Gxss | kxss

#!/bin/bash

# Ask the user for the website URL
read -p "Enter the website URL: " website_url

# Step 1: Run the first command and save the output to output.txt using the user-provided URL
echo "$website_url" | katana -d 5 -ps -pss waybackarchive,commoncrawl,alienvault -f qurl | uro | Gxss | kxss > output.txt

# Step 2: Filter URLs and save them to new.txt
cat output.txt | grep -oP '^URL: \K\S+' > xssurls.txt

# Let the user know the task is complete
echo "Filtered URLs have been saved to xssurls.txt"
