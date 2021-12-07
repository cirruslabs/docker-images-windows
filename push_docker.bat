@echo off

docker history cirrusci/windowsservercore:2019
docker history cirrusci/windowsservercore:visualstudio2019
docker history cirrusci/windowsservercore:cmake

IF "%CIRRUS_TAG%" == "" GOTO NOTTAG
:YESPATH

docker login --username "%DOCKER_USER_NAME%" --password "%DOCKER_PASSWORD%"
docker push cirrusci/windowsservercore

GOTO END
:NOTTAG

@ECHO Not a tag build. Nothing to push!

GOTO END
:END
