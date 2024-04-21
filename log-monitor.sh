#!/bin/bash

# Usage: ./log-monitor.sh <log_file>
# Example: ./log-monitor.sh /var/log/syslog

LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file does not exist."
    exit 1
fi

# Function to handle Ctrl+C
trap ctrl_c INT

function ctrl_c() {
    echo -e "\nMonitoring stopped by user."
    exit 0
}

# Main loop to monitor new log entries
echo "Monitoring new entries in the log file: $LOG_FILE"
tail -f $LOG_FILE | while read LINE
do
    echo "$LINE"
done
[200~# Function to perform log analysis
function analyze_logs() {
	    echo "Analyzing log file for errors..."
	        echo "Error messages count: $(grep -ic 'error' $LOG_FILE)"
	}

	# Add this line before the tail command in the main loop:
	analyze_logs

