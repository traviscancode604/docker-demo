# Simple Docker Demo

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Instructions](#instructions)
- [Expected Output](#expected-output)

## Introduction

This is a simple repo to demonstrate:

1. Building a Docker image
2. Using environment variables with `direnv` and `.envrc`
3. Run a Docker container with a volume mount
4. Run Bash scripts to read a text file, replace a string value, and save the updated file to the host's machine

## Prerequisites

Please have all of the following configured and ready to use on your local machine:

- [Docker](https://docs.docker.com/get-docker/)
- [direnv](https://direnv.net/)
- Terminal of your choice (I prefer [`iTerm2`](https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c))

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

**Note**: By this point, you should be able to see the newly created Docker image on your machine with the `docker images` command. You should see an output similar to this:

```pt
  REPOSITORY                       TAG              IMAGE ID       CREATED          SIZE
docker_demo                      latest           59bb5bf4a4f9   14 minutes ago   92.6MB
```

### Step 5 - Run the Docker Image as a Container

At the root of the folder, run the following:

`./bin/run.sh`

## Expected Output

You will get to see one of my favourite Abe Simpson quotes in the terminal:

  We can’t bust heads like we used to—but we have our ways. One trick is to tell them stories that don’t go anywhere like the time I caught the ferry over to Shelbyville. I needed a new heel for my shoe, so I decided to go to Morganville which is what they called Shelbyville in those days. So, I tied an onion to my belt which was the style at the time. Now, to take the ferry cost a nickel. And in those days, nickels had pictures of bumblebees on ‘em. ‘Give me five bees for a quarter,’ you’d say. Now, where were we? Oh, yeah! The important thing was that I had an onion on my belt which was the style at the time. They didn’t have white onions because of the war. The only thing you could get was those big yellow ones.

<p align = "center">
    <img src='./_resources/abe.gif' alt='' width = '450'/>
</p>

We then replace the word **Shelbyville** with **Capital City**:

  We can’t bust heads like we used to—but we have our ways. One trick is to tell them stories that don’t go anywhere like the time I caught the ferry over to **Capital City**. I needed a new heel for my shoe, so I decided to go to **Morganville** which is what they called Capital City in those days. So, I tied an onion to my belt which was the style at the time. Now, to take the ferry cost a nickel. And in those days, nickels had pictures of bumblebees on ‘em. ‘Give me five bees for a quarter,’ you’d say. Now, where were we? Oh, yeah! The important thing was that I had an onion on my belt which was the style at the time. They didn’t have white onions because of the war. The only thing you could get was those big yellow ones.

This updated quote will now be on the host machine in the storage directory that was specified in the `.envrc` file.

Voilà!
