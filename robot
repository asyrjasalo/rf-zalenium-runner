#!/usr/bin/env bash

set -e

### globals ####################################################################

this_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

### main #######################################################################

if ! docker top zalenium &>/dev/null ; then
  echo "### Starting Zalenium in background"
  "$this_path/zalenium" start
fi

echo "### Running the tests now"
export RESULTS_PATH="$(pwd)/results"
export TESTS_PATH="$(pwd)/tests"
docker run --rm -ti \
  -e UNAME="robot" \
  -e GNAME="robot" \
  -e UID=$(id -u) \
  -e GID=$(id -g) \
  -e ZALENIUM_HOST=${ZALENIUM_HOST:-zalenium} \
  --link zalenium:zalenium \
  -v "$RESULTS_PATH":/home/robot/results \
  -v "$TESTS_PATH":/home/robot/tests \
  robotframework/rfdocker:3.0.2-seleniumlibrary3 ${@:-tests}
