#!/usr/bin/env bash

this_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

./zalenium exec \
    docker run --rm -ti \
        -e UID=$(id -u) \
        -e GID=$(id -g) \
        -e ZALENIUM_HOST=zalenium \
        --link zalenium:zalenium \
        -v "$this_path/results":/home/robot/results \
        -v "$this_path/tests":/home/robot/tests \
        rfdocker:3.0.2-seleniumlibrary3 \
            ${@:-tests}
