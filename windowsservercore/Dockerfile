FROM microsoft/windowsservercore:1709

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN netsh interface ipv4 set subinterface 'vEthernet (Ethernet)' mtu=1460 store=persistent

SHELL ["cmd", "/S", "/C"]