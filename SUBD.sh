#!/bin/bash

# Check if input is provided
if [ -t 0 ]; then
    echo "Usage: cat subdomains.txt | $0"
    exit 1
fi

# Read subdomains from stdin and process them
while IFS= read -r SUBDOMAIN; do
    # Use dig to get the CNAME record
    CNAME_RECORD=$(dig +short CNAME "$SUBDOMAIN")

    # Check if the CNAME record is empty
    if [ -z "$CNAME_RECORD" ]; then
        echo "No CNAME record found for $SUBDOMAIN"
    else
        echo "CNAME record for $SUBDOMAIN: $CNAME_RECORD"
    fi
done
