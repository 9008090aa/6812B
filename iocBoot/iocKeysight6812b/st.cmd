#!../../bin/linux-x86_64/Keysight6812b

#- You may have to change Keysight6812b to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/Keysight6812b.dbd"
Keysight6812b_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/Keysight6812b.db","user=pla")

# -------ここから
dbLoadRecords("Keysight6812bApp/Db/Keysight6812b.db","dev=6812b")
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}")
drvAsynSerialPortConfigure("6812b","/dev/ttyUSB0",0,0,0)
asynSetOption("6812b", -1, "baud","9600")
asynSetOption("6812b", -1, "bits","8")
asynSetOption("6812b", -1, "parity", "none") 
asynSetOption("6812b", -1, "stop","1")
asynSetOption("6812b", -1, "clocal","Y")
asynSetOption("6812b", -1, "crtscts","N")
# -------ここまで追加

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=pla"
