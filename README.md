# sbt-docker
A bare SBT docker

## Running

1. Navigate to a directory that contains a `build.sbt` file.

1. `docker run -ti -v $(pwd):/hmt eumaeus/sbt-docker:v1`

If you get errors about the directory mapping, perhaps look at [this page](https://docs.docker.com/docker-for-mac/osxfs/#namespaces).
