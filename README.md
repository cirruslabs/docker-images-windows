# Common Windows Docker Images for Cirrus CI

Common [Windows docker images](https://hub.docker.com/r/cirrusci/windowsservercore/tags) for Cirrus CI
that are pre-cached on the machines. 

Note: Please use a `-<year>.<month>` tag in your Dockerfiles when using with [Dockerfile as a CI environment](https://cirrus-ci.org/guide/docker-builder-vm/#dockerfile-as-a-ci-environment)
feature. All tags not older than 1 year will be precached on the machines which will increase cache hit rate and startup speed.
