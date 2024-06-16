# nodeHealth

# Node Health Check Script for EC2 Instance

## Overview
This script checks the health of an EC2 instance by displaying various system metrics, such as disk usage, memory usage, number of processors, and specific processes related to Amazon services. The script helps to ensure that the EC2 instance is functioning correctly and efficiently.

## Date
16/06/2024

## Version
v1

## Features
- Displays disk usage.
- Shows memory usage in gigabytes.
- Outputs the number of processing units.
- Lists processes related to Amazon services.

## Prerequisites
- Ensure you have access to the EC2 instance and the necessary permissions to execute scripts.
- The script should be run on a Unix-like operating system.

## Usage

1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Make the Script Executable:**
   ```bash
   chmod +x to-get-nodehealth.sh
   ```

3. **Run the Script:**
   ```bash
   ./to-get-nodehealth.sh
   ```

## Script Details
The script performs the following operations:

1. **Debug Mode and Exit on Error:**
   - `set -x`: Enables debug mode to print each command before executing it.
   - `set -e`: Exits the script if any command fails.
   - `set -o pipefail`: Ensures that the script exits with a failure status if any command in a pipeline fails.

2. **Check Disk Usage:**
   ```bash
   df -h
   ```
   - Displays the disk space usage in a human-readable format.

3. **Check Memory Usage:**
   ```bash
   free -g
   ```
   - Displays the memory usage in gigabytes.

4. **Check Number of Processors:**
   ```bash
   nproc
   ```
   - Outputs the number of processing units available.

5. **Check Amazon-Related Processes:**
   ```bash
   ps -ef | grep amazon | awk -F" " '{print $2}'
   ```
   - Lists the process IDs of processes related to Amazon services.

## Example Output
```
Filesystem      Size  Used Avail Use% Mounted on
udev            1.9G     0  1.9G   0% /dev
tmpfs           395M  1.3M  394M   1% /run
/dev/xvda1       50G  2.1G   47G   5% /
...

              total        used        free      shared  buff/cache   available
Mem:            15G         1G         2G        32M         12G         13G
Swap:           0G         0G         0G

4

1234
5678
91011
...
```

## Debugging
If you encounter any issues while running the script, the `set -x` option will help you trace the command execution for debugging purposes.

## Conclusion
This script provides a quick and easy way to check the health of your EC2 instance by displaying key system metrics. Regular monitoring of these metrics can help ensure that your instance is running smoothly and efficiently.
