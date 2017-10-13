#!/usr/bin/env bash

set -e

### globals ####################################################################

this_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
release_name="$(cat "$this_path/../release_name")"
robotframework_version="$(echo "$release_name" | cut -d '-' -f 1)"

### main #######################################################################

docker build \
  --build-arg ROBOTFRAMEWORK_VERSION="$robotframework_version" \
  --tag "rfdocker:$release_name" \
  "$this_path/../docker"
