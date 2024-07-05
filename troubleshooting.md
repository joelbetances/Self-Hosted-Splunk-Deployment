# Troubleshooting Guide

This guide provides solutions to common issues encountered during the installation and configuration of Splunk.

## Common Issues

### Issue: Splunk service fails to start

- **Solution**: Check the Splunk logs for errors:
    ```bash
    sudo journalctl -u splunk
    ```

### Issue: Data sources not being ingested

- **Solution**: Ensure the data source paths are correctly specified and accessible by Splunk.

### Issue: High memory usage

- **Solution**: Adjust the memory allocation settings in the configuration file to match your server's capabilities.
