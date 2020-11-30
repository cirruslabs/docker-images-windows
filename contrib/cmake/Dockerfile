FROM cirrusci/windowsservercore:2019

# Microsoft .NET Framework 4.8 4.8.0.20190930 is broken and causes the
# installation of visualstudio2019-workload-vctools to fail. To workaround
# the issue request Microsoft .NET Framework 4.7.2.20180712 instead, which
# is already installed and thus speeds up installation as well.
RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress dotnetfx --version 4.7.2.20180712

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress visualstudio2019buildtools visualstudio2019-workload-vctools

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' mingw cmake msys2 || echo "ignore reboot request"
