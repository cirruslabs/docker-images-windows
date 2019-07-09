echo %time%
docker build --tag cirrusci/windowsservercore:2019 windowsservercore
docker build --tag cirrusci/windowsservercore:cmake contrib/cmake
echo %time%
