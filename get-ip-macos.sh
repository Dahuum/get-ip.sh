#!/bin/bash

echo "🔍 Local IP addresses:"
ifconfig | awk '/inet / && $2 != "127.0.0.1" {print $1 ": " $2}'

echo
echo "🌐 Public IP address:"
curl -s https://api.ipify.org
echo
