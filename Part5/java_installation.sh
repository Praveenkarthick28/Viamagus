#!/bin/bash

#################################################

# use script for installing java
# version 1.0
# Author : Praveen karthick

# usage : sh java_installation.sh

##################################################

# Creating variable for redirecting the output to logfile


if [ -f /opt/logs/script_logs.log ]; then
    echo "Redirecting output to logfile "
else
    sudo touch /opt/logs/script_logs.log
    echo "Log file created !"
fi

LOG_FILE="/opt/logs/script_logs.log"

# defining Function to log messages with date and time

log_message() {
    echo "$(date '+%Y-%m-%d %H:%M') - $1" | tee -a $LOG_FILE
}


#calling the funtion for logging

log_message "Downloading OpenJDK 1.8..."

# TO Download OpenJDK 1.8

wget -q --show-progress -O openjdk-8.tar.gz https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz

log_message " java Download completed."

# To Install Java

log_message "Installing Java"

mkdir -p /opt/java

# Extracts the downloaded tar.gz file into /opt/java

tar -xzf openjdk-8.tar.gz -C /opt/java

# Finds the directory where Java was extracted and stores 

JAVA_DIR=$(find /opt/java -maxdepth 1 -type d -name "jdk1.8*")

log_message "Java installed successfully"

#  Add Java environment variable to the .bashrc file. 

log_message "Updating PATH and .bashrc..."

echo "export JAVA_HOME=$JAVA_DIR" | tee -a ~/.bashrc

echo 'export PATH=$JAVA_HOME/bin:$PATH' | tee -a ~/.bashrc

# To update the path for current session

export JAVA_HOME=$JAVA_DIR

export PATH=$JAVA_HOME/bin:$PATH

log_message "PATH updated."

# Calling function to Ensure terminal echoes each step with date & time stamp

log_message "###########Script executed successfully#############"

