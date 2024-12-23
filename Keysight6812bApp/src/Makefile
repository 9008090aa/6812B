TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Keysight6812b
# Keysight6812b.dbd will be created and installed
DBD += Keysight6812b.dbd

# Keysight6812b.dbd will be made up from these files:
Keysight6812b_DBD += base.dbd
Keysight6812b_DBD += asyn.dbd
Keysight6812b_DBD += stream.dbd
Keysight6812b_DBD += drvAsynSerialPort.dbd

# Include dbd files from all support applications:
#Keysight6812b_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Keysight6812b_LIBS += xxx

# Keysight6812b_registerRecordDeviceDriver.cpp derives from Keysight6812b.dbd
Keysight6812b_SRCS += Keysight6812b_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Keysight6812b_SRCS_DEFAULT += Keysight6812bMain.cpp
Keysight6812b_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Keysight6812b_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Keysight6812b_LIBS += $(EPICS_BASE_IOC_LIBS)
Keysight6812b_LIBS += asyn
Keysight6812b_LIBS += stream
#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

