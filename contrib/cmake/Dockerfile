FROM cirrusci/windowsservercore:vs2019

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' mingw cmake msys2 || echo "ignore reboot request"
