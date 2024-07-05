# Installation Guide

This guide will walk you through the steps to install and configure Splunk on your server.

## Prerequisites

- A server with a public IP address
- Basic knowledge of Linux command line
- SSH access to the server

## Steps

1. **Update your server**:
    ```bash
    sudo apt-get update
    sudo apt-get upgrade
    ```

2. **Install necessary packages**:
    ```bash
    sudo apt-get install -y wget apt-transport-https
    ```

3. **Download and install Splunk**:
    ```bash
    wget -O splunk-8.2.2-87344edfcdb4-Linux-x86_64.tgz 'https://www.splunk.com/page/download_track?file=8.2.2/splunk-8.2.2-87344edfcdb4-Linux-x86_64.tgz'
    tar -xzvf splunk-8.2.2-87344edfcdb4-Linux-x86_64.tgz
    cd splunkforwarder
    sudo ./bin/splunk start --accept-license
    ```

4. **Configure Splunk**:
    Copy your configuration file to the correct location:
    ```bash
    cp /path/to/your/splunk.conf /opt/splunkforwarder/etc/system/local/splunk.conf
    ```

5. **Start Splunk**:
    ```bash
    sudo ./bin/splunk enable boot-start
    sudo ./bin/splunk start
    ```

## Client Setup

1. **Access Splunk**:
    Open a web browser and navigate to `http://your_server_ip:8000`.

2. **Login**:
    Use the admin credentials set during the configuration to log in.
