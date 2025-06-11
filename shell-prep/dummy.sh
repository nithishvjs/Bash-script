#!/bin/bash
echo "=== $(date) ===" >> /var/log/resource_usage.log
echo "Memory Usage:" >> /var/log/resource_usage.log
free -h >> /var/log/resource_usage.log
echo "CPU Usage:" >> /var/log/resource_usage.log
top -b -n1 | grep "Cpu(s)" >> /var/log/resource_usage.log
echo "" >> /var/log/resource_usage.log

