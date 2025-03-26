#!/bin/bash

# Check if an ID was provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide an LCSC ID number as a parameter."
    echo "Usage: $0 <lcsc_id>"
    exit 1
fi

# Store the provided ID
lcsc_id=$1

# Run the easyeda2kicad command with the provided ID
easyeda2kicad --full --lcsc_id=${lcsc_id} --output ./library/Microbit

echo "Conversion completed for LCSC ID: ${lcsc_id}"
