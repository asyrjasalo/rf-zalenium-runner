#!/usr/bin/env bash

this_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker build "$this_path" -t rfdocker:3.0.2-seleniumlibrary3
