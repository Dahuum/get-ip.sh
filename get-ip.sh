#!/bin/bash

echo "🔍 Local IP addresses:"
ip -o -4 addr show | awk '{print $2 ": " $4}'

echo
echo "🌐 Public IP address:"
curl -s https://api.ipify.org
echo
