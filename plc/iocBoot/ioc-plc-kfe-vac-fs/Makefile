IOC_TOP = /reg/g/pcds/epics/ioc/common/ads-ioc/R0.8.0
IOC_INSTANCE_PATH := $(shell pwd)

PROJECT_NAME = plc-kfe-vac-fs
PROJECT_PATH := ../../plc-kfe-vac/plc-kfe-vac.tsproj
PLC = plc_kfe_vac_fs

PYTMC_OPTS = 
PREFIX = IOC:PLC:KFE:VAC:K0VFS

PRODUCTION_IOC := 1

include $(IOC_TOP)/iocBoot/templates/Makefile.base
