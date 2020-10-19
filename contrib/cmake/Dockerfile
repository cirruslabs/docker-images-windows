FROM cirrusci/windowsservercore:2019

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress dotnetfx

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress visualstudio2019community visualstudio2019buildtools

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' mingw cmake msys2
