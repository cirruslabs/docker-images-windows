FROM cirrusci/windowsservercore:2019

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' visualstudio2019community visualstudio2019buildtools mingw cmake msys2 dotnetfx || echo $lastExitCode
