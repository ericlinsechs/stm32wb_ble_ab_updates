################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/app_debug.c \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/app_entry.c \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/flash_driver.c \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/hw_timerserver.c \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/hw_uart.c \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/main.c \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/stm32_lpm_if.c \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/stm32wbxx_it.c \
../Application/Core/syscalls.c \
../Application/Core/sysmem.c 

OBJS += \
./Application/Core/app_debug.o \
./Application/Core/app_entry.o \
./Application/Core/flash_driver.o \
./Application/Core/hw_timerserver.o \
./Application/Core/hw_uart.o \
./Application/Core/main.o \
./Application/Core/stm32_lpm_if.o \
./Application/Core/stm32wbxx_it.o \
./Application/Core/syscalls.o \
./Application/Core/sysmem.o 

C_DEPS += \
./Application/Core/app_debug.d \
./Application/Core/app_entry.d \
./Application/Core/flash_driver.d \
./Application/Core/hw_timerserver.d \
./Application/Core/hw_uart.d \
./Application/Core/main.d \
./Application/Core/stm32_lpm_if.d \
./Application/Core/stm32wbxx_it.d \
./Application/Core/syscalls.d \
./Application/Core/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Core/app_debug.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/app_debug.c Application/Core/subdir.mk
	$(error unable to generate command line)
Application/Core/app_entry.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/app_entry.c Application/Core/subdir.mk
	$(error unable to generate command line)
Application/Core/flash_driver.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/flash_driver.c Application/Core/subdir.mk
	$(error unable to generate command line)
Application/Core/hw_timerserver.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/hw_timerserver.c Application/Core/subdir.mk
	$(error unable to generate command line)
Application/Core/hw_uart.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/hw_uart.c Application/Core/subdir.mk
	$(error unable to generate command line)
Application/Core/main.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/main.c Application/Core/subdir.mk
	$(error unable to generate command line)
Application/Core/stm32_lpm_if.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/stm32_lpm_if.c Application/Core/subdir.mk
	$(error unable to generate command line)
Application/Core/stm32wbxx_it.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/BLE/BLE_Ota/Core/Src/stm32wbxx_it.c Application/Core/subdir.mk
	$(error unable to generate command line)
Application/Core/%.o Application/Core/%.su Application/Core/%.cyclo: ../Application/Core/%.c Application/Core/subdir.mk
	$(error unable to generate command line)

clean: clean-Application-2f-Core

clean-Application-2f-Core:
	-$(RM) ./Application/Core/app_debug.cyclo ./Application/Core/app_debug.d ./Application/Core/app_debug.o ./Application/Core/app_debug.su ./Application/Core/app_entry.cyclo ./Application/Core/app_entry.d ./Application/Core/app_entry.o ./Application/Core/app_entry.su ./Application/Core/flash_driver.cyclo ./Application/Core/flash_driver.d ./Application/Core/flash_driver.o ./Application/Core/flash_driver.su ./Application/Core/hw_timerserver.cyclo ./Application/Core/hw_timerserver.d ./Application/Core/hw_timerserver.o ./Application/Core/hw_timerserver.su ./Application/Core/hw_uart.cyclo ./Application/Core/hw_uart.d ./Application/Core/hw_uart.o ./Application/Core/hw_uart.su ./Application/Core/main.cyclo ./Application/Core/main.d ./Application/Core/main.o ./Application/Core/main.su ./Application/Core/stm32_lpm_if.cyclo ./Application/Core/stm32_lpm_if.d ./Application/Core/stm32_lpm_if.o ./Application/Core/stm32_lpm_if.su ./Application/Core/stm32wbxx_it.cyclo ./Application/Core/stm32wbxx_it.d ./Application/Core/stm32wbxx_it.o ./Application/Core/stm32wbxx_it.su ./Application/Core/syscalls.cyclo ./Application/Core/syscalls.d ./Application/Core/syscalls.o ./Application/Core/syscalls.su ./Application/Core/sysmem.cyclo ./Application/Core/sysmem.d ./Application/Core/sysmem.o ./Application/Core/sysmem.su

.PHONY: clean-Application-2f-Core

