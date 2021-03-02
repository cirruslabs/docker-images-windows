# !IMPORTANT!
# * Pass -m 2GB (or more) when building the image.
# * Configure Docker to use disks larger than the default 20 GB.
FROM cirrusci/windowsservercore:2019

RUN powershell -NoLogo -NoProfile -Command \
    choco feature disable -n=usePackageExitCodes ; \
    choco install -y --no-progress --version=16.8.2.0 visualstudio2019buildtools ; \
    choco install -y --no-progress --version=1.0.0 visualstudio2019-workload-vctools --parameters=\"--add Microsoft.VisualStudio.Component.VC.140 --add Microsoft.VisualStudio.Component.VC.v141.x86.x64 --add Microsoft.VisualStudio.Component.VC.CLI.Support\" ; \
    Remove-Item C:\ProgramData\chocolatey\logs\*.* -Force -Recurse ; \
    Remove-Item C:\Users\ContainerAdministrator\AppData\Local\Temp\*.* -Force -Recurse

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress cmake --install-arguments="ADD_CMAKE_TO_PATH=System" ; \
    choco install -y --no-progress mingw ; \
    Remove-Item C:\ProgramData\chocolatey\logs\*.* -Force -Recurse ; \
    Remove-Item C:\Users\ContainerAdministrator\AppData\Local\Temp\*.* -Force -Recurse
