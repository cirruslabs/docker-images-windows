FROM cirrusci/windowsservercore:vs2019

RUN powershell -NoLogo -NoProfile -Command \
    choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' cmake || echo "ignore reboot request"
