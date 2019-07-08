FROM cirrusci/windowsservercore:2019

RUN choco install -y --no-progress --installargs 'ADD_CMAKE_TO_PATH=System' \
    visualstudio2017community --package-parameters "--add Microsoft.VisualStudio.Workload.Universal --includeRecommended --locale en-US" \
    visualstudio2017-workload-vctools --package-parameters "--add Microsoft.VisualStudio.Workload.Universal --includeRecommended --locale en-US" \
    mingw \
    cmake \
    msys2
