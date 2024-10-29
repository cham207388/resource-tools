#!/bin/bash

# Example input variables (as a string)
variables="region=us-east-2,environment=dev"

# Iterate over the comma-separated key-value pairs
IFS=',' # Internal Field Separator to split the string by commas
for var in $variables; do
  # Extract the key (part before the '=')
  key=$(echo $var | cut -d '=' -f 1)
  
  # Extract the value (part after the '=')
  value=$(echo $var | cut -d '=' -f 2)
  
  # Print the updated key and value
  echo "TF_VAR_$key=$value"
done