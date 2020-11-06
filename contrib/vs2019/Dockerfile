FROM cirrusci/windowsservercore:2019

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress dotnetfx || echo "ignore reboot request"

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress visualstudio2019community visualstudio2019buildtools
