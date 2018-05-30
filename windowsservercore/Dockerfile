FROM microsoft/windowsservercore:ltsc2016

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN netsh interface ipv4 show interfaces
RUN netsh interface ipv4 set subinterface 18 mtu=1460 store=persistent

RUN Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

RUN choco install -y git

SHELL ["cmd", "/S", "/C"]