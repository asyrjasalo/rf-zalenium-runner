# rf-zalenium-runner

Run Robot Framework SeleniumLibrary tests in [Zalenium](https://github.com/zalando/zalenium).

## Usage

### Run tests

    ./robot [path_to_test_suite] [...]

If no paths are explicitly given, `tests` is assumed.

Or directly via the CI targeted `zalenium` wrapper:

    ./zalenium exec \
        docker run --rm -ti \
            -e UNAME="robot" \
            -e GNAME="robot" \
            -e UID=$(id -u) \
            -e GID=$(id -g) \
            -e ZALENIUM_HOST=zalenium \
            --link zalenium:zalenium \
            -v "$(pwd)/results":/home/robot/results \
            -v "$(pwd)/tests":/home/robot/tests \
            robotframework/rfdocker:3.0.2-seleniumlibrary3 tests

### Check dashboards

* Examine test runs live: http://localhost:4444/grid/admin/live
* Dashboard for recorded videos: http://localhost:4444/dashboard/
* Selenium Grid console: http://localhost:4444/grid/console

### Follow Zalenium container logs

    ./zalenium logs

### Stop and remove Zalenium containers

    ./zalenium down

This does not remove the recorded `./videos`.
