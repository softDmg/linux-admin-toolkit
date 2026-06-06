#!/bin/bash

echo "=================================="
echo "      SYSTEM INVENTORY REPORT"
echo "=================================="

echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Kernel: $(uname -r)"

echo ""
echo "CPU:"
lscpu | grep "Model name" | sed 's/Model name:[[:space:]]*//'

echo ""
echo "Memory:"
free -h | awk '/Mem:/ {print $2 " total, " $3 " used, " $4 " free"}'

echo ""
echo "Disk:"
df -h / | awk 'NR==2 {print $4 " available of " $2}'

echo ""
echo "IP Address:"
hostname -I

echo ""
echo "Uptime:"
uptime -p
