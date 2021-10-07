# !IMPORTANT!
# * Pass -m 2GB (or more) when building the image.
# * Configure Docker to use disks larger than the default 20 GB.
FROM cirrusci/windowsservercore:visualstudio2019

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress cmake --install-arguments="ADD_CMAKE_TO_PATH=System" ; \
    choco install -y --no-progress mingw gcc; \
    Remove-Item C:\ProgramData\chocolatey\logs\* -Force -Recurse ; \
    Remove-Item $Env:localappdata\Nuget\Cache\*nupkg ; \
    Remove-Item $Env:temp\* -Force -Recurse
