################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Utilities/lpm/tiny_lpm/stm32_lpm.c \
/Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Utilities/sequencer/stm32_seq.c 

OBJS += \
./Utilities/stm32_lpm.o \
./Utilities/stm32_seq.o 

C_DEPS += \
./Utilities/stm32_lpm.d \
./Utilities/stm32_seq.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/stm32_lpm.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Utilities/lpm/tiny_lpm/stm32_lpm.c Utilities/subdir.mk
	$(error unable to generate command line)
Utilities/stm32_seq.o: /Users/ericlin/Documents/computer_science/st/STM32Cube_FW_WB_V1.18.0/Utilities/sequencer/stm32_seq.c Utilities/subdir.mk
	$(error unable to generate command line)

clean: clean-Utilities

clean-Utilities:
	-$(RM) ./Utilities/stm32_lpm.cyclo ./Utilities/stm32_lpm.d ./Utilities/stm32_lpm.o ./Utilities/stm32_lpm.su ./Utilities/stm32_seq.cyclo ./Utilities/stm32_seq.d ./Utilities/stm32_seq.o ./Utilities/stm32_seq.su

.PHONY: clean-Utilities

