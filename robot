#!/usr/bin/env bash

this_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

./zalenium exec \
  docker run --rm -ti \
    -e HOST_UID=$UID \
    -e HOST_GID=$GID \
    --network=zalenium \
    -v "$this_path":/home/robot \
    rfdocker:3.0.2-seleniumlibrary3 \
      -v GRID_HOST:zalenium ${@:-tests}
