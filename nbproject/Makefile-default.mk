#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Gfx-therm-PIC24FJ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Gfx-therm-PIC24FJ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=framework/driver/gfx/src/drv_gfx_epmp.c framework/driver/gfx/src/drv_gfx_ssd1926.c framework/gfx/src/gfx_gol_digital_meter.c framework/gfx/src/gfx_gol_scroll_bar.c framework/gfx/src/gfx_gol_text_entry.c framework/gfx/src/gfx_palette.c framework/gfx/src/gfx_gol_window.c framework/gfx/src/gfx_gol_picture.c framework/gfx/src/gfx_gol_static_text.c framework/gfx/src/gfx_gol_radio_button.c framework/gfx/src/gfx_gol.c framework/gfx/src/gfx_gol_button.c framework/gfx/src/gfx_gol_progress_bar.c framework/gfx/src/gfx_gol_meter.c framework/gfx/src/gfx_gol_check_box.c framework/gfx/src/gfx_primitive.c framework/gfx/src/gfx_gol_group_box.c internal_resource.S internal_resource_reference.c main.c system.c framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.c framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.c framework/driver/spi/src/drv_spi_16bit.c framework/driver/touch_screen/src/drv_touch_screen.c framework/driver/touch_screen/src/drv_touch_resistive_adc.c internal_resource_main_reference.c internal_resource_main.S

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o ${OBJECTDIR}/framework/gfx/src/gfx_palette.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o ${OBJECTDIR}/framework/gfx/src/gfx_gol.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o ${OBJECTDIR}/internal_resource.o ${OBJECTDIR}/internal_resource_reference.o ${OBJECTDIR}/main.o ${OBJECTDIR}/system.o ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o ${OBJECTDIR}/internal_resource_main_reference.o ${OBJECTDIR}/internal_resource_main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o.d ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o.d ${OBJECTDIR}/framework/gfx/src/gfx_palette.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o.d ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o.d ${OBJECTDIR}/internal_resource.o.d ${OBJECTDIR}/internal_resource_reference.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/system.o.d ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o.d ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o.d ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o.d ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o.d ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o.d ${OBJECTDIR}/internal_resource_main_reference.o.d ${OBJECTDIR}/internal_resource_main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o ${OBJECTDIR}/framework/gfx/src/gfx_palette.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o ${OBJECTDIR}/framework/gfx/src/gfx_gol.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o ${OBJECTDIR}/internal_resource.o ${OBJECTDIR}/internal_resource_reference.o ${OBJECTDIR}/main.o ${OBJECTDIR}/system.o ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o ${OBJECTDIR}/internal_resource_main_reference.o ${OBJECTDIR}/internal_resource_main.o

