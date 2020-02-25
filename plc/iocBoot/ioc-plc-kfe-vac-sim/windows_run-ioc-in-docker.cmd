@echo off
echo Your development environment Net ID is: 172.21.42.126.1.1
echo.
echo You must fully exit TwinCAT for this IOC to work.
echo Please close TwinCAT now and
pause
echo on

"C:/Program Files/Docker/Docker/resources/bin/docker.exe" run ^
        -v "c:\repos\ads-deploy\tools\:/ads-deploy/tools" ^
        -v "C:\Users\nwbrown\Documents\TwinCAT3 workspace\lcls-plc-kfe-vac\plc\:/reg/g/pcds/epics/ioc/plc-kfe-vac" ^
	-e DISPLAY=host.docker.internal:0.0 ^
	-i pcdshub/ads-deploy:latest ^
        "make -C ${ADS_IOC_PATH}/iocBoot/templates && cd '/reg/g/pcds/epics/ioc/plc-kfe-vac/iocBoot/ioc-plc-kfe-vac-sim' && make && sed -i '/^adsIoc_registerRecord.*$/a adsSetLocalAddress(172.21.42.126.1.1)' st.cmd && ./st.cmd; echo 'IOC exited.'; sleep 1"
pause
