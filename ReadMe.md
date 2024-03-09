# A/B Firmware Update for STM32WB55 BLE Devices

## Overview
This project enhances the STM32WB55 BLE OTA example by providing A/B slots for firmware updates. Unlike the original example, which only updates one firmware, this project allows for up to two images to be stored in separate slots. This approach reduces the risk of bricking devices during an update, as users can revert to the previous version if necessary.

## Flash Partition
* OTA Application Start Address: 0x08000000
* A Slot Address: 0x08008000 - 0x08047fff
* B Slot Address: 0x08048000 - 0x08087fff
* Context Size for Each Slot: 0x040000 (256 kB)

## Changes Made
The following changes have been made to enable A/B system updates:

### Modified app_conf.h
* Defined start sector indices for A and B slots to `CFG_APP_SLOT_A_START_SECTOR_INDEX` and `CFG_APP_SLOT_B_START_SECTOR_INDEX`, respectively.

### Modified system_stm32wbxx.c
* Added structures to manage A/B bootloader control.
* Implemented functions to select the boot slot, print slot status, and prompt user for boot selection.

### Added config_linker.sh
* Added a script to configure linker settings for flashing images into A/B slots.

## Prerequisites
* [STM32CubeIDE](https://www.st.com/en/development-tools/stm32cubeide.html)
* [STM32CubeProgrammer](https://www.st.com/en/development-tools/stm32cubeprog.html)
* [STM32WB55 Nucleo Board](https://www.st.com/en/evaluation-tools/p-nucleo-wb55.html)
* Android/iOS device with the [ST BLE Sensor application](https://www.st.com/en/embedded-software/stblesensor.html)


## Usage
### Using Existing Images
1. Program [Image/BLE_ota.bin](Image/BLE_ota.bin) to your board at address `0x08000000` using [STM32CubeProgrammer](https://www.st.com/en/development-tools/stm32cubeprog.html).
2. Download [Image/BLE_HeartRate_ota_A.bin](Image/BLE_HeartRate_ota_A.bin) and [Image/BLE_HeartRate_ota_B.bin](Image/BLE_HeartRate_ota_B.bin) to your phone.
3. Power up the board.
4. Connect to the STM_OTA device using the [ST BLE Sensor application](https://www.st.com/en/embedded-software/stblesensor.html).
5. Choose firmware upgrade and customize update parameters as follows:
    * For A Slot:
        * First sector to delete: 8
        * Number of sectors to delete: 40
        * Select firmware: BLE_HeartRate_ota_A.bin
    * For B Slot:
        * First sector to delete: 72
        * Number of sectors to delete: 40
        * Select firmware: BLE_HeartRate_ota_B.bin
6. After the update, the bootloader will wait for you to select the system image to boot. The console log will display the status of both slots.
    ```
    Welcome to A/B system bootloader!
    Slot A: O
    Slot B: X

    Slot A(a), Slot B(b), BLE OTA(c)
    Select an app to start on: 
    ```
### Building Custom Images
#### BLE OTA
1. Download the STM32Cube MCU Package from [here](https://www.st.com/en/embedded-software/stm32cubewb.html).
2. Clone this project into `STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/`.
3. Import the project into STM32CubeIDE for building the image.

#### BLE HeartRate OTA
1. Create a new BLE HeartRate OTA example in STM32CubeIDE.
2. Copy [script/config_linker.sh](script/config_linker.sh) into the workspace.
3. Modify the linker script path in it for your case:
    ```
    LINKER_SCRIPT="BLE_HeartRate_ota/STM32CubeIDE/STM32WB55RGVX_FLASH.ld"
    ```
4. Execute the script and select the slot you want to flash to:
    ```
    Which slot do you want to flash the image into?
    A - Slot A
    B - Slot B
    Enter your choice (A/B):
    ```
5. Modify the code in `hr_app.c` as follows:
    ```c
    #if (BLE_CFG_OTA_REBOOT_CHAR != 0)
        case HRS_STM_BOOT_REQUEST_EVT:
    /* USER CODE BEGIN HRS_STM_BOOT_REQUEST_EVT */
            uint8_t start_address_sector = (*(uint8_t*)(SRAM1_BASE+3));
            *(uint32_t*)SRAM1_BASE = *(uint32_t*)pNotification->DataTransfered.pPayload;
            (*(uint8_t*)(SRAM1_BASE+3)) = start_address_sector;
            NVIC_SystemReset();
    /* USER CODE END HRS_STM_BOOT_REQUEST_EVT */
            break;
    #endif
    ```
6. Build the project and locate the binary file under the Debug folder.