

### Turn on GCCs ###
caput RTDSK0:GCC:1:HV_SW "ON"
caput IM1K0:XTES:GCC:1:HV_SW "ON"
caput PCPM3B:GFS:1:HV_SW "ON"
caput SL1K0:POWER:GCC:1:HV_SW "ON"
caput TV2K0:GCC:1:HV_SW "ON"
caput TV2K0:GCC:2:HV_SW "ON"
caput PA1K0:GCC:1:HV_SW "ON"
caput MR1K1:BEND:GCC:1:HV_SW "ON"
caput MR1K3:TXI:GCC:1:HV_SW "ON"
caput MR2K3:TXI:GCC:1:HV_SW "ON"
caput TV3K0:GCC:1:HV_SW "ON"
caput MR1K4:SOMS:GCC:1:HV_SW "ON"
caput SP1K1:MONO:GCC:1:HV_SW "ON"

### Turn on PIPs ###
caput RTDSK0:PIP:1:HV_SW "ON"
caput RTDSK0:PIP:2:HV_SW "ON"
caput RTDSK0:PIP:3:HV_SW "ON"
caput PCPM3B:PIP:1:HV_SW "ON"
caput PA1K0:PIP:1:HV_SW "ON"
caput PA1K0:HV_SW "ON"
caput MR1K1:BEND:PIP:1:HV_SW "ON"
caput MR1K3:TXI:PIP:1:HV_SW "ON"
caput MR2K3:TXI:PIP:1:HV_SW "ON"
caput TV3K0:PIP:1:HV_SW "ON"
caput MR1K4:SOMS:PIP:01:HV_SW "ON"
caput SP1K1:MONO:PIP:1:HV_SW "ON"
caput SP1K1:MONO:PIP:2:HV_SW "ON"

### Fix RIX Interlock issue ###
caput SP1K1:MONO:VGC:2:AT_VAC_HYS 1E-1
sleep 1
caput SP1K1:MONO:VGC:2:AT_VAC_HYS 1E-7
sleep 1


### Fix upstream interlock issue ###
caput RTDSK0:VGC:1:AT_VAC_SP 5.5e-4
sleep 1
caput RTDSK0:VGC:1:AT_VAC_SP 5.5e-5
sleep 1

### Reset and pen fast shutter ###
caput TV2K0:VFS:1:ALM_RST TRUE
sleep 1
caput TV2K0:VFS:1:ALM_RST FALSE
sleep 1
caput TV2K0:VFS:1:OPN_SW "OPEN"
sleep 3
