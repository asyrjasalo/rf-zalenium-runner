#!/usr/bin/env bash

./zalenium exec \
    docker run --rm -ti \
        -e UID=$(id -u) \
        -e GID=$(id -g) \
        -e ZALENIUM_HOST=zalenium \
        --link zalenium:zalenium \
        -v "$(pwd)/results":/home/robot/results \
        -v "$(pwd)/tests":/home/robot/tests \
        robotframework/rfdocker:3.0.2-seleniumlibrary3 ${@:-tests}
