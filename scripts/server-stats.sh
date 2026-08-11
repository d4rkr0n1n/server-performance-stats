#!/bin/bash

echo "Collecting server stats..."

# Total CPU usage
top -b -n 1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 + $4 "%"}'

# Total memory usage (Free vs Used including percentage)
free -m | awk 'NR==2{printf "Memory Usage: %.2f%%\n", $3*100/$2 }'

# Total disk usage (Free vs Used including percentage)
df -h | awk '$NF=="/"{printf "Disk Usage: %s\n", $5}'

# Top 5 processes by CPU usage
echo "Top 5 processes by CPU usage:"
ps aux --sort=-%cpu | head -n 5 | awk '{print $11}'

# Top 5 processes by memory usage
echo "Top 5 processes by memory usage:"
ps aux --sort=-%mem | head -n 5 | awk '{print $11}'

# OS Version
echo "OS Version: $(lsb_release -d | awk -F"\t" '{print $2}')"

# Uptime
echo "Uptime: $(uptime)"

# Load Average
echo "Load Average: $(uptime | awk -F'load average:' '{ print $2 }')"

# Logged In Users
echo "Logged In Users: $(who | wc -l)"

# Failed Login Attempts
echo "Failed Login Attempts: $(grep "Failed password" /var/log/auth.log | wc -l)"

echo "Server stats collection complete."