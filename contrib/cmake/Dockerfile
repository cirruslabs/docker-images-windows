FROM cirrusci/windowsservercore:2019

# dotnetfx usually hangs so let's put it in a separate layer so it can be cached
# also ignore requirement for a reboot
RUN choco install -y --no-progress dotnetfx || echo %errorlevel%

RUN choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' \
    visualstudio2019community \
    visualstudio2019buildtools \
    mingw \
    cmake \
    msys2 || echo %errorlevel%
