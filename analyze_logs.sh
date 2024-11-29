#!/bin/bash

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' access.log | sort | uniq -c | sort -rn | head -n 5

echo -e "\nTop 5 most requested paths:"
awk '{print $7}' access.log | sort | uniq -c | sort -rn | head -n 5

echo -e "\nTop 5 response status codes:"
awk '{print $9}' access.log | sort | uniq -c | sort -rn | head -n 5

echo -e "\nTop 5 user agents:"
awk -F\" '{print $6}' access.log | sort | uniq -c | sort -rn | head -n 5
