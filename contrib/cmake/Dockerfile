FROM cirrusci/windowsservercore:2019

RUN choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' \
    visualstudio2017community --package-parameters "--allWorkloads --includeRecommended --includeOptional --locale en-US" \
    visualstudio2017-workload-vctools --package-parameters "--allWorkloads --includeRecommended --includeOptional --locale en-US" \
    mingw \
    cmake \
    msys2
