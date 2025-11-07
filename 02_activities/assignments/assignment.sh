#!/bin/bash
set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################
# This script creates standard analysis and output directories
# for a new project. It also creates a README file with the
# project name and a brief description of the project.
# Then it unzips the raw data provided by the client.

if [ -d newproject ]; then
  echo "Recreating the newproject directory"
  rm -rf newproject
fi
mkdir newproject
cd newproject

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data
mkdir data

# 2. Move the ./rawdata directory to ./data/raw
cd data
mkdir raw
mv ./rawdata ./data/raw
# 3. List the contents of the ./data/raw directory
ls 
event_log_1.log		ipaddr_1.txt		server_log_28.log	user_log_1.log
event_log_10.log	ipaddr_10.txt		server_log_29.log	user_log_10.log
event_log_11.log	ipaddr_2.txt		server_log_3.log	user_log_11.log
event_log_12.log	ipaddr_3.txt		server_log_30.log	user_log_12.log
event_log_13.log	ipaddr_4.txt		server_log_31.log	user_log_13.log
event_log_14.log	ipaddr_5.txt		server_log_32.log	user_log_14.log
event_log_15.log	ipaddr_6.txt		server_log_33.log	user_log_15.log
event_log_16.log	ipaddr_7.txt		server_log_34.log	user_log_16.log
event_log_17.log	ipaddr_8.txt		server_log_35.log	user_log_17.log
event_log_18.log	ipaddr_9.txt		server_log_36.log	user_log_18.log
event_log_19.log	misc_data.txt		server_log_37.log	user_log_19.log
event_log_2.log		other_file_1.dat	server_log_38.log	user_log_2.log
event_log_20.log	other_file_10.dat	server_log_39.log	user_log_20.log
event_log_21.log	other_file_11.dat	server_log_4.log	user_log_21.log
event_log_22.log	other_file_12.dat	server_log_40.log	user_log_22.log
event_log_23.log	other_file_13.dat	server_log_41.log	user_log_23.log
event_log_24.log	other_file_14.dat	server_log_42.log	user_log_24.log
event_log_25.log	other_file_15.dat	server_log_43.log	user_log_25.log
event_log_26.log	other_file_16.dat	server_log_44.log	user_log_26.log
event_log_27.log	other_file_17.dat	server_log_45.log	user_log_27.log
event_log_28.log	other_file_18.dat	server_log_46.log	user_log_28.log
event_log_29.log	other_file_19.dat	server_log_47.log	user_log_29.log
event_log_3.log		other_file_2.dat	server_log_48.log	user_log_3.log
event_log_30.log	other_file_3.dat	server_log_49.log	user_log_30.log
event_log_31.log	other_file_4.dat	server_log_5.log	user_log_31.log
event_log_32.log	other_file_5.dat	server_log_50.log	user_log_32.log
event_log_33.log	other_file_6.dat	server_log_6.log	user_log_33.log
event_log_34.log	other_file_7.dat	server_log_7.log	user_log_34.log
event_log_35.log	other_file_8.dat	server_log_8.log	user_log_35.log
event_log_36.log	other_file_9.dat	server_log_9.log	user_log_36.log
event_log_37.log	server_log_1.log	user_ipaddr_1.log	user_log_37.log
event_log_38.log	server_log_10.log	user_ipaddr_10.log	user_log_38.log
event_log_39.log	server_log_11.log	user_ipaddr_11.log	user_log_39.log
event_log_4.log		server_log_12.log	user_ipaddr_12.log	user_log_4.log
event_log_40.log	server_log_13.log	user_ipaddr_13.log	user_log_40.log
event_log_41.log	server_log_14.log	user_ipaddr_14.log	user_log_41.log
event_log_42.log	server_log_15.log	user_ipaddr_15.log	user_log_42.log
event_log_43.log	server_log_16.log	user_ipaddr_16.log	user_log_43.log
event_log_44.log	server_log_17.log	user_ipaddr_17.log	user_log_44.log
event_log_45.log	server_log_18.log	user_ipaddr_18.log	user_log_45.log
event_log_46.log	server_log_19.log	user_ipaddr_19.log	user_log_46.log
event_log_47.log	server_log_2.log	user_ipaddr_2.log	user_log_47.log
event_log_48.log	server_log_20.log	user_ipaddr_20.log	user_log_48.log
event_log_49.log	server_log_21.log	user_ipaddr_3.log	user_log_49.log
event_log_5.log		server_log_22.log	user_ipaddr_4.log	user_log_5.log
event_log_50.log	server_log_23.log	user_ipaddr_5.log	user_log_50.log
event_log_6.log		server_log_24.log	user_ipaddr_6.log	user_log_6.log
event_log_7.log		server_log_25.log	user_ipaddr_7.log	user_log_7.log
event_log_8.log		server_log_26.log	user_ipaddr_8.log	user_log_8.log
event_log_9.log		server_log_27.log	user_ipaddr_9.log	user_log_9.log

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs

# 6. Repeat the above step for user logs and event logs

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed


###########################################

echo "Project setup is complete!"
