FROM microsoft/windowsservercore:ltsc2016

RUN powershell -Command \
    netsh interface ipv4 show interfaces ; \
    netsh interface ipv4 set subinterface 18 mtu=1460 store=persistent ; \
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) ; \
    choco install -y git ; \
    Remove-Item ~\AppData\Local\Temp\chocolatey -Force -Recurse