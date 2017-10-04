[Robot Framework](https://github.com/robotframework/robotframework) [SeleniumLibrary tests](https://github.com/robotframework/SeleniumLibrary) in [Zalenium](https://github.com/zalando/zalenium):

```
./zalenium exec \
    docker run --rm -ti \
        -e UNAME=robot \
        -e GNAME=robot \
        -e UID=$(id -u) \
        -e GID=$(id -g) \
        -e ZALENIUM_HOST=zalenium \
        --link zalenium:zalenium \
        -v "$(pwd)/results":/home/robot/results \
        -v "$(pwd)/tests":/home/robot/tests \
        robotframework/rfdocker:3.0.2-seleniumlibrary3 tests
```

## Other commands

    ./zalenium help

## Examine dashboards

* Examine test runs live: http://localhost:4444/grid/admin/live
* Dashboard for recorded videos: http://localhost:4444/dashboard/
* Selenium Grid console: http://localhost:4444/grid/console
