IOC_TOP = /reg/g/pcds/epics/ioc/common/ads-ioc/R0.4.0
IOC_INSTANCE_PATH := $(shell pwd)

PROJECT_NAME = plc-kfe-vac
PROJECT_PATH := ../../plc-kfe-vac/plc-kfe-vac.tsproj
PLC = plc_kfe_vac

PYTMC_OPTS = 
PREFIX = PLC:KFE:VAC:K0

PRODUCTION_IOC := 1

# With two $$, as in $$(IOCNAME) below, this will be expanded in the
# environment of st.cmd:
DB_PARAMETERS := 'PREFIX=$(PREFIX):,IOCNAME=$$(IOC),IOC=$$(IOC)'


include $(IOC_TOP)/iocBoot/templates/Makefile.base
