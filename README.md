# Simple Docker Demo

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Instructions](#instructions)

## Introduction

This is a simple repo to demonstrate a how you can use Docker to run a Bash script that will read a text file, replace a string value, and then save the updated file to a location on the host's machine.

## Prerequisites

Please have all of the following configured and ready to use on your local machine:

- [Docker](https://docs.docker.com/get-docker/)
- [direnv](https://direnv.net/)

## Instructions

### Step 1 - Clone this repo to your machine

`git clone https://github.com/traviscancode604/docker-demo.git`

### Step 2 - Change into the directory of the newly cloned Git repo

`cd docker-demo`

### Step 3 - Allow `direnv` environment variables to be loaded

`direnv allow`

### Step 4 - Ensure Docker is running, and run the build script

At the root of the folder, run the following:
`./bin/build.sh`

**Note**: You can view Docker images on your machine with the `docker images` command. You would see an output similar to this:

```pt
  REPOSITORY                       TAG              IMAGE ID       CREATED          SIZE
docker_demo                      latest           59bb5bf4a4f9   14 minutes ago   92.6MB
```

### Step 5 - Run the Docker image

At the root of the folder, run the following:
`./bin/run.sh`

<p align = "center">
    <img src='./_resources/abe.gif' alt='' width = '450'/>
</p>

And there you have it! You should now have text logged to the console with Abe Simpson's famous story that goes no where, changed the city name, and stored the updated file in a directory on the host machine (`/tmp` in the `.envrc` file).

The `.envrc` file will have all the environment variables for building the image, running the container if you wish to play with changing the values.
