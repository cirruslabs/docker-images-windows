# Base image on microsoft/dotnet-framework:4.7.1 or later as adviced by Microsoft.
# https://docs.microsoft.com/en-us/visualstudio/install/build-tools-container-issues
FROM mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-ltsc2019

RUN powershell -NoLogo -NoProfile -Command \
    netsh interface ipv4 show interfaces ; \
    netsh interface ipv4 set subinterface 18 mtu=1460 store=persistent ; \
    netsh interface ipv4 show interfaces ; \
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) ; \
    choco install -y --no-progress git --parameters="/GitAndUnixToolsOnPath" ; \
    choco install -y --no-progress 7zip ; \
    Remove-Item C:\ProgramData\chocolatey\logs\* -Force -Recurse ; \
    Remove-Item $Env:localappdata\Nuget\Cache\*nupkg ; \
    Remove-Item $Env:temp\* -Force -Recurse
