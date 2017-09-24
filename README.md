# rf-zalenium-runner

Run Robot Framework (SeleniumLibrary) tests against Zalenium - both running in Docker.

## Usage

### Run tests

    ./robot [path_to_test_suite] [...]

If no paths are explicitly given, `tests` is assumed.

### Enter REPL in the same container

    ./rfdebug
