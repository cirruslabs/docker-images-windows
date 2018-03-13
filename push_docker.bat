IF "%$CIRRUS_BRANCH%" == "master" GOTO NOTMASTER
:YESPATH

docker login --username %DOCKER_USER_NAME% --password %DOCKER_PASSWORD%
docker push cirrusci/windowsservercore:1709

GOTO END
:NOTMASTER

@ECHO Not a master build. Nothing to push!

GOTO END
:END