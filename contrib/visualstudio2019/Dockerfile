# !IMPORTANT!
# * Pass -m 2GB (or more) when building the image.
# * Configure Docker to use disks larger than the default 20 GB.
FROM cirrusci/windowsservercore:2019

RUN powershell -NoLogo -NoProfile -Command \
    choco feature disable -n=usePackageExitCodes ; \
    choco install -y --no-progress visualstudio2019buildtools ; \
    Remove-Item C:\ProgramData\chocolatey\logs\*.* -Force -Recurse ; \
    Remove-Item C:\Users\ContainerAdministrator\AppData\Local\Temp\*.* -Force -Recurse

RUN powershell -NoLogo -NoProfile -Command \
    choco feature disable -n=usePackageExitCodes ; \
    choco install -y --no-progress visualstudio2019-workload-vctools --package-parameters "--includeOptional" ; \
    Remove-Item C:\ProgramData\chocolatey\logs\*.* -Force -Recurse ; \
    Remove-Item C:\Users\ContainerAdministrator\AppData\Local\Temp\*.* -Force -Recurse
