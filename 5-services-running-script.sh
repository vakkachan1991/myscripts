#!/bin/bash
#########
#Author:bivin
#Date:sep 30 2024
#this script outputs Node health
#version:v1
##########

# Predefined list of services
services=("httpd" "nginx" "apache2" "NetworkManager")

# Loop through each service and check if it's running
for i in "${services[@]}"; do
    if systemctl status "$i" | grep -q "running"; then
        echo "✅ $i is running"
    else
        echo "❌ $i is not running or not installed"
    fi
done
