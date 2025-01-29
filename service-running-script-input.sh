#!/bin/bash
#########
#Author:bivin
#Date:2022 March
#this script outputs Node health
#version:v2
##########

# Ask for input
echo "Enter a service name:"
read service_name

# Check if the input is empty using [[ ... ]]
if [[ "$service_name" == "" ]]; then
    echo "Error: No service name entered!"
    exit 1
fi

# Check if service is running
if systemctl status "$service_name" | grep "running"; then
    echo "✅ $service_name is running"
else
    echo "❌ $service_name is not running or not installed"
fi
