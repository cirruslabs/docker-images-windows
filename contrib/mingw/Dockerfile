FROM cirrusci/windowsservercore:vs2019

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress mingw msys2 || echo "ignore reboot request"
