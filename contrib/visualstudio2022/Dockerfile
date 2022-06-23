# !IMPORTANT!
# * Pass -m 2GB (or more) when building the image.
# * Configure Docker to use disks larger than the default 20 GB.
FROM cirrusci/windowsservercore:2019

RUN powershell -NoLogo -NoProfile -Command \
    choco feature disable -n=usePackageExitCodes ; \
    choco install -y --no-progress visualstudio2022buildtools ; \
    Remove-Item C:\ProgramData\chocolatey\logs\* -Force -Recurse ; \
    Remove-Item $Env:localappdata\Nuget\Cache\*nupkg ; \
    Remove-Item $Env:temp\* -Force -Recurse

RUN powershell -NoLogo -NoProfile -Command \
    choco feature disable -n=usePackageExitCodes ; \
    choco install -y --no-progress visualstudio2022-workload-vctools --package-parameters "--includeOptional" ; \
    Remove-Item C:\ProgramData\chocolatey\logs\* -Force -Recurse ; \
    Remove-Item $Env:localappdata\Nuget\Cache\*nupkg ; \
    Remove-Item $Env:temp\* -Force -Recurse