# Source Files
SOURCEFILES=framework/driver/gfx/src/drv_gfx_epmp.c framework/driver/gfx/src/drv_gfx_ssd1926.c framework/gfx/src/gfx_gol_digital_meter.c framework/gfx/src/gfx_gol_scroll_bar.c framework/gfx/src/gfx_gol_text_entry.c framework/gfx/src/gfx_palette.c framework/gfx/src/gfx_gol_window.c framework/gfx/src/gfx_gol_picture.c framework/gfx/src/gfx_gol_static_text.c framework/gfx/src/gfx_gol_radio_button.c framework/gfx/src/gfx_gol.c framework/gfx/src/gfx_gol_button.c framework/gfx/src/gfx_gol_progress_bar.c framework/gfx/src/gfx_gol_meter.c framework/gfx/src/gfx_gol_check_box.c framework/gfx/src/gfx_primitive.c framework/gfx/src/gfx_gol_group_box.c internal_resource.S internal_resource_reference.c main.c system.c framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.c framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.c framework/driver/spi/src/drv_spi_16bit.c framework/driver/touch_screen/src/drv_touch_screen.c framework/driver/touch_screen/src/drv_touch_resistive_adc.c internal_resource_main_reference.c internal_resource_main.S



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Gfx-therm-PIC24FJ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ1024GB610
MP_LINKER_FILE_OPTION=,--script=p24FJ1024GB610.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o: framework/driver/gfx/src/drv_gfx_epmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/gfx/src/drv_gfx_epmp.c  -o ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o: framework/driver/gfx/src/drv_gfx_ssd1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/gfx/src/drv_gfx_ssd1926.c  -o ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o: framework/gfx/src/gfx_gol_digital_meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_digital_meter.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o: framework/gfx/src/gfx_gol_scroll_bar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_scroll_bar.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o: framework/gfx/src/gfx_gol_text_entry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_text_entry.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_palette.o: framework/gfx/src/gfx_palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_palette.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_palette.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_palette.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_palette.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_palette.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_palette.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o: framework/gfx/src/gfx_gol_window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_window.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o: framework/gfx/src/gfx_gol_picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_picture.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o: framework/gfx/src/gfx_gol_static_text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_static_text.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o: framework/gfx/src/gfx_gol_radio_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_radio_button.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol.o: framework/gfx/src/gfx_gol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o: framework/gfx/src/gfx_gol_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_button.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o: framework/gfx/src/gfx_gol_progress_bar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_progress_bar.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o: framework/gfx/src/gfx_gol_meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_meter.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o: framework/gfx/src/gfx_gol_check_box.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_check_box.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_primitive.o: framework/gfx/src/gfx_primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_primitive.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o: framework/gfx/src/gfx_gol_group_box.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_group_box.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/internal_resource_reference.o: internal_resource_reference.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/internal_resource_reference.o.d 
	@${RM} ${OBJECTDIR}/internal_resource_reference.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  internal_resource_reference.c  -o ${OBJECTDIR}/internal_resource_reference.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource_reference.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/internal_resource_reference.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system.o: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.o.d 
	@${RM} ${OBJECTDIR}/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system.c  -o ${OBJECTDIR}/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o: framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/nvm/src" 
	@${RM} ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.c  -o ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o: framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/nvm/src" 
	@${RM} ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.c  -o ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o: framework/driver/spi/src/drv_spi_16bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/spi/src" 
	@${RM} ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/spi/src/drv_spi_16bit.c  -o ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o: framework/driver/touch_screen/src/drv_touch_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/touch_screen/src" 
	@${RM} ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/touch_screen/src/drv_touch_screen.c  -o ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o: framework/driver/touch_screen/src/drv_touch_resistive_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/touch_screen/src" 
	@${RM} ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/touch_screen/src/drv_touch_resistive_adc.c  -o ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/internal_resource_main_reference.o: internal_resource_main_reference.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/internal_resource_main_reference.o.d 
	@${RM} ${OBJECTDIR}/internal_resource_main_reference.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  internal_resource_main_reference.c  -o ${OBJECTDIR}/internal_resource_main_reference.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource_main_reference.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/internal_resource_main_reference.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o: framework/driver/gfx/src/drv_gfx_epmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/gfx/src/drv_gfx_epmp.c  -o ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_epmp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o: framework/driver/gfx/src/drv_gfx_ssd1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/gfx/src/drv_gfx_ssd1926.c  -o ${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/gfx/src/drv_gfx_ssd1926.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o: framework/gfx/src/gfx_gol_digital_meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_digital_meter.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_digital_meter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o: framework/gfx/src/gfx_gol_scroll_bar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_scroll_bar.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_scroll_bar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o: framework/gfx/src/gfx_gol_text_entry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_text_entry.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_text_entry.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_palette.o: framework/gfx/src/gfx_palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_palette.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_palette.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_palette.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_palette.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_palette.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_palette.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o: framework/gfx/src/gfx_gol_window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_window.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_window.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o: framework/gfx/src/gfx_gol_picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_picture.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_picture.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o: framework/gfx/src/gfx_gol_static_text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_static_text.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_static_text.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o: framework/gfx/src/gfx_gol_radio_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_radio_button.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_radio_button.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol.o: framework/gfx/src/gfx_gol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o: framework/gfx/src/gfx_gol_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_button.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_button.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o: framework/gfx/src/gfx_gol_progress_bar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_progress_bar.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_progress_bar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o: framework/gfx/src/gfx_gol_meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_meter.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_meter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o: framework/gfx/src/gfx_gol_check_box.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_check_box.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_check_box.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_primitive.o: framework/gfx/src/gfx_primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_primitive.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_primitive.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_primitive.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o: framework/gfx/src/gfx_gol_group_box.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/gfx/src" 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o.d 
	@${RM} ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/gfx/src/gfx_gol_group_box.c  -o ${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/gfx/src/gfx_gol_group_box.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/internal_resource_reference.o: internal_resource_reference.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/internal_resource_reference.o.d 
	@${RM} ${OBJECTDIR}/internal_resource_reference.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  internal_resource_reference.c  -o ${OBJECTDIR}/internal_resource_reference.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource_reference.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/internal_resource_reference.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system.o: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.o.d 
	@${RM} ${OBJECTDIR}/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system.c  -o ${OBJECTDIR}/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o: framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/nvm/src" 
	@${RM} ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.c  -o ${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/nvm/src/drv_nvm_flash_spi_sst25vf016.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o: framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/nvm/src" 
	@${RM} ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.c  -o ${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/nvm/src/nvm_flash_spi_sst26vf0xxb.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o: framework/driver/spi/src/drv_spi_16bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/spi/src" 
	@${RM} ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/spi/src/drv_spi_16bit.c  -o ${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/spi/src/drv_spi_16bit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o: framework/driver/touch_screen/src/drv_touch_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/touch_screen/src" 
	@${RM} ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/touch_screen/src/drv_touch_screen.c  -o ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_screen.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o: framework/driver/touch_screen/src/drv_touch_resistive_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/touch_screen/src" 
	@${RM} ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  framework/driver/touch_screen/src/drv_touch_resistive_adc.c  -o ${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/touch_screen/src/drv_touch_resistive_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/internal_resource_main_reference.o: internal_resource_main_reference.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/internal_resource_main_reference.o.d 
	@${RM} ${OBJECTDIR}/internal_resource_main_reference.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  internal_resource_main_reference.c  -o ${OBJECTDIR}/internal_resource_main_reference.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource_main_reference.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/internal_resource_main_reference.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/internal_resource.o: internal_resource.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/internal_resource.o.d 
	@${RM} ${OBJECTDIR}/internal_resource.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  internal_resource.S  -o ${OBJECTDIR}/internal_resource.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -Wa,-MD,"${OBJECTDIR}/internal_resource.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/internal_resource.o.d" "${OBJECTDIR}/internal_resource.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/internal_resource_main.o: internal_resource_main.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/internal_resource_main.o.d 
	@${RM} ${OBJECTDIR}/internal_resource_main.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  internal_resource_main.S  -o ${OBJECTDIR}/internal_resource_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource_main.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -Wa,-MD,"${OBJECTDIR}/internal_resource_main.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/internal_resource_main.o.d" "${OBJECTDIR}/internal_resource_main.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/internal_resource.o: internal_resource.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/internal_resource.o.d 
	@${RM} ${OBJECTDIR}/internal_resource.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  internal_resource.S  -o ${OBJECTDIR}/internal_resource.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -Wa,-MD,"${OBJECTDIR}/internal_resource.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/internal_resource.o.d" "${OBJECTDIR}/internal_resource.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/internal_resource_main.o: internal_resource_main.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/internal_resource_main.o.d 
	@${RM} ${OBJECTDIR}/internal_resource_main.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  internal_resource_main.S  -o ${OBJECTDIR}/internal_resource_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/internal_resource_main.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -Wa,-MD,"${OBJECTDIR}/internal_resource_main.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/internal_resource_main.o.d" "${OBJECTDIR}/internal_resource_main.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Gfx-therm-PIC24FJ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Gfx-therm-PIC24FJ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer"  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--heap=10000,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp=${DFP_DIR}/xc16 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Gfx-therm-PIC24FJ.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Gfx-therm-PIC24FJ.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"framework" -I"." -I"framework/driver" -I"framework/gfx" -I"framework/driver/spi" -I"memory_programmer" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=10000,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp=${DFP_DIR}/xc16 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Gfx-therm-PIC24FJ.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp=${DFP_DIR}/xc16 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
