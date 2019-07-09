FROM cirrusci/windowsservercore:2019

RUN choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' \
    visualstudio2017community \
    visualstudio2017-workload-vctools \
    visualstudio2017-workload-universal \
    visualstudio2017-workload-webcrossplat \
    mingw \
    cmake \
    msys2
