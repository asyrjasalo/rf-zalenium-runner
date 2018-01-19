#!/usr/bin/env bash

this_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

./zalenium exec \
  RUN_ARGS="--network=zalenium" \
    ./rfdocker -v GRID_HOST:zalenium ${@:-tests}
