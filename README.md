# Watcher script

## About

A client-side (host machine) utility to have automated sync of changed files propagated to the container.
Check out [docker-unison](https://github.com/SlayerBirden/docker-unison) container.

## Installation

Download script and put it to /usr/local/bin.
Change DOCKER_IP or DOCKER_PORT variables depending on your docker installation.

## Usage

Run script in the folder you want to sync. CTRL+C to exit.

## Stack

Uses awesome libraries [Unison](https://www.cis.upenn.edu/~bcpierce/unison/) and [fswatch](https://github.com/emcrisostomo/fswatch).
