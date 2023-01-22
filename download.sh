#!/bin/bash

# simple youtube dl run

sh docker run \
                  --rm -i \
                  -e PGID=$(id -g) \
                  -e PUID=$(id -u) \
                  -v "$(pwd)":/workdir:rw \
		  -v /config/youtube-dl-mp3.conf:/etc/youtube-dl.conf:ro \
                  ghcr.io/mikenye/docker-youtube-dl:latest \
		  $1
