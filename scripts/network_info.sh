#!/bin/bash

echo "=================================="
echo "      NETWORK INFORMATION"
echo "=================================="

echo ""
echo "Hostname:"
hostname

echo ""
echo "IP Addresses:"
hostname -I

echo ""
echo "Default Gateway:"
ip route | grep default | awk '{print $3}'

echo ""
echo "Active Interfaces:"
ip -br addr | awk '{print $1, $2}'

echo ""
echo "DNS Servers:"
grep nameserver /etc/resolv.conf | awk '{print $2}'