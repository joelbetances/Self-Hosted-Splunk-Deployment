#!/bin/bash

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y wget apt-transport-https

# Download and install Splunk
wget -O splunk-8.2.2-87344edfcdb4-Linux-x86_64.tgz 'https://www.splunk.com/page/download_track?file=8.2.2/splunk-8.2.2-87344edfcdb4-Linux-x86_64.tgz'
tar -xzvf splunk-8.2.2-87344edfcdb4-Linux-x86_64.tgz
cd splunkforwarder
sudo ./bin/splunk start --accept-license

# Configure Splunk
cp /path/to/your/splunk.conf /opt/splunkforwarder/etc/system/local/splunk.conf

# Start Splunk
sudo ./bin/splunk enable boot-start
sudo ./bin/splunk start
