    pytmc stcmd \
    --allow-errors \
    --name "ioc-plc-kfe-vac" \
    --plc "plc_kfe_vac" \
    --template-path "/reg/g/pcds/epics/ioc/common/ads-ioc/R0.1.6/iocBoot/templates" \
    --template "st.cmd.template" \
    --hashbang "/reg/g/pcds/epics/ioc/common/ads-ioc/R0.1.6/bin/rhel7-x86_64/adsIoc" \
    -p "PREFIX:" \
    "plc-kfe-vac/plc-kfe-vac.tsproj" > st.cmd
