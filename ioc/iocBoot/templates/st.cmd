#!$$IOCTOP/bin/rhel7-x86_64/ads
require ads

epicsEnvSet("IOCNAME", "$$IOCNAME" )
epicsEnvSet("ENGINEER", "$$ENGINEER" )
epicsEnvSet("LOCATION", "$$LOCATION" )
epicsEnvSet("IOCSH_PS1", "$(IOCNAME)> " )
epicsEnvSet("IOC_PV", "$$IOC_PV")
epicsEnvSet("IOCTOP", "$$IOCTOP")
< envPaths
epicsEnvSet("TOP", "$$TOP")
cd( "$(IOCTOP)" )

# Run common startup commands for linux soft IOC's
#< /reg/d/iocCommon/All/pre_linux.cmd

# Register all support components
dbLoadDatabase("dbd/ads.dbd")
ads_registerRecordDeviceDriver(pdbbase)

## LOAD STUFF HERE!!!  DRIVERS FIRST, THEN RECORDS!
adsAsynPortDriverConfigure("ADS_1","plc-tst-cx2020","5.45.6.154.1.1",851,1000, 0, 0, 500, 1000, 1000, 0)
asynSetTraceMask("ADS_1", -1, 0x41)
asynSetTraceIOMask("ADS_1", -1, 6)
asynSetTraceInfoMask("ADS_1", -1, 15)

dbLoadRecords("db/SxrVacPlc.db","PORT=ADS_1")

# Initialize the IOC and start processing records
iocInit()
