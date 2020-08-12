FROM cirrusci/windowsservercore:2019

RUN choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' \
    visualstudio2019community \
    visualstudio2019-workload-vctools \
    mingw \
    cmake \
    msys2
