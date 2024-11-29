# Nginx-Log-Analyser

## Project URL  
[project URL](https://roadmap.sh/projects/nginx-log-analyser) 

 
## Overview
This project analyzes an NGINX access log file using shell commands to extract key insights such as the top IP addresses, requested paths, response status codes, and user agents.
---

### Prerequisites
-->Shell Environment: Ensure you have access to a Unix-based shell.
-->Tools Required: wget, vim, awk, sort, uniq, and head.

## Steps to Run the Script

### 1. Download the Log File
Download the NGINX access log file using wget and save it as access.log.
```bash
wget -O access.log https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log
```
# Explanation: Downloads the sample log file and saves it locally as access.log.

### 2. Create the Script File
Open the vim editor to create the shell script.
```bash
vim analyze_logs.sh
```
# Explanation: Opens the editor to write the script. Paste the provided analyze_logs.sh code into the editor.

### 3. Make the Script Executable
Modify the script's permissions to allow execution.
```bash
chmod +x analyze_logs.sh
```
# Explanation: Makes the analyze_logs.sh script executable for the user.

### 4. Run the Script
Execute the shell script to analyze the log file.
```bash
./analyze_logs.sh
```

# Explanation: Runs the script and displays the results:
Top 5 IP addresses with the most requests.
Top 5 most requested paths.
Top 5 response status codes.
Top 5 user agents.

### Example Output
Running the script produces output like this:
```bash
Top 5 IP addresses with the most requests:
45.76.135.253 - 1000 requests
142.93.143.8 - 600 requests
178.128.94.113 - 50 requests
43.224.43.187 - 30 requests
178.128.94.113 - 20 requests

Top 5 most requested paths:
/api/v1/users - 1000 requests
/api/v1/products - 600 requests
/api/v1/orders - 50 requests
/api/v1/payments - 30 requests
/api/v1/reviews - 20 requests

Top 5 response status codes:
200 - 1000 requests
404 - 600 requests
500 - 50 requests
401 - 30 requests
304 - 20 requests

Top 5 user agents:
Mozilla/5.0 - 1000 requests
curl/7.58.0 - 600 requests
PostmanRuntime/7.26.8 - 50 requests
```

### Notes
--> Ensure the log file format matches the fields assumed in the script.
--> You can modify field numbers in the awk commands if the log structure differs.
