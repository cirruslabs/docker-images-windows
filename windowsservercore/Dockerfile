FROM mcr.microsoft.com/windows/servercore:ltsc2019

RUN powershell -NoLogo -NoProfile -Command \
    netsh interface ipv4 show interfaces ; \
    netsh interface ipv4 set subinterface 18 mtu=1460 store=persistent ; \
    netsh interface ipv4 show interfaces ; \
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) ; \
    choco install -y --no-progress git --params "/GitAndUnixToolsOnPath" ; \
    choco install -y --no-progress 7zip ; \
    Remove-Item C:\ProgramData\chocolatey\logs -Force -Recurse ; \
    Remove-Item C:\Users\ContainerAdministrator\AppData\Local\Temp -Force -Recurse
