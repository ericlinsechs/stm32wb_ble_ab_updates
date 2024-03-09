#!/bin/bash

START_ADDR_A="0x08008000"
START_ADDR_B="0x08048000"

NEW_FLASH_LENGTH="256K"

MAGIC_VALUE_OFFSET=0x0140

LINKER_SCRIPT="BLE_HeartRate_ota/STM32CubeIDE/STM32WB55RGVX_FLASH.ld"


# Prompt the user to select a slot
echo "Which slot do you want to flash the image into?"
echo "A - Slot A"
echo "B - Slot B"
read -rp "Enter your choice (A/B): " slot_choice

# Convert user input to lowercase using tr command
slot_choice=$(echo "$slot_choice" | tr '[:upper:]' '[:lower:]')

# Validate user input
if [ "$slot_choice" != "a" ] && [ "$slot_choice" != "b" ]; then
    echo "Invalid choice. Please select either A or B."
    exit 1
fi

# Determine the selected start address based on user choice
if [ "$slot_choice" == "a" ]; then
    START_ADDR="$START_ADDR_A"
elif [ "$slot_choice" == "b" ]; then
    START_ADDR="$START_ADDR_B"
fi

# Extract the address and length
FLASH_LINE=$(awk '/FLASH \(rx\)/ ' "$LINKER_SCRIPT")

OLD_FLASH_ADDR=$(echo "$FLASH_LINE" | awk '{print $6}')
OLD_FLASH_LENGTH=$(echo "$FLASH_LINE" | awk '{print $9}')

# Replace the FLASH line with new address and length
sed -i "" "s/$OLD_FLASH_ADDR/$START_ADDR,/; s/$OLD_FLASH_LENGTH/$NEW_FLASH_LENGTH/" "$LINKER_SCRIPT"


# Find the .ota_region line and extract the address
OTA_LINE=$(awk '/.ota_region 0x/ ' "$LINKER_SCRIPT")

OLD_OTA_ADDR=$(echo "$OTA_LINE" | awk '{print $2}')

# Calculate the new address by adding an offset
NEW_OTA_ADDR=$(printf "%#x" $(( $(printf "%d" $START_ADDR) + $MAGIC_VALUE_OFFSET )))

# Replace the .ota_region address with new one
sed -i "" "s/$OLD_OTA_ADDR/$NEW_OTA_ADDR:/" "$LINKER_SCRIPT"

echo "New "$slot_choice" slot address: $START_ADDR"
echo "New "$slot_choice" slot length: $NEW_FLASH_LENGTH"
echo "New "$slot_choice" slot magic value address: $NEW_OTA_ADDR"

echo "$LINKER_SCRIPT is updated."

