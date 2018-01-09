This repository is directly connect to my personal blog located at area1337.com.

bro_extractor.sh - > This bash script has to be ran in a Bro IDS Server where files are being stored in /var/log/bro/current/. This extracts fields related to each bro log file and also creates a regex for Splunk.

splunk_bro_input.conf - > Configuration for Splunkforwarder to forward Bro IDS logs to Splunk server. This configuration file forwards each log file into its seperate sourcetype using index bro. This index has to be already created in the Splunk server.
