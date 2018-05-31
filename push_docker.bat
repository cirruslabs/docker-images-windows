@echo off

IF "%$CIRRUS_BRANCH%" == "master" GOTO NOTMASTER
:YESPATH

docker login --username "%DOCKER_USER_NAME%" --password "%DOCKER_PASSWORD%"
docker login cirrusci.azurecr.io --username "%AZURE_USER_NAME%" --password "%AZURE_PASSWORD%"
docker push cirrusci/windowsservercore:2016
docker push cirrusci.azurecr.io/cirrusci/windowsservercore:2016

GOTO END
:NOTMASTER

@ECHO Not a master build. Nothing to push!

GOTO END
:END