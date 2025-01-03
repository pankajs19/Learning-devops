#!/bin/bash

# Path to the script you want to execute
TARGET_SCRIPT="./demo.sh"

# Check if the target script exists
if [ ! -f "$TARGET_SCRIPT" ]; then
    echo "Error: Target script '$TARGET_SCRIPT' not found."
    exit 1
fi

# Check if the target script is executable
if [ ! -x "$TARGET_SCRIPT" ]; then
    echo "Error: Target script '$TARGET_SCRIPT' is not executable."
    exit 1
fi

# Execute the target script
echo "Executing target script: $TARGET_SCRIPT"
"$TARGET_SCRIPT"

# Capture the exit status of the executed script
STATUS=$?

# Check the status of the executed script
if [ $STATUS -eq 0 ]; then
    echo "Target script executed successfully."
else
    echo "Target script execution failed with status $STATUS."
    exit $STATUS
fi
